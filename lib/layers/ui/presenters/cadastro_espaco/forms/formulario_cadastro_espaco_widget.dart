import 'package:flutter/material.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/ui/presenters/cadastro_espaco/cadastro_espaco_controller.dart';
import 'package:uuid/uuid.dart';

class FormularioCadastroEspacoWidget extends StatefulWidget {
  const FormularioCadastroEspacoWidget({super.key, required this.controller});
  final CadastroEspacoController controller;

  @override
  State<FormularioCadastroEspacoWidget> createState() => _FormularioCadastroEspacoWidgetState();
}

class _FormularioCadastroEspacoWidgetState extends State<FormularioCadastroEspacoWidget> {
  final _formKey = GlobalKey<FormState>();
  Campus campus = Campus.CAMPUS;
  List<CheckBoxModel> itensSelecionados = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              "Cadastrar Espaço",
            ),
            const Divider(),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DropdownButton<Campus>(
                    isExpanded: true,
                      value: campus,
                      onChanged: (newValue) {
                        setState(() {
                          if (newValue != null) {
                            campus = newValue;
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
              controller: widget.controller.pavilhao,
              decoration: const InputDecoration(
                label: Text("Pavilhão"),
                border: OutlineInputBorder(),
              ),
              validator: widget.controller.validatorText,
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: widget.controller.andar,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text("Andar"),
                border: OutlineInputBorder(),
              ),
              validator: widget.controller.validatorNumber,
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: widget.controller.numero,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text("Numero"),
                border: OutlineInputBorder(),
              ),
              validator: widget.controller.validatorNumber,
            ),
            SizedBox(height: 20,),
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
              controller: widget.controller.capacidadePessoas,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text("Capacidade de Pessoas"),
                border: OutlineInputBorder(),
              ),
              validator: widget.controller.validatorNumber,
            ),
            Row(
              children: [
                Expanded(
                  child: CheckboxListTile(
                    title: const Text("Acessibilidade"),
                    value: widget.controller.isAcessivel,
                    onChanged: (newValue) {
                      setState(() {
                        widget.controller.isAcessivel = newValue!;
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
                        value: widget.controller.tipoEspaco,
                        items: ['Sala', 'Laboratorio']
                            .map((e) => DropdownMenuItem<String>(
                                  value: e,
                                  child: Text(e),
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            widget.controller.tipoEspaco = value!;
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
                  if (campus == Campus.CAMPUS) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Escolha um campus!')));
                  } else {
                    final Map<String, dynamic> espaco = {
                      'id': const Uuid().v4(),
                      'localizacao': {'campus': campus.text, 'pavilhao': widget.controller.pavilhao.text, 'andar': int.tryParse(widget.controller.andar.text), 'numero': int.tryParse(widget.controller.numero.text)},
                      'capacidadePessoas': int.tryParse(widget.controller.capacidadePessoas.text),
                      'equipamentoDisponivel': [],
                      'acessibilidade': widget.controller.isAcessivel,
                      'servicos': [],
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
          final equipamentos = widget.controller.listaEquipamentos;
          return AlertDialog(
            title: const Text("Selecionar os itens que contem na sala"),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 100,
                    height: MediaQuery.of(context).size.height - 100,
                    child: ListView.builder(
                      itemCount: equipamentos.length,
                      shrinkWrap: true,
                      itemBuilder: (context, int index) {
                        return CheckboxListTile(
                          title: Text(equipamentos[index].texto),
                          value: equipamentos[index].checked,
                          onChanged: (value) {
                            setState(() {
                              equipamentos[index].checked = value!;
                            });
                            if (value!) {
                              itensSelecionados.add(equipamentos[index]);
                            } else {
                              itensSelecionados.removeWhere((element) => element.texto == equipamentos[index].texto);
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
