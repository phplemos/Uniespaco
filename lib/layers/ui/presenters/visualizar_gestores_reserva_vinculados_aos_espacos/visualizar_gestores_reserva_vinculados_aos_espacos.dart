import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/layers/ui/presenters/visualizar_gestores_reserva_vinculados_aos_espacos/visualizar_gestores_reserva_vinculados_aos_espacos_controller.dart';
import 'package:uniespaco/layers/ui/presenters/visualizar_gestores_reserva_vinculados_aos_espacos/visualizar_gestores_reserva_vinculados_aos_espacos_widget.dart';
import 'package:uniespaco/layers/ui/widgets/appbar_widget.dart';
import 'package:uniespaco/layers/ui/widgets/barra_de_pesquisa_widget.dart';
import 'package:uniespaco/layers/ui/widgets/profile_info_widget.dart';

class VisualizarGestoresReservaVinculadosAosEspacosPage extends StatefulWidget {
  const VisualizarGestoresReservaVinculadosAosEspacosPage({super.key});

  @override
  State<VisualizarGestoresReservaVinculadosAosEspacosPage> createState() => _VisualizarGestoresReservaVinculadosAosEspacosPageState();
}

class _VisualizarGestoresReservaVinculadosAosEspacosPageState extends State<VisualizarGestoresReservaVinculadosAosEspacosPage> {
  final VisualizarGestoresReservaVinculadosAosEspacosController controller = GetIt.instance.get<VisualizarGestoresReservaVinculadosAosEspacosController>();

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
          body: VisualizarGestoresReservaVinculadosAosEspacosWidget(controller: controller),
        );
      },
    );
  }
}
