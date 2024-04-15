import 'package:flutter/material.dart';


class SolicitarServicoWidget extends StatelessWidget {
  final String numero;
  final String localizacao;
  final String? idSolicitante;
  final String? idEspaco;

  const SolicitarServicoWidget(
      {super.key,
      required this.numero,
      required this.localizacao,
      required this.idSolicitante,
      required this.idEspaco});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.yellow)),
      child: const Text(
        'Solicitar Manutenção',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.red),
      ),
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => SingleChildScrollView(
          child: AlertDialog(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  child: Icon(Icons.school_rounded),
                ),
                const SizedBox(
                  width: 50,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Sala: $numero', style: const TextStyle(fontSize: 14)),
                    Text('Modulo: $localizacao',
                        style: const TextStyle(fontSize: 12))
                  ],
                )
              ],
            ),
            /*content: FormSolicitacaoServicoWidget(
              idSolicitante: idSolicitante,
              idEspaco: idEspaco,
            ),*/
          ),
        ),
      ),
    );
  }
}
