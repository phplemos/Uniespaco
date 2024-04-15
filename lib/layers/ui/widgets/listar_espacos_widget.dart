import 'package:flutter/material.dart';
import 'package:uniespaco/layers/ui/presenters/home/home_widget.dart';

class ListarEspacosWidget extends StatelessWidget {
  final HomeController controller;

  const ListarEspacosWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Espaços:"),
                ),
              ),
              /*Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () => Navigator.pushNamed(
                          context, '/visualizar_espacos_favoritados'),
                      child: const Text('Ver todos!')))*/
            ],
          ),
          // Expanded(
          //     child: FutureBuilder(
          //         future: controller.getEspacos(),
          //         builder: (BuildContext context, AsyncSnapshot snapshot) {
          //           if (snapshot.hasData) {
          //             var list = snapshot.data;
          //             return ListView.builder(
          //               itemCount: list.length,
          //               itemBuilder: (BuildContext context, int index) {
          //                 return InkWell(
          //                   child: Card(
          //                     child: ListTile(
          //                       leading: const Icon(Icons.add_alert),
          //                       title: Text("Numero: ${list[index].numero}"),
          //                       subtitle: Text('Modulo: ${list[index].localizacao.split(', ')[1]}'),
          //                     ),
          //                   ),
          //                   onTap: () => showDialog<String>(
          //                     context: context,
          //                     builder: (BuildContext context) => VisualizarEspacoWidget(
          //                       numero: list[index].numero,
          //                       localizacao: list[index].localizacao!.split(', ')[3],
          //                       idEspaco: list[index].id,
          //                     ),
          //                   ),
          //                 );
          //               },
          //             );
          //           } else if (snapshot.hasError) {
          //             return const Icon(Icons.error_outline);
          //           } else {
          //             return const CircularProgressIndicator();
          //           }
          //         })),
        ],
      ),
    );
  }
}
