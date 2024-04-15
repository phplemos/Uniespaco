// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/presenters/components/appbar_widget.dart';
import 'package:uniespaco/layers/presenters/components/profile_info_widget.dart';

abstract class HomeController extends ChangeNotifier {
  Future<Either<Exception, UsuarioEntity>> getUsuario();
  Future<Either<Exception, void>> logout();
}

class HomeWidget extends StatelessWidget {
  final HomeController controller;

  const HomeWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: controller.getUsuario(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          String email = snapshot.data!.fold((l) => 'Erro ao recuperar', (r) => r.email);
          String nome = snapshot.data!.fold((l) => 'Erro ao recuperar', (r) => r.nome);
          String photoUrl = snapshot.data!.fold((l) => 'Erro ao recuperar', (r) => r.photoUrl);
          return Scaffold(
            appBar: AppBar(
              title: const AppBarWidget(),
            ),
            drawer: ProfileInfoWidget(
                accountEmail: email,
                accountName: nome,
                currentAccountPicture: photoUrl,
                logout: () {
                  controller.logout();
                  if (context.mounted) {
                    Navigator.pushReplacementNamed(context, '/');
                  }
                }),
            body: const Text("Funiona Mesmo!"),
          );
        }
        return Scaffold(
          appBar: AppBar(
            title: const AppBarWidget(),
          ),
          drawer: ProfileInfoWidget(
              accountEmail: 'Error',
              accountName: 'Error',
              currentAccountPicture: 'Error',
              logout: () {
                controller.logout();
              }),
          body: const Text("Funiona Mesmo!"),
        );
      },
    );
  }
}
