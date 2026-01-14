import 'package:flutter/material.dart';

class LoginText extends StatelessWidget {
  const LoginText({super.key, required this.title, required this.controller});
  final String title;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2.5),
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.09,
      padding: EdgeInsets.all(10.0),
    
    
      child: TextField(
        controller: controller,
        style: TextStyle(
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
        
        
        
        decoration: InputDecoration(
          hintStyle: TextStyle(color: const Color.fromARGB(255, 200, 200, 200), ),
          
            
          labelText: title,
          labelStyle: TextStyle(
            color: Color.fromARGB(255, 200, 200, 200),
            fontWeight: FontWeight.w600,
          ),
          floatingLabelAlignment: FloatingLabelAlignment.center,
          floatingLabelStyle: TextStyle(
            color: const Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
          filled: true,
          fillColor: Color.fromARGB(105, 43, 89, 164),
          alignLabelWithHint: true,
          hintText: title == "Username" ? "Enter your username" : "Enter your password",
          enabledBorder: OutlineInputBorder(
            
            borderSide: const BorderSide(color: Color.fromARGB(255, 131, 155, 174), width: 1.5),
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
