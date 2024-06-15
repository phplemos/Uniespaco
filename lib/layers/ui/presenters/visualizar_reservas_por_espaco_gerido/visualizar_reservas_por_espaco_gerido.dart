import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/layers/ui/presenters/visualizar_reservas_por_espaco_gerido/visualizar_reservas_por_espaco_gerido_controller.dart';
import 'package:uniespaco/layers/ui/presenters/visualizar_reservas_por_espaco_gerido/visualizar_reservas_por_espaco_gerido_widget.dart';
import 'package:uniespaco/layers/ui/widgets/appbar_widget.dart';
import 'package:uniespaco/layers/ui/widgets/barra_de_pesquisa_widget.dart';
import 'package:uniespaco/layers/ui/widgets/profile_info_widget.dart';

class VisualizarReservasPorEspacoGeridoPage extends StatefulWidget {
  const VisualizarReservasPorEspacoGeridoPage({super.key});

  @override
  State<VisualizarReservasPorEspacoGeridoPage> createState() => _VisualizarReservasPorEspacoGeridoPageState();
}

class _VisualizarReservasPorEspacoGeridoPageState extends State<VisualizarReservasPorEspacoGeridoPage> {
  final VisualizarReservasPorEspacoGeridoController controller = GetIt.instance.get<VisualizarReservasPorEspacoGeridoController>();

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
          body: VisualizarReservasPorEspacoGeridoWidget(controller: controller),
        );
      },
    );
  }
}
