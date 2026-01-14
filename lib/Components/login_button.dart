import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      padding: EdgeInsets.all(3.0),
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          padding: EdgeInsets.symmetric(vertical: 16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        child: Text(
          'Login',
          style: TextStyle(fontSize: 18, color: Colors.white, ),
        ),
      ),
    );
  }
}