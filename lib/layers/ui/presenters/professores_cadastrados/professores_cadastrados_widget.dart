import 'package:flutter/material.dart';
import 'package:uniespaco/layers/ui/presenters/professores_cadastrados/professores_cadastrados_controller.dart';
import 'package:uniespaco/layers/ui/presenters/ver_informacoes_do_usuario/ver_infomacoes_do_usuario.dart';

class ProfessoresCadastradosWidget extends StatelessWidget {
  final ProfessoresCadastradosController controller;

  const ProfessoresCadastradosWidget({super.key, required this.controller});

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
                  child: Text("Professores cadastrados:"),
                ),
              ),
            ],
          ),
          Expanded(
              child: ListView.builder(
            itemCount: controller.professores.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                child: Card(
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: controller.professores[index]!.photoUrl != null ? Image(image: NetworkImage(controller.professores[index]!.photoUrl)) : const Icon(Icons.home),
                    ),
                    title: Text("Nome: ${controller.professores[index]!.nome}"),
                    subtitle: Text('Email: ${controller.professores[index]!.email}'),
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
    );
  }
}
