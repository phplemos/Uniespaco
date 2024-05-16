import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/layers/ui/presenters/cadastro_usuarios/cadastro_usuario_controller.dart';
import 'package:uniespaco/layers/ui/presenters/cadastro_usuarios/cadastro_usuario_widget.dart';
import 'package:uniespaco/layers/ui/widgets/appbar_widget.dart';
import 'package:uniespaco/layers/ui/widgets/barra_de_pesquisa_widget.dart';
import 'package:uniespaco/layers/ui/widgets/profile_info_widget.dart';

class CadastroUsuarioPage extends StatefulWidget {
  const CadastroUsuarioPage({super.key});

  @override
  State<CadastroUsuarioPage> createState() => _CadastroUsuarioPageState();
}

class _CadastroUsuarioPageState extends State<CadastroUsuarioPage> {
  final CadastroUsuarioController controller =
      GetIt.I.get<CadastroUsuarioController>();

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            title: const AppBarWidget(),
            actions: [
              InkWell(
                child: const Icon(Icons.search),
                onTap: () {
                  showSearch(context: context, delegate: BarradePesquisaWidget());
                },
              )
            ],
          ),
          drawer: const ProfileInfoWidget(),
          body: CadastroUsuarioWidget(controller: controller),
        );
      },
    );
  }
}