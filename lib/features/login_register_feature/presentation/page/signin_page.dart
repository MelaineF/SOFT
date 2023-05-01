import 'package:Swipe/core/firebase/database_service.dart';
import 'package:Swipe/core/helper/logger.dart';
import 'package:Swipe/core/isar/isar_mixin.dart';
import 'package:Swipe/core/isar/user_isar.dart';
import 'package:Swipe/core/isar/user_connected.dart';
import 'package:Swipe/core/util/helper_function.dart';
import 'package:Swipe/core/widget/custom_outlined_button.dart';
import 'package:Swipe/core/widget/show_snackbar.widget.dart';

//import 'package:Swipe/features/home/data/models/user.dart';
import 'package:Swipe/features/login_register_feature/data/repository_impl/signin_repository.dart';
import 'package:Swipe/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:isar/isar.dart';
import 'package:validators/validators.dart';

import '../../../../core/isar/group_isar.dart';

class SignInPage extends StatefulWidget with IsarMixin {
  SignInPage({super.key, required this.onLoginCallback});

  final Function(bool loggedIn) onLoginCallback;

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  DatabaseService databaseService = DatabaseService(null);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 150,
              color: Colors.white,
            ),
            Row(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 28.0),
                  child: Text(
                    'Login',
                    style:
                        TextStyle(fontFamily: 'AllRoundGothic', fontSize: 40),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Center(
                child: Shortcuts(
                  shortcuts: const <ShortcutActivator, Intent>{
                    SingleActivator(LogicalKeyboardKey.enter):
                        NextFocusIntent(),
                  },
                  child: FocusTraversalGroup(
                    child: Form(
                      key: _formKey,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Wrap(
                          runSpacing: 8.0,
                          alignment: WrapAlignment.center,
                          children: <Widget>[
                            TextFormField(
                              controller: email,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Email',
                              ),
                              validator: (String? value) {
                                if (!isEmail(value ?? '')) {
                                  return 'Please enter a valid email.';
                                }
                                return null;
                              },
                            ),
                            TextFormField(
                              controller: password,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Password',
                              ),
                              obscureText: true,
                              validator: (String? value) {
                                if (isNull(value ?? '')) {
                                  return 'Your password can\'t be blank.';
                                }
                                return null;
                              },
                            ),
                            CustomOutlinedButtonButtonWidget(
                              label: AppLocalizations.of(context)!.connection,
                              onTape: () async {
                                if (_formKey.currentState?.validate() ??
                                    false) {
                                  try {
                                    await FirebaseAuth.instance
                                        .signInWithEmailAndPassword(
                                      email: email.text,
                                      password: password.text,
                                    )
                                        .then(
                                      (UserCredential value) async {
                                        if (value.user != null) {
                                          SigninRepository repo =
                                              SigninRepository()
                                                ..currentUser = FirebaseAuth
                                                    .instance.currentUser
                                                ..fcmToken =
                                                    await FirebaseMessaging
                                                        .instance
                                                        .getToken();

                                          await widget.openIsar();

                                          await widget.isarLocalDB
                                              .writeTxnSync(() async {
                                            widget.isarLocalDB.clearSync();
                                          });

                                          // Get connected user email
                                          String? _email =
                                              repo.currentUser?.email;

                                          // Get all users for the chat
                                          List<UserConnected> a =
                                              await databaseService
                                                  .getConnectedUser();

                                          // Get all data from connected user
                                          UserConnected userConnected = a
                                              .where(
                                                (UserConnected e) =>
                                                    e.email == _email,
                                              )
                                              .first;

                                          // Save connected user into Isar DB
                                          QueryBuilder<
                                                  UserConnected,
                                                  UserConnected,
                                                  QAfterFilterCondition>
                                              existingUser = widget
                                                  .isarLocalDB.userConnecteds
                                                  .filter()
                                                  .emailEqualTo(
                                                    userConnected.email,
                                                  );

                                          await widget.isarLocalDB
                                              .writeTxn(() async {
                                            final bool userExists =
                                                await existingUser.count() > 0;
                                            if (!userExists) {
                                              await widget
                                                  .isarLocalDB.userConnecteds
                                                  .put(
                                                userConnected,
                                              );
                                            }
                                          });

                                          // Save all users into isar
                                          List<UserIsar> users =
                                              await databaseService.getUsers();

                                          await widget.isarLocalDB
                                              .writeTxn(() async {
                                            users.forEach((e) async {
                                              await widget.isarLocalDB.userIsars
                                                  .put(e);
                                            });
                                          });

                                          // Save all groups into isar
                                          List<GroupIsar> groups =
                                              await databaseService.getGroups();

                                          if (groups.isNotEmpty) {
                                            await widget.isarLocalDB
                                                .writeTxn(() async {
                                              groups.forEach((e) async {
                                                await widget
                                                    .isarLocalDB.groupIsars
                                                    .put(e);
                                              });
                                            });
                                          }

                                          widget.closeIsar();

                                          // Old shared preferences (not used)
                                          await HelperFunctions
                                              .saveUserLoggedInStatus(true);
                                          await HelperFunctions.saveUserEmailSF(
                                            email.text.toString(),
                                          );

                                          // Set the user logged
                                          _formKey.currentState?.reset();
                                          email.clear();
                                          password.clear();
                                          MyApp.of(context)
                                              .authService
                                              .authenticated = true;

                                          widget.onLoginCallback.call(true);
                                          // redirect to home
                                        } else {
                                          showSnackbar(
                                            context,
                                            Colors.red,
                                            value,
                                          );
                                        }
                                      },
                                    );
                                  } on FirebaseAuthException catch (e) {
                                    logger.e(e.message);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          e.message!,
                                        ),
                                      ),
                                    );
                                  } catch (e) {
                                    logger.e(e);
                                  }
                                } else {
                                  logger.e(
                                    'Could sign-in user, something is missing',
                                  );
                                }
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
