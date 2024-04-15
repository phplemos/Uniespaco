import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/layers/domain/usecases/efetuar_logout_usecase/efetuar_logout_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_todos_espacos_usecase/listar_todos_espacos_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/ver_informacao_do_usuario_usecase/ver_informacao_do_usuario_usecase.dart';
import 'package:uniespaco/layers/ui/widgets/appbar_widget.dart';
import 'package:uniespaco/layers/ui/widgets/profile_info_widget.dart';
import 'package:uniespaco/layers/ui/presenters/home/home_controller.dart';
import 'package:uniespaco/layers/ui/presenters/home/home_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeController controller;

  @override
  void initState() {
    controller = HomeControllerImpl(listarTodosEspacosUseCase: GetIt.I.get<ListarTodosEspacosUseCase>(), verInformacaoDoUsuarioUseCase: GetIt.I.get<VerInformacaoDoUsuarioUseCase>(), efetuarLogoutUseCase: GetIt.I.get<EfetuarLogoutUseCase>());
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
                  body: HomeWidget(controller: controller));
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
