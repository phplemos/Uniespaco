import 'package:flutter/material.dart';

class VisualizarEspacoWidget extends StatelessWidget {
  final int? numero;
  final String? localizacao;
  final String? idEspaco;

  const VisualizarEspacoWidget({
    super.key,
    required this.numero,
    required this.localizacao,
    required this.idEspaco,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: AlertDialog(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              child: Icon(Icons.school_rounded),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Text('Sala: ${numero.toString()}', style: const TextStyle(fontSize: 14)), Text('Modulo: ${localizacao}', style: const TextStyle(fontSize: 12))],
            )
          ],
        ),
        content: Container(
          padding: const EdgeInsets.all(16),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Disponibilidade'),
              SizedBox(
                height: 20,
              ),
              Text(
                'Dezembro',
                style: TextStyle(fontSize: 24),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        'DOM',
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '13',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        'SEG',
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '14',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        'TER',
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '15',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        'QUA',
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '16',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        'QUI',
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '17',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        'SEX',
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '18',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        'SAB',
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '19',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /*Expanded( Solicitar Servico
                child: SolicitarServicoWidget(localizacao: localizacao!, numero: numero.toString(), idSolicitante: LoginController.instance.user!.id.toString(), idEspaco: idEspaco),
              ),*/
              TextButton(
                onPressed: () => Navigator.pop(context, 'Sair'),
                child: const Text('Sair'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
