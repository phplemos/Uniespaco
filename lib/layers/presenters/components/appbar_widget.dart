import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      child: InkWell(
        onTap: () => Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false),
        child: const Image(
          image: AssetImage('lib/core/assets/images/iconuniespaco.png'),
          width: 60,
          height: 60,
        ),
      ),
    );
  }
}
