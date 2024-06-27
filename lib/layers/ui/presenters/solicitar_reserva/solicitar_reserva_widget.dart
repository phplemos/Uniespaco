import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uniespaco/core/role_handlers.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/ui/presenters/solicitar_reserva/form/form_solicitar_reserva_widget.dart';
import 'package:uniespaco/layers/ui/presenters/solicitar_reserva/solicitar_reserva_controller.dart';

class SolicitarReservaWidget extends StatelessWidget {
  final SolicitarReservaController controller;
  final EspacoEntity espacoEntity;

  const SolicitarReservaWidget({super.key, required this.controller, required this.espacoEntity});

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
        child: FormSolicitarReservaWidget(
          controller: controller,
        ),
      ),
      actions: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () async {
                var response = await controller.solicitarReserva();
                response
                    ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Reserva Realizada com sucesso!')))
                    : ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Erro ao solicitar Reserva')));
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
