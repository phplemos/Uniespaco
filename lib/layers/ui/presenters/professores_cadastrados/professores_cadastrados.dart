import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/layers/ui/presenters/professores_cadastrados/professores_cadastrados_controller.dart';
import 'package:uniespaco/layers/ui/presenters/professores_cadastrados/professores_cadastrados_widget.dart';
import 'package:uniespaco/layers/ui/widgets/appbar_widget.dart';
import 'package:uniespaco/layers/ui/widgets/barra_de_pesquisa_widget.dart';
import 'package:uniespaco/layers/ui/widgets/profile_info_widget.dart';

class ProfessoresCadastradosPage extends StatefulWidget {
  const ProfessoresCadastradosPage({super.key});

  @override
  State<ProfessoresCadastradosPage> createState() => _ProfessoresCadastradosPageState();
}

class _ProfessoresCadastradosPageState extends State<ProfessoresCadastradosPage> {
  final ProfessoresCadastradosController controller = GetIt.I.get<ProfessoresCadastradosController>();

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
          body: SingleChildScrollView(child: ProfessoresCadastradosWidget(controller: controller)),
        );
      },
    );
  }
}
