import 'package:flutter/material.dart';
import 'package:android_flutter/entities/userCont.dart';
import "package:android_flutter/loginpages/login.dart";

class SubmitButton extends StatelessWidget {
  final UserController controller;
  final GlobalKey<FormState> formKey;

  const SubmitButton({
    super.key,
    required this.controller,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        if (formKey.currentState!.validate()) {
          // Trigger sign-up logic
          controller.createUser(
            controller.userModel.firstName ?? '',
            controller.userModel.lastName ?? '',
            controller.userModel.userName ?? '',
            controller.userModel.passWord ?? '',
          );

          // Show success message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('User data saved!')),
          );
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => Login()),
          );
        }
      },
      child: Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            'Sign Up',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
