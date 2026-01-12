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
  final verticalMarginSize = MediaQuery.of(context).size.height * 0.25;
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.only(left: horizontalMarginSize, right: horizontalMarginSize, top: verticalMarginSize, bottom: verticalMarginSize),
          padding: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 2),
            borderRadius: BorderRadius.circular(12),  
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
      ),
    );
  }
}
