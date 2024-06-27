import 'package:flutter/material.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
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
                      trailing: InkWell(
                          onTap: () {
                            setState(() {
                              widget.controller.desfavoritarEspaco(espacoEntity: widget.controller.espacosFavoritos[index]!);
                            });
                          },
                          child: const Icon(
                            Icons.favorite_rounded,
                            color: Colors.red,
                          )),
                    ),
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VisualizarEspacoPage(
                          idEspaco: widget.controller.espacosFavoritos[index]!.id,
                        ),
                      ),
                    );
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
