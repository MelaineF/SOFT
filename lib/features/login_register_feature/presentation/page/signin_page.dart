import 'package:Swipe/core/helper/logger.dart';
import 'package:Swipe/core/widget/custom_outlined_button.dart';
import 'package:Swipe/features/login_register_feature/data/repository_impl/signin_repository.dart';
import 'package:Swipe/features/login_register_feature/data/repository_impl/signup_repository.dart';
import 'package:Swipe/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:validators/validators.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key, required this.onLoginCallback});

  final Function(bool loggedIn) onLoginCallback;

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

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
                                logger.d('Sign-in pressed');
                                if (_formKey.currentState?.validate() ?? false) {
                                  try {
                                    await FirebaseAuth.instance
                                        .signInWithEmailAndPassword(
                                      email: email.text,
                                      password: password.text,
                                    );

                                    SigninRepository repo = SigninRepository();
                                    repo.currentUser = FirebaseAuth.instance.currentUser;
                                    repo.fcmToken = await FirebaseMessaging.instance.getToken();

                                    // Set the user logged
                                    _formKey.currentState?.reset();
                                    email.clear();
                                    password.clear();
                                    MyApp.of(context).authService.authenticated = true;

                                    logger.i('Avant redirection vers home page');
                                    widget.onLoginCallback.call(true); // redirect to home
                                    logger.i('Après redirection vers home page');
                                  } on FirebaseAuthException catch (e) {
                                    logger.e(e.message);
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.message!)));
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
