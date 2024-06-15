import 'package:flutter/material.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/ui/presenters/solicitar_servico/form/form_solicitar_servico_widget.dart';
import 'package:uniespaco/layers/ui/presenters/solicitar_servico/solicitar_servico_controller.dart';

class SolicitarServicoWidget extends StatelessWidget {
  final SolicitarServicoController controller;
  final EspacoEntity espacoEntity;

  const SolicitarServicoWidget({super.key, required this.controller, required this.espacoEntity});

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
              Text('Sala: ${espacoEntity.localizacao.numero}', style: const TextStyle(fontSize: 14)),
              Text('Pavilhao: ${espacoEntity.localizacao.pavilhao}', style: const TextStyle(fontSize: 12))
            ],
          )
        ],
      ),
      content: SizedBox(
        width: 300,
        height: 400,
        child: FormSolicitarServicoWidget(
          controller: controller,
        ),
      ),
      actions: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () async {
                var response = await controller.solicitarServico();
                response
                    ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Solicitação de servico realizada com sucesso!')))
                    : ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Erro ao solicitar reserva')));
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: const Text('Solicitar'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'Sair'),
              child: const Text('Sair'),
            ),
          ],
        )
      ],
    );
  }
}
