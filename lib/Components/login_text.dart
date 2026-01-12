import 'package:flutter/material.dart';

class LoginText extends StatelessWidget {
  const LoginText({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      padding: EdgeInsets.all(16.0),
      child: TextField(
        textAlign: TextAlign.center,
        
        decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.grey, ),
            
          labelText: title,
          floatingLabelAlignment: FloatingLabelAlignment.center,
          alignLabelWithHint: true,
          hintText: title == "Username" ? "Enter your username" : "Enter your password",
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blue, width: 1.5),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.lightBlue, width: 2.5),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
