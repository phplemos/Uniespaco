import 'package:flutter/material.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/ui/presenters/visualizar_espaco/visualizar_espaco_widget.dart';

class VisualizarEspacoPage extends StatefulWidget {
  final EspacoEntity espacoEntity;

  const VisualizarEspacoPage({super.key, required this.espacoEntity});

  @override
  State<VisualizarEspacoPage> createState() => _VisualizarEspacoPageState();
}

class _VisualizarEspacoPageState extends State<VisualizarEspacoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarVisualizarEspacoWidget(
          numero: widget.espacoEntity.localizacao.numero,
          pavilhao: widget.espacoEntity.localizacao.pavilhao,
        ),
      ),
      body: Center(child: VisualizarEspacoWidget(espaco: widget.espacoEntity)),
    );
  }
}
