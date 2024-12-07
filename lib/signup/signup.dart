import 'package:android_nga_flutter/components/submitButton.dart';
import 'package:android_nga_flutter/components/textfield.dart';
import 'package:android_nga_flutter/components/button.dart';

import 'package:flutter/material.dart';
import 'package:android_nga_flutter/login/login.dart';

class Signup extends StatefulWidget {
  // final UserCont controller;

  const Signup({
    super.key,
    // required this.controller,
  });

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  // Text Editing Controllers
  final name = TextEditingController();
  final last = TextEditingController();
  final userController = TextEditingController();
  final passController = TextEditingController();
  final confirmPassController = TextEditingController();

  // User key nga mo increment ug naay bago
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  const Icon(
                    Icons.lock,
                    size: 100,
                  ),
                  const SizedBox(height: 20),

                  const Text(
                    'CREATE YOUR ACCOUNT!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 50),

                  // Full name fields
                  Row(
                    children: [
                      Expanded(
                        child: Textfield(
                          controller: name,
                          hintText: 'Firstname',
                          obscureText: false,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please input your Firstname';
                            }
                            return null;
                          },
                        ),
                      ),
                      Expanded(
                        child: Textfield(
                          controller: last,
                          hintText: 'Lastname',
                          obscureText: false,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please input your LastName';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Username textfield
                  Textfield(
                    controller: userController,
                    hintText: 'Username',
                    obscureText: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please input your Username';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),

                  // Confirm Password field with validation
                  Textfield(
                    controller: passController,
                    hintText: 'Password',
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please input your Password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),

                  Textfield(
                    controller: confirmPassController,
                    hintText: 'Confirm Password',
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm your password';
                      }
                      if (value != passController.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 30),

                  // TODO add Sign Up Button
                  Button(
                    // controller: widget.controller,
                    // formKey: _formKey, // Pass the form key
                  ),
                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already Have an Account?"),
                      const SizedBox(width: 6),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => Login()),
                          );
                        },
                        child: const Text(
                          "Log In",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
