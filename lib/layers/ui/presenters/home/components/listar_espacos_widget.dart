import 'package:flutter/material.dart';
import 'package:uniespaco/layers/ui/presenters/home/home_controller.dart';
import 'package:uniespaco/layers/ui/presenters/visualizar_espaco/visualizar_espaco.dart';

class ListarEspacosWidget extends StatefulWidget {
  final HomeController controller;

  const ListarEspacosWidget({
    super.key,
    required this.controller,
  });

  @override
  State<ListarEspacosWidget> createState() => _ListarEspacosWidgetState();
}

class _ListarEspacosWidgetState extends State<ListarEspacosWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 200,
      padding: const EdgeInsets.all(2),
      child: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: widget.controller.espacos?.length ?? 0,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                child: Card(
                  child: ListTile(
                    leading: const Icon(Icons.add_alert),
                    title: Text("Numero: ${widget.controller.espacos![index]!.localizacao.numero}"),
                    subtitle: Text('Modulo: ${widget.controller.espacos![index]!.localizacao.pavilhao}'),
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => VisualizarEspacoPage(espacoEntity: widget.controller.espacos![index]!)));
                },
              );
            },
          ))
        ],
      ),
    );
  }
}
