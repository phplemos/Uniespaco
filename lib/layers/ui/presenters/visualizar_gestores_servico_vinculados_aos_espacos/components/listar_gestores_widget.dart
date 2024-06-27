import 'package:flutter/material.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/ui/presenters/ver_informacoes_do_usuario/ver_infomacoes_do_usuario.dart';

class ListarGestoresServicoWidget extends StatefulWidget {
  final List<UsuarioEntity?> gestores;
  final EspacoEntity espaco;

  const ListarGestoresServicoWidget({super.key, required this.gestores, required this.espaco});

  @override
  State<ListarGestoresServicoWidget> createState() => _ListarGestoresWidgetState();
}

class _ListarGestoresWidgetState extends State<ListarGestoresServicoWidget> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            child: Icon(Icons.edit_calendar_sharp),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Sala: ${widget.espaco.localizacao.numero}', style: const TextStyle(fontSize: 14)),
              Text('Pavilhao: ${widget.espaco.localizacao.pavilhao}', style: const TextStyle(fontSize: 12))
            ],
          )
        ],
      ),
      content: Container(
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
                    child: Text("Gestores de servico do espaco:"),
                  ),
                ),
              ],
            ),
            Expanded(
                child: ListView.builder(
              itemCount: widget.gestores.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  child: Card(
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: widget.gestores[index]!.photoUrl != null ? Image(image: NetworkImage(widget.gestores[index]!.photoUrl)) : const Icon(Icons.home),
                      ),
                      title: Text("Nome: ${widget.gestores[index]!.nome}"),
                      subtitle: Text('Email: ${widget.gestores[index]!.email}'),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => VerInfomacoesDoUsuarioPage()));
                  },
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
