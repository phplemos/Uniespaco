import 'package:flutter/material.dart';
import 'package:uniespaco/layers/data/dto/espaco_dto.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/ui/presenters/cadastro_espaco/cadastro_espaco_widget.dart';

class FormularioCadastroEspacoWidget extends StatefulWidget {
  const FormularioCadastroEspacoWidget({super.key, required this.controller});
  final CadastroEspacoController controller;

  @override
  State<FormularioCadastroEspacoWidget> createState() => _FormularioCadastroEspacoWidgetState();
}

class _FormularioCadastroEspacoWidgetState extends State<FormularioCadastroEspacoWidget> {
  final List<CheckBoxModel> equipamentosSalaDeAula = [
    CheckBoxModel(texto: "Mesas e cadeiras"),
    CheckBoxModel(texto: "Quadro branco ou lousa"),
    CheckBoxModel(texto: "Projetor"),
    CheckBoxModel(texto: "Armários"),
    CheckBoxModel(texto: "Armazenamento para materiais"),
    CheckBoxModel(texto: "Papelaria"),
    CheckBoxModel(texto: "Equipamentos para tecnologia educacional"),
    CheckBoxModel(texto: "Equipamentos de segurança"),
    CheckBoxModel(texto: "Computadores"),
    CheckBoxModel(texto: "Laptops"),
    CheckBoxModel(texto: "Tablets"),
    CheckBoxModel(texto: "Projetores"),
    CheckBoxModel(texto: "Softwares educacionais"),
    CheckBoxModel(texto: "Instrumentos musicais"),
    CheckBoxModel(texto: "Partituras"),
    CheckBoxModel(texto: "Equipamentos de gravação"),
    CheckBoxModel(texto: "Materiais de desenho"),
    CheckBoxModel(texto: "Pintura"),
    CheckBoxModel(texto: "Escultura"),
    CheckBoxModel(texto: "Materiais de laboratório"),
    CheckBoxModel(texto: "Equipamentos de segurança"),
    CheckBoxModel(texto: "Equipamentos esportivos"),
    CheckBoxModel(texto: "Uniformes"),
  ];
  // Equipamentos de laboratório
  final List<String> equipamentosLaboratorio = [
    'Bancadas',
    'Balanças',
    'Pipetas',
    'Béqueres',
    'Erlenmeyers',
    'Provetas',
    'Microscópios',
    'Equipamentos de segurança',
  ];

