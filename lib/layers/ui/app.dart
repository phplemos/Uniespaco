// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:uniespaco/layers/ui/presenters/cadastro_espaco/cadastro_espaco.dart';
import 'package:uniespaco/layers/ui/presenters/cadastro_usuarios/cadastro_usuario.dart';
import 'package:uniespaco/layers/ui/presenters/home/home.dart';
import 'package:uniespaco/layers/ui/presenters/login/login.dart';
import 'package:uniespaco/layers/ui/presenters/vincular_gestor_ao_espaco/vincular_gestor_ao_espaco.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/cadastro_espaco': (context) => const CadastroEspacoPage(),
        '/vincular_gestor_ao_espaco': (context) =>
            const VincularGestorAoEspacoPage(),
        '/cadastro_usuario': (context) => const CadastroUsuarioPage(),
      },
    );
  }
}
