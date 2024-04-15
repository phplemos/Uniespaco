import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/layers/ui/presenters/cadastro_espaco/cadastro_espaco_widget.dart';
import 'package:uniespaco/layers/ui/widgets/appbar_widget.dart';
import 'package:uniespaco/layers/ui/widgets/profile_info_widget.dart';

class CadastroEspacoPage extends StatefulWidget {
  const CadastroEspacoPage({super.key});

  @override
  State<CadastroEspacoPage> createState() => _CadastroEspacoPageState();
}

class _CadastroEspacoPageState extends State<CadastroEspacoPage> {
  late final CadastroEspacoController controller;

  @override
  void initState() {
    controller = GetIt.I.get<CadastroEspacoController>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return FutureBuilder(
          future: controller.getUsuario(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              String email = snapshot.data!.email;
              String nome = snapshot.data!.nome;
              String photoUrl = snapshot.data!.photoUrl;
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
                  body: CadastroEspacoWidget(
                    controller: controller,
                  ));
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
      },
    );
  }
}
