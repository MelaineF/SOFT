import 'package:Swipe/core/helper/logger.dart';
import 'package:Swipe/features/root/data/models/user.dart' as LocalUser;
import 'package:Swipe/features/signup_page/data/repository_impl/signup_repository.dart';
import 'package:Swipe/features/signup_page/presentation/widget/image_selector.widget.dart';
import 'package:Swipe/features/signup_page/presentation/widget/selectable_image.widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:validators/validators.dart';

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

  final List<String> _items = [
    "https://firebasestorage.googleapis.com/v0/b/soft-c8f3b.appspot.com/o/DALL%C2%B7E%202023-02-15%2013.22.16.png?alt=media&token=19bb4ffb-4f45-44e3-9988-3fa88068d431",
    "https://firebasestorage.googleapis.com/v0/b/soft-c8f3b.appspot.com/o/DALL%C2%B7E%202023-02-15%2013.22.23.png?alt=media&token=7ecb5dd4-7868-43b0-a9e2-d0769f928f86",
    "https://firebasestorage.googleapis.com/v0/b/soft-c8f3b.appspot.com/o/DALL%C2%B7E%202023-02-15%2013.22.41.png?alt=media&token=265c5f28-94db-4796-a499-17b0975ddc1e",
    "https://firebasestorage.googleapis.com/v0/b/soft-c8f3b.appspot.com/o/DALL%C2%B7E%202023-02-15%2013.22.48.png?alt=media&token=d52e9029-a70d-4a2d-bbb3-9feb0692b2d9",
    "https://firebasestorage.googleapis.com/v0/b/soft-c8f3b.appspot.com/o/DALL%C2%B7E%202023-02-15%2013.22.57.png?alt=media&token=397177f3-771a-4561-ad34-c930ea9e8d9e"
];

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
          child: Wrap(
            runSpacing: 8.0,
              alignment: WrapAlignment.center,
              children: [
                SizedBox(
                  height: 200,
                  child: ImageSelector(imageUrls: _items),
                ),
                Form(
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
                            logger.d("register pressed");
                            if (_formKey.currentState?.validate() ?? false) {
                              try {
                                await FirebaseAuth.instance.createUserWithEmailAndPassword(
                                  email: email.text,
                                  password: password.text,
                                );

                                SignupRepository service = SignupRepository();
                                service.currentUser = FirebaseAuth.instance.currentUser;
                                service.fcmToken = await FirebaseMessaging.instance.getToken();
                                service.create(LocalUser.User(firstname.text, lastname.text, ""));

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
              ],
          )
        ),
      ),
    );
}