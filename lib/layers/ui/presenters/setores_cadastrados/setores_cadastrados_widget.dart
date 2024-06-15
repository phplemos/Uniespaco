import 'package:flutter/material.dart';
import 'package:uniespaco/layers/ui/presenters/setores_cadastrados/setores_cadastrados_controller.dart';
import 'package:uniespaco/layers/ui/presenters/ver_informacoes_do_usuario/ver_infomacoes_do_usuario.dart';

class SetoresCadastradosWidget extends StatelessWidget {
  final SetoresCadastradosController controller;

  const SetoresCadastradosWidget({super.key, required this.controller});

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
                  child: Text("Setores cadastrados:"),
                ),
              ),
            ],
          ),
          Expanded(
              child: ListView.builder(
            itemCount: controller.setores.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                child: Card(
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: controller.setores[index]!.photoUrl != null ? Image(image: NetworkImage(controller.setores[index]!.photoUrl)) : const Icon(Icons.home),
                    ),
                    title: Text("Nome: ${controller.setores[index]!.nome}"),
                    subtitle: Text('Email: ${controller.setores[index]!.email}'),
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const VerInfomacoesDoUsuarioPage()));
                },
              );
            },
          ))
        ],
      ),
    );
  }
}
