import 'package:flutter/material.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/ui/presenters/visualizar_espaco/components/listar_reservas_widget.dart';
import 'package:uniespaco/layers/ui/presenters/visualizar_espaco/visualizar_espaco_controller.dart';

class VisualizarEspacoWidget extends StatefulWidget {
  final VisualizarEspacoController controller;

  VisualizarEspacoWidget({
    super.key,
    required this.controller,
  });

  @override
  State<VisualizarEspacoWidget> createState() => _VisualizarEspacoWidgetState();
}

class _VisualizarEspacoWidgetState extends State<VisualizarEspacoWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0, bottom: 20.0),
        child: Column(
          children: [
            Center(
              child: AppBarVisualizarEspacoWidget(
                numero: widget.controller.espacoEntity!.localizacao.numero,
                pavilhao: widget.controller.espacoEntity!.localizacao.pavilhao,
              ),
            ),
            ListarReservasWidget(
              controller: widget.controller,
            ),
          ],
        ),
      ),
    );
  }
}

class AppBarVisualizarEspacoWidget extends StatelessWidget {
  final int numero;
  final String pavilhao;

  const AppBarVisualizarEspacoWidget({super.key, required this.numero, required this.pavilhao});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          width: 20,
        ),
        const CircleAvatar(
          child: Icon(Icons.school_rounded),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          children: [Text('Sala: $numero', style: TextStyle(fontSize: 14)), Text('Modulo: $pavilhao', style: const TextStyle(fontSize: 12))],
        )
      ],
    );
  }
}