  // Variaveis de formulário
  final _formKey = GlobalKey<FormState>();
  final List<Campus> listaDeCampus = [Campus.JEQUIE, Campus.VITORIADACONQUISTA, Campus.ITAPETINGA];
  Campus _campus = Campus.CAMPUS;
  final TextEditingController _pavilhao = TextEditingController();
  final TextEditingController _andar = TextEditingController();
  final TextEditingController _numero = TextEditingController();
  List<CheckBoxModel> itensSelecionados = [];
  final TextEditingController _capacidadePessoas = TextEditingController();
  bool _isAcessivel = false;
  String _tipoEspaco = 'Sala';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              "Informações sobre localização",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Campus:"),
                  DropdownButton<Campus>(
                      value: _campus,
                      onChanged: (newValue) {
                        setState(() {
                          if (newValue != null) {
                            _campus = newValue;
                          }
                        });
                      },
                      items: Campus.values.map((Campus campus) {
                        return DropdownMenuItem<Campus>(value: campus, child: Text(campus.text!));
                      }).toList()),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: _pavilhao,
              decoration: const InputDecoration(
                label: Text("Pavilhão"),
                border: OutlineInputBorder(),
              ),
              validator: (String? text) {
                if (text?.isEmpty ?? true) {
                  return 'Campo Obrigatório';
                }
                final exp = RegExp(r"^[a-zA-Z0-9 ]+$");
                if (!exp.hasMatch(text!)) {
                  return 'Caractere invalido!';
                }

                return null;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: _andar,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text("Andar"),
                border: OutlineInputBorder(),
              ),
              validator: (String? text) {
                if (text?.isEmpty ?? true) {
                  return 'Campo Obrigatório';
                }
                final exp = RegExp(r"^(?=.*\d)\d{1,}$");
                if (!exp.hasMatch(text!)) {
                  return 'Caractere invalido!';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: _numero,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text("Numero"),
                border: OutlineInputBorder(),
              ),
              validator: (String? text) {
                if (text?.isEmpty ?? true) {
                  return 'Campo Obrigatório';
                }
                final exp = RegExp(r"^(?=.*\d)\d{1,}$");
                if (!exp.hasMatch(text!)) {
                  return 'Caractere invalido!';
                }
                return null;
              },
            ),
            const Text(
              "Informações sobre Itens do espaço",
              style: TextStyle(fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _selecionarItensEspaco,
                      child: const Text(
                        "Selecionar Itens da sala",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(onPressed: _vincularGestorEspaco, child: const Text("Vincular Gestor ao Espaço")),
                  ),
                ],
              ),
            ),
            const Text(
              textAlign: TextAlign.center,
              "Informações sobre os detalhes do espaço",
              style: TextStyle(fontSize: 18),
            ),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: _capacidadePessoas,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text("Capacidade de Pessoas"),
                border: OutlineInputBorder(),
              ),
              validator: (String? text) {
                if (text?.isEmpty ?? true) {
                  return 'Campo Obrigatório';
                }
                final exp = RegExp(r"^(?=.*\d)\d{1,}$");
                if (!exp.hasMatch(text!)) {
                  return 'Caractere invalido!';
                }

                return null;
              },
            ),
            Row(
              children: [
                Expanded(
                  child: CheckboxListTile(
                    title: const Text("Acessibilidade"),
                    value: _isAcessivel,
                    onChanged: (newValue) {
                      setState(() {
                        _isAcessivel = newValue!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading, //  <-- leading Checkbox
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      const Text("Tipo de Espaço"),
                      DropdownButton<String>(
                        value: _tipoEspaco,
                        items: ['Sala', 'Laboratorio']
                            .map((e) => DropdownMenuItem<String>(
                                  value: e,
                                  child: Text(e),
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            _tipoEspaco = value!;
                          });
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
            ElevatedButton(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  if (_campus == Campus.CAMPUS) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Escolha um campus!')));
                  } else {
                    var usuario = await widget.controller.getUsuario();
                    var espaco = {
                      'id': '',
                      'numero': int.tryParse(_numero.text),
                      'localizacao': {'campus': _campus.text, 'pavilhao': _pavilhao.text, 'andar': int.tryParse(_andar.text), 'numero': int.tryParse(_andar.text)},
                      'capacidadePessoas': int.tryParse(_capacidadePessoas.text),
                      'equipamentoDisponivel': [],
                      'acessibilidade': _isAcessivel,
                      'agenda': {
                        'id': '1',
                        'gestorServico': usuario.toDto().toMap(),
                        'gestorReserva': usuario.toDto().toMap(),
                        'horarios': <Map<String, dynamic>>[
                          {
                            'inicio': 1681771260000,
                            'fim': 1681771260000,
                            'isReserved': false,
                            'solicitanteReserva': null,
                          }
                        ],
                      },
                      'servicos': [],
                      'image': ""
                    };
                    widget.controller.save(map: espaco);
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Salvo com sucesso!')));
                      Navigator.of(context).pushReplacementNamed('/home');
                    }
                  }
                }
              },
              child: const Text("Cadastrar"),
            )
          ],
        ),
      ),
    );
  }

  void _selecionarItensEspaco() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (BuildContext context, StateSetter setState) {
          return AlertDialog(
            title: const Text("Selecionar os itens que contem na sala"),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 100,
                    height: MediaQuery.of(context).size.height - 100,
                    child: ListView.builder(
                      itemCount: equipamentosSalaDeAula.length,
                      shrinkWrap: true,
                      itemBuilder: (context, int index) {
                        return CheckboxListTile(
                          title: Text(equipamentosSalaDeAula[index].texto),
                          value: equipamentosSalaDeAula[index].checked,
                          onChanged: (value) {
                            setState(() {
                              equipamentosSalaDeAula[index].checked = value!;
                            });
                            if (value!) {
                              itensSelecionados.add(equipamentosSalaDeAula[index]);
                            } else {
                              itensSelecionados.removeWhere((element) => element.texto == equipamentosSalaDeAula[index].texto);
                            }
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Fechar"),
              ),
            ],
          );
        });
      },
    );
  }

  void _vincularGestorEspaco() {
    final Future<List<UsuarioEntity>> professores = widget.controller.getGestores();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (BuildContext context, StateSetter setState) {
          return AlertDialog(
            title: const Text(
              "Vincular gestor ao espaço!",
              textAlign: TextAlign.center,
            ),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: FutureBuilder<List<UsuarioEntity>?>(
                        future: professores,
                        builder: (BuildContext context, AsyncSnapshot snapshot) {
                          if (snapshot.hasData) {
                            return ListView.builder(
                              itemCount: snapshot.data.length,
                              itemBuilder: (BuildContext context, int index) {
                                return InkWell(
                                    child: Card(
                                      child: ListTile(
                                        leading: const Icon(Icons.add_alert),
                                        title: Text("Nome: ${snapshot.data[index].nome}"),
                                        //subtitle: Text('Departamento: ${snapshot.data[index].departamento.sigla}'),
                                      ),
                                    ),
                                    onTap: () {});
                              },
                            );
                          } else if (snapshot.hasError) {
                            return Icon(Icons.error_outline);
                          } else {
                            return CircularProgressIndicator();
                          }
                        }),
                  )
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Fechar"),
              ),
            ],
          );
        });
      },
    );
  }
}

class CheckBoxModel {
  final String texto;
  late bool checked = false;

  CheckBoxModel({required this.texto});
}
