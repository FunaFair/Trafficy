import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Welcome to the Main Page',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}