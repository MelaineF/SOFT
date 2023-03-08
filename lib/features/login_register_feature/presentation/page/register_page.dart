import 'package:Swipe/core/helper/logger.dart';
import 'package:Swipe/core/widget/custom_outlined_button.dart';
import 'package:Swipe/features/login_register_feature/data/repository_impl/signup_repository.dart';
import 'package:Swipe/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:validators/validators.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key, required this.onLoginCallback});

  final Function(bool loggedIn) onLoginCallback;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            const SizedBox(
              width: double.infinity,
              height: 150,
            ),
            Row(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 28.0),
                  child: Text(
                    'Sign-up',
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
                              controller: firstname,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'First Name',
                              ),
                              validator: (String? value) {
                                if (isNull(value ?? '')) {
                                  return 'Your first name can\'t be blank.';
                                }
                                return null;
                              },
                            ),
                            TextFormField(
                              controller: lastname,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Last Name',
                              ),
                              validator: (String? value) {
                                if (isNull(value ?? '')) {
                                  return 'Your last name can\'t be blank.';
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
                              label: AppLocalizations.of(context)!.register,
                              onTape: () async {
                                logger.d('login pressed');
                                if (_formKey.currentState?.validate() ??
                                    false) {
                                  try {
                                    await FirebaseAuth.instance
                                        .createUserWithEmailAndPassword(
                                      email: email.text,
                                      password: password.text,
                                    );
                                    SignupRepository().currentUser =
                                        FirebaseAuth.instance.currentUser;
                                  } on FirebaseAuthException catch (e) {
                                    if (e.code == 'weak-password') {
                                      logger.e(
                                        'The password provided is too weak.',
                                      );
                                    } else if (e.code ==
                                        'email-already-in-use') {
                                      logger.e(
                                        'An account already exists'
                                        ' for that email.',
                                      );
                                    }
                                  } catch (e) {
                                    logger.e(e);
                                  }

                                  _formKey.currentState?.reset();
                                  firstname.clear();
                                  lastname.clear();
                                  email.clear();
                                  password.clear();

                                  // Set the user logged
                                  MyApp.of(context).authService.authenticated =
                                      true;

                                  logger.i(
                                    'Avant redirection vers home page',
                                  );
                                  widget.onLoginCallback.call(true);
                                  logger.i(
                                    'Après redirection vers home page',
                                  );

                                  // Routing
                                  /*context.router.push(
                                    const HomeRoute(),
                                  );*/
                                } else {
                                  logger.e(
                                    'Could not add user, something is missing',
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
