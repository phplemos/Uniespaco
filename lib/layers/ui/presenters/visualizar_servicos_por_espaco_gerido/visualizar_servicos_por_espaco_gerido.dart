import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/layers/ui/presenters/visualizar_servicos_por_espaco_gerido/visualizar_servicos_por_espaco_gerido_controller.dart';
import 'package:uniespaco/layers/ui/presenters/visualizar_servicos_por_espaco_gerido/visualizar_servicos_por_espaco_gerido_widget.dart';
import 'package:uniespaco/layers/ui/widgets/appbar_widget.dart';
import 'package:uniespaco/layers/ui/widgets/barra_de_pesquisa_widget.dart';
import 'package:uniespaco/layers/ui/widgets/profile_info_widget.dart';

class VisualizarServicosPorEspacoGeridoPage extends StatefulWidget {
  const VisualizarServicosPorEspacoGeridoPage({super.key});

  @override
  State<VisualizarServicosPorEspacoGeridoPage> createState() => _VisualizarServicosPorEspacoGeridoPageState();
}

class _VisualizarServicosPorEspacoGeridoPageState extends State<VisualizarServicosPorEspacoGeridoPage> {
  final VisualizarServicosPorEspacoGeridoController controller = GetIt.instance.get<VisualizarServicosPorEspacoGeridoController>();

  @override
  void initState() {
    controller.init();
    super.initState();
    // Add code after super
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
          body: VisualizarServicosPorEspacoGeridoWidget(controller: controller),
        );
      },
    );
  }
}
