import 'package:flutter/material.dart';
import 'package:uniespaco/layers/ui/presenters/home/home_controller.dart';
import 'package:uniespaco/layers/ui/presenters/visualizar_espaco/visualizar_espaco.dart';

class ListarEspacosFavoritosWidget extends StatefulWidget {
  final HomeController controller;

  const ListarEspacosFavoritosWidget({super.key, required this.controller});

  @override
  State<ListarEspacosFavoritosWidget> createState() => _ListarEspacosFavoritosWidgetState();
}

class _ListarEspacosFavoritosWidgetState extends State<ListarEspacosFavoritosWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 200,
      padding: const EdgeInsets.all(2),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Espaços Favoritados:"),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.controller.espacosFavoritos.length ?? 0,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  child: Card(
                    child: ListTile(
                      leading: const Icon(Icons.add_alert),
                      title: Text("Numero: ${widget.controller.espacosFavoritos[index]!.localizacao.numero}"),
                      subtitle: Text('Modulo: ${widget.controller.espacosFavoritos[index]!.localizacao.pavilhao}'),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => VisualizarEspacoPage(espacoEntity: widget.controller.espacosFavoritos[index]!)));
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
