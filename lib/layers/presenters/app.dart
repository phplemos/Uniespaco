import 'package:flutter/material.dart';
import 'package:uniespaco/layers/presenters/home/home.dart';
import 'package:uniespaco/layers/presenters/login/login.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
