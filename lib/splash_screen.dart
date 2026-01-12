import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trafficy/Source/app_router.gr.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
  const SplashScreen({super.key});
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToMain();
  }

  void _navigateToMain() async {
    await Future.delayed(Duration(seconds: 2)); // Simulasi loading
    if (mounted) {
      context.router.replace(const LoginRoute()); // Gunakan replace agar tidak bisa back ke splash
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Loading...")),
    );
  }
}