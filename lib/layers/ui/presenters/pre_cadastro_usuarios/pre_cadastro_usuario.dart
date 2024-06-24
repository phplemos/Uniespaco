import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/layers/ui/presenters/pre_cadastro_usuarios/pre_cadastro_usuario_controller.dart';
import 'package:uniespaco/layers/ui/presenters/pre_cadastro_usuarios/pre_cadastro_usuario_widget.dart';
import 'package:uniespaco/layers/ui/widgets/appbar_widget.dart';
import 'package:uniespaco/layers/ui/widgets/barra_de_pesquisa_widget.dart';
import 'package:uniespaco/layers/ui/widgets/profile_info_widget.dart';

class PreCadastroUsuarioPage extends StatefulWidget {
  const PreCadastroUsuarioPage({super.key});

  @override
  State<PreCadastroUsuarioPage> createState() => _PreCadastroUsuarioPageState();
}

class _PreCadastroUsuarioPageState extends State<PreCadastroUsuarioPage> {
  final PreCadastroUsuarioController controller = GetIt.I.get<PreCadastroUsuarioController>();

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
          body: PreCadastroUsuarioWidget(controller: controller),
        );
      },
    );
  }
}
