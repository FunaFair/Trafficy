import 'package:flutter/material.dart';


import 'package:trafficy/Source/app_router.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AppRouter();
    return MaterialApp.router(
      routerConfig: router.config(),
    );
  }
}