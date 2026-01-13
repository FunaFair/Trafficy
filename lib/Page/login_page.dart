import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:trafficy/Components/login_button.dart';
import 'package:trafficy/Components/login_text.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final horizontalMarginSize = MediaQuery.of(context).size.width * 0.1;
    final verticalMarginSize = MediaQuery.of(context).size.height * 0.20;
    return Scaffold(
      
      body: Stack(
      
        children: [SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            'assets/images/main_bg.jpg',
            fit: BoxFit.cover,
            
          ),
          ),

          
            Container(
              margin: EdgeInsets.only(
                left: horizontalMarginSize,
                right: horizontalMarginSize,
                top: verticalMarginSize,
                bottom: verticalMarginSize,
              ),
              
          
              padding: EdgeInsets.all(15.0),
              
              child:BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
              
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color.fromARGB(1, 200, 200, 200),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LoginText(title: "Username"),
                  LoginText(title: "Password"),
                  LoginButton(),
                ],
              ),
            ),
            )
      )]
      ),
    );
  }
}
