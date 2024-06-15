import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/layers/ui/presenters/visualizar_gestores_servico_vinculados_aos_espacos/visualizar_gestores_servico_vinculados_aos_espacos_controller.dart';
import 'package:uniespaco/layers/ui/presenters/visualizar_gestores_servico_vinculados_aos_espacos/visualizar_gestores_servico_vinculados_aos_espacos_widget.dart';
import 'package:uniespaco/layers/ui/widgets/appbar_widget.dart';
import 'package:uniespaco/layers/ui/widgets/barra_de_pesquisa_widget.dart';
import 'package:uniespaco/layers/ui/widgets/profile_info_widget.dart';

class VisualizarGestoresServicoVinculadosAosEspacosPage extends StatefulWidget {
  const VisualizarGestoresServicoVinculadosAosEspacosPage({super.key});

  @override
  State<VisualizarGestoresServicoVinculadosAosEspacosPage> createState() => _VisualizarGestoresServicoVinculadosAosEspacosPageState();
}

class _VisualizarGestoresServicoVinculadosAosEspacosPageState extends State<VisualizarGestoresServicoVinculadosAosEspacosPage> {
  final VisualizarGestoresServicoVinculadosAosEspacosController controller = GetIt.instance.get<VisualizarGestoresServicoVinculadosAosEspacosController>();

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
          body: VisualizarGestoresServicoVinculadosAosEspacosWidget(controller: controller),
        );
      },
    );
  }
}
