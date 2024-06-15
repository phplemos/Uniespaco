import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/layers/ui/presenters/setores_cadastrados/setores_cadastrados_controller.dart';
import 'package:uniespaco/layers/ui/presenters/setores_cadastrados/setores_cadastrados_widget.dart';
import 'package:uniespaco/layers/ui/widgets/appbar_widget.dart';
import 'package:uniespaco/layers/ui/widgets/barra_de_pesquisa_widget.dart';
import 'package:uniespaco/layers/ui/widgets/profile_info_widget.dart';

class SetoresCadastradosPage extends StatefulWidget {
  const SetoresCadastradosPage({super.key});

  @override
  State<SetoresCadastradosPage> createState() => _SetoresCadastradosPageState();
}

class _SetoresCadastradosPageState extends State<SetoresCadastradosPage> {
  final SetoresCadastradosController controller = GetIt.I.get<SetoresCadastradosController>();

  @override
  initState() {
    controller.init();
    super.initState();
  }

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
          body: SetoresCadastradosWidget(controller: controller),
        );
      },
    );
  }
}
