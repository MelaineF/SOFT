import 'package:Swipe/features/signup_page/data/repository_impl/signup_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:validators/validators.dart';
import 'package:Swipe/core/helper/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

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
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: Center(
        child: Shortcuts(
          shortcuts: const <ShortcutActivator, Intent>{
            SingleActivator(LogicalKeyboardKey.enter): NextFocusIntent(),
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
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Email"
                        ),
                        validator: (value) {
                          if (!isEmail(value ?? "")) {
                            return 'Please enter a valid email.';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: firstname,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "First Name"
                        ),
                        validator: (value) {
                          if (isNull(value ?? "")) {
                            return 'Your first name can\'t be blank.';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: lastname,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Last Name"
                        ),
                        validator: (value) {
                          if (isNull(value ?? "")) {
                            return 'Your last name can\'t be blank.';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: password,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (isNull(value ?? "")) {
                            return 'Your password can\'t be blank.';
                          }
                          return null;
                        },
                      ),
                      ElevatedButton(onPressed: () async {
                        logger.d("login pressed");
                        if (_formKey.currentState?.validate() ?? false) {
                          try {
                            await FirebaseAuth.instance.createUserWithEmailAndPassword(
                              email: email.text,
                              password: password.text,
                            );
                            SignupRepository().currentUser = FirebaseAuth.instance.currentUser;
                            _formKey.currentState?.reset();
                            firstname.clear();
                            lastname.clear();
                            email.clear();
                            password.clear();
                          } on FirebaseAuthException catch (e) {
                            String? message;
                            if (e.code == 'weak-password') {
                              message = "The password provided is too weak.";
                            } else if (e.code == 'email-already-in-use') {
                              message = "An account already exists for that email.";
                            } else {
                              message = e.message;
                            }

                            logger.e(message);
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message!)));
                          } catch (e) {
                            logger.e(e);
                          }
                        } else {
                          logger.e("Could not add user, something is missing");
                        }
                      }, child: const Text("Register"))
                    ]
              )),
            ),
          ),
        ),
      ),
    );
}