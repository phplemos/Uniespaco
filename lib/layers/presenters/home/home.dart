import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/layers/domain/usecases/efetuar_logout_usecase/efetuar_logout_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_todos_espacos_usecase/listar_todos_espacos_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/ver_informacao_do_usuario_usecase/ver_informacao_do_usuario_usecase.dart';
import 'package:uniespaco/layers/presenters/home/home_controller.dart';
import 'package:uniespaco/layers/presenters/home/home_widget.dart';

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
      builder: (context, child) => HomeWidget(controller: controller),
    );
  }
}
