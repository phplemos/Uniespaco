import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/layers/ui/presenters/visualizar_espaco/visualizar_espaco_controller.dart';
import 'package:uniespaco/layers/ui/presenters/visualizar_espaco/visualizar_espaco_widget.dart';
import 'package:uniespaco/layers/ui/widgets/appbar_widget.dart';
import 'package:uniespaco/layers/ui/widgets/profile_info_widget.dart';

class VisualizarEspacoPage extends StatefulWidget {
  String idEspaco;

  VisualizarEspacoPage({super.key, required this.idEspaco});

  @override
  State<VisualizarEspacoPage> createState() => _VisualizarEspacoPageState();
}

class _VisualizarEspacoPageState extends State<VisualizarEspacoPage> {
  final VisualizarEspacoController controller = GetIt.instance.get<VisualizarEspacoController>();

  @override
  Widget build(BuildContext context) {
    controller.init(idEspaco: widget.idEspaco);
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Scaffold(
          drawer: const ProfileInfoWidget(),
          appBar: AppBar(
            title: const AppBarWidget(),
          ),
          body: Center(child: controller.isCompleted ? VisualizarEspacoWidget(controller: controller) : CircularProgressIndicator()),
        );
      },
    );
  }
}
