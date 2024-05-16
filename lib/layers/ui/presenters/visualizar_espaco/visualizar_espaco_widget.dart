import 'package:flutter/material.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/ui/presenters/visualizar_espaco/components/listar_reservas_widget.dart';

class VisualizarEspacoWidget extends StatefulWidget {
  final EspacoEntity espaco;

  const VisualizarEspacoWidget({
    super.key,
    required this.espaco,
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
            ListarReservasWidget(
              agenda: widget.espaco.agenda,
              espaco: widget.espaco,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () => Navigator.pop(context, 'Sair'),
                  child: const Text('Solicitar Manutenção'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class AppBarVisualizarEspacoWidget extends StatelessWidget {
  final int numero;
  final String pavilhao;

  AppBarVisualizarEspacoWidget({required this.numero, required this.pavilhao}) : super();

  @override
  Widget build(BuildContext context) {
    return Row(
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

// AlertDialog(
// title: Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// const CircleAvatar(
// child: Icon(Icons.school_rounded),
// ),
// const SizedBox(
// width: 20,
// ),
// Column(
// mainAxisAlignment: MainAxisAlignment.start,
// children: [
// Text('Sala: ${widget.espaco.localizacao.numero}', style: const TextStyle(fontSize: 14)),
// Text('Modulo: ${widget.espaco.localizacao.pavilhao}', style: const TextStyle(fontSize: 12))
// ],
// )
// ],
// ),
// content: SizedBox(
// width: 300,
// height: 400,
// child: ListarReservasWidget(
// agenda: widget.espaco.agenda,
// espaco: widget.espaco,
// ),
// ),
// actions: <Widget>[
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// TextButton(
// onPressed: () => Navigator.pop(context, 'Sair'),
// child: const Text('Sair'),
// ),
// ],
// )
// ],
// ),