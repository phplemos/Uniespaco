import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/layers/ui/presenters/login/login_controller.dart';
import 'package:uniespaco/layers/ui/presenters/login/login_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final LoginController controller = GetIt.I.get<LoginController>();

    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Scaffold(
          body: LoginWidget(controller: controller),
        );
      },
    );
  }
}
