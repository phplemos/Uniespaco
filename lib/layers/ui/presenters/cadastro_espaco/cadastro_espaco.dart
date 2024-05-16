import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/layers/ui/presenters/cadastro_espaco/cadastro_espaco_controller.dart';
import 'package:uniespaco/layers/ui/presenters/cadastro_espaco/cadastro_espaco_widget.dart';
import 'package:uniespaco/layers/ui/widgets/appbar_widget.dart';
import 'package:uniespaco/layers/ui/widgets/profile_info_widget.dart';

class CadastroEspacoPage extends StatelessWidget {
  const CadastroEspacoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CadastroEspacoController controller = GetIt.I.get<CadastroEspacoController>();
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(title: const AppBarWidget()),
          drawer: const ProfileInfoWidget(),
          body: CadastroEspacoWidget(
            controller: controller,
          ),
        );
      },
    );
  }
}
