import 'package:flutter/material.dart';
import 'package:android_nga_flutter/components/textfield.dart';
import 'package:android_nga_flutter/components/button.dart';

import 'package:android_nga_flutter/signup/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final userController = TextEditingController();
  final passController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // TODO change logo
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(height: 50),

              const Text(
                'Hello! Welcome Back',
                style: TextStyle(
                  color: Color.fromARGB(255, 66, 66, 66),
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 50),

              // Username TextField
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

              // Password TextField
              Textfield(
                controller: passController,
                hintText: 'Password',
                obscureText: false,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please input your Password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),

              // Sign In Button
              Button(
                // TODO add login function
                // onTap: loginUser,
              ),
              const SizedBox(height: 30),

              // Sign Up Option
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't Have an Account?"),
                  const SizedBox(width: 6),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => Signup()),
                      );
                    },
                    
                    child: const Text(
                      "Sign Up",
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
    );
  }
}
