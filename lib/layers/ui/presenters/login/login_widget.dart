// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:uniespaco/layers/ui/presenters/login/login_controller.dart';

class LoginWidget extends StatelessWidget {
  final LoginController controller;

  const LoginWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Image.asset(controller.uniespacoImg, width: 300, height: 300),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 20),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 12.0),
                    child: Text('Acessar com o Google'),
                  ),
                  InkWell(
                    onTap: () async {
                      var result = await controller.login();
                      if (result) {
                        if (context.mounted) Navigator.pushReplacementNamed(context, '/home');
                      } else {
                        controller.logout();
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Apenas email "@uesb.edu.br"!')),
                          );
                        }
                      }
                    },
                    child: Image.asset(controller.googleImg, width: 50, height: 50),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
