import 'package:Swipe/core/firebase/database.dart';
import 'package:Swipe/core/helper/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController email = TextEditingController();
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              autovalidateMode: AutovalidateMode.always,
              onChanged: () {
                Form.of(primaryFocus!.context!)!.save();
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                  child: Wrap(
                runSpacing: 8.0,
                children: <Widget>[
                  TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.blue.shade100,
                      labelText: "Email"
                    ),
                    validator: (value) {
                      // TODO: do proper check here
                      if (value?.isEmpty ?? true) {
                        return 'Please enter a valid email.';
                      }
                      return null;
                    },
                  ),
                  TextField(
                    controller: firstname,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.blue.shade100,
                      labelText: "First Name"
                    ),
                  ),
                  TextField(
                    controller: lastname,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.blue.shade100,
                      labelText: "Last Name"
                    ),
                  ),
                  TextField(
                    controller: password,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                    obscureText: true,
                  ),
                  TextButton(onPressed: () {
                    logger.d("login pressed");
                    var rtdb = RealtimeDb();
                    var added = rtdb.addUser(firstname.text, lastname.text, email.text, password.text);
                    logger.d('is user added? $added');

                    firstname.clear();
                    lastname.clear();
                    email.clear();
                    password.clear();
                  }, child: const Text("Login"))
                ],
              )),
            ),
          ),
        ),
      ),
    );
  }
}