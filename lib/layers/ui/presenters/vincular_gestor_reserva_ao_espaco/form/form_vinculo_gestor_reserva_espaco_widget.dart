import 'package:flutter/material.dart';
import 'package:uniespaco/core/horario_list_initiializer/agenda_initializer.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/horario_entity.dart';
import 'package:uniespaco/layers/ui/presenters/vincular_gestor_reserva_ao_espaco/vincular_gestor_reserva_ao_espaco_controller.dart';

class FormVinculoGestorReservaEspacoWidget extends StatefulWidget {
  final VincularGestorReservaAoEspacoController controller;

  const FormVinculoGestorReservaEspacoWidget({super.key, required this.controller});

  @override
  State<FormVinculoGestorReservaEspacoWidget> createState() => _FormVinculoGestorReservaEspacoWidgetState();
}

class _FormVinculoGestorReservaEspacoWidgetState extends State<FormVinculoGestorReservaEspacoWidget> {
  ValueNotifier<Map<String, bool>> horariosChecked = ValueNotifier({});
  final List<HorarioEntity> _horariosSelecionados = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Vincular Gestor Reserva ao espaço'),
        const Divider(),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                _campusDropdownMenu(context),
                widget.controller.campus != Campus.CAMPUS ? _pavilhaoDropDownMenu(context) : Container(),
                widget.controller.pavilhao != null ? _espacoPorNumeroDropdownMenu(context) : Container(),
                widget.controller.espaco != null ? _gestorReservaDropdownMenu(context) : Container(),
                widget.controller.gestorReserva != null ? _diaSemanaDropdownMenu(context) : Container(),
                widget.controller.diaSemana != null ? _turnosDropdownMenu(context) : Container(),
                widget.controller.turno != null ? _seletorDeHorarios(context) : Container(),
                _horariosSelecionados.isNotEmpty
                    ? ElevatedButton(
                        onPressed: () {
                          vincularGestores(context);
                        },
                        child: const Text('Vincular'),
                      )
                    : Container()
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _campusDropdownMenu(BuildContext context) {
    return Column(
      children: [
        const Text('Selecionar Campus'),
        DropdownButton(
            isExpanded: true,
            hint: Text(widget.controller.campus.text!),
            items: Campus.values
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e.text!),
                    ))
                .toList(),
            onChanged: (value) {
              setState(() {
                if (value! != widget.controller.campus) {
                  widget.controller.pavilhao = null;
                  widget.controller.espaco = null;
                  widget.controller.gestorReserva = null;
                  widget.controller.diaSemana = null;
                  widget.controller.turno = null;
                  _horariosSelecionados.clear();
                }
                widget.controller.campus = value;
              });
            }),
      ],
    );
  }

  Widget _pavilhaoDropDownMenu(BuildContext context) {
    final espacos = widget.controller.getEspacos(campus: widget.controller.campus);
    return Column(
      children: [
        const Text('Selecionar Pavilhão'),
        FutureBuilder(
          future: espacos,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return DropdownButton(
                  isExpanded: true,
                  items: const [
                    DropdownMenuItem(
                      child: Text('Erro ao recuperar'),
                    ),
                  ],
                  onChanged: (value) {});
            } else if (snapshot.hasData) {
              List<String> modulos = snapshot.data!.map((espaco) => espaco!.localizacao.pavilhao).toList();
              return DropdownButton(
                  isExpanded: true,
                  hint: Text('Modulo: ${widget.controller.pavilhao ?? ' ... '}'),
                  items: modulos
                      .map((e) => DropdownMenuItem<String>(
                            value: e,
                            child: Text('Pavilhao: $e'),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      if (value! != widget.controller.pavilhao) {
                        widget.controller.espaco = null;
                        widget.controller.gestorReserva = null;
                        widget.controller.diaSemana = null;
                        widget.controller.turno = null;
                        _horariosSelecionados.clear();
                        horariosChecked.value.clear();
                      }
                      widget.controller.pavilhao = value;
                    });
                  });
            }
            return Container();
          },
        ),
      ],
    );
  }

  Widget _espacoPorNumeroDropdownMenu(BuildContext context) {
    final espacos = widget.controller.getEspacos(campus: widget.controller.campus);
    return Column(
      children: [
        const Text('Selecionar Espaço'),
        FutureBuilder(
          future: espacos,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return DropdownButton(
                  isExpanded: true,
                  items: const [
                    DropdownMenuItem(
                      child: Text('Erro ao recuperar'),
                    ),
                  ],
                  onChanged: (value) {});
            } else if (snapshot.hasData) {
              List<EspacoEntity?> espacosPorNumero = snapshot.data!.where((espaco) => espaco!.localizacao.pavilhao == widget.controller.pavilhao).toList();

              return DropdownButton(
                  isExpanded: true,
                  hint: Text('Numero: ${widget.controller.espaco?.localizacao.numero ?? ' ... '}'),
                  items: espacosPorNumero
                      .map((e) => DropdownMenuItem<EspacoEntity>(
                            value: e,
                            child: Text('Numero: ${e!.localizacao.numero}'),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      if (value! != widget.controller.espaco) {
                        widget.controller.gestorReserva = null;
                        widget.controller.diaSemana = null;
                        widget.controller.turno = null;
                        _horariosSelecionados.clear();
                        horariosChecked.value.clear();
                      }
                      widget.controller.espaco = value;
                    });
                  });
            }
            return Container();
          },
        ),
      ],
    );
  }

  Widget _gestorReservaDropdownMenu(BuildContext context) {
    final gestores = widget.controller.getGestores();
    return Column(
      children: [
        const Text('Selecionar Gestor De Reserva'),
        FutureBuilder(
          future: gestores,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return DropdownButton(
                  isExpanded: true,
                  items: const [
                    DropdownMenuItem(
                      child: Text('Erro ao recuperar'),
                    ),
                  ],
                  onChanged: (value) {});
            } else if (snapshot.hasData) {
              return DropdownButton(
                  isExpanded: true,
                  hint: Text(widget.controller.gestorReserva?.nome ?? 'Gestor de Reserva'),
                  items: snapshot.data!
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text('Nome: ${e!.nome}, Email: ${e.email}'),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      if (value! != widget.controller.gestorReserva) {
                        widget.controller.diaSemana = null;
                        _horariosSelecionados.clear();
                        horariosChecked.value.clear();
                      }
                      widget.controller.gestorReserva = value;
                    });
                  });
            }
            return Container();
          },
        )
      ],
    );
  }

  Widget _diaSemanaDropdownMenu(BuildContext context) {
    final diasSemana = [
      'Segunda',
      'Terça',
      'Quarta',
      'Quinta',
      'Sexta',
      'Sabado',
      'Domingo',
    ];
    return Column(
      children: [
        const Text('Selecionar o dia da semana'),
        DropdownButton(
            isExpanded: true,
            hint: Text(widget.controller.diaSemana ?? 'Dia da Semana'),
            items: diasSemana
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ))
                .toList(),
            onChanged: (value) {
              setState(() {
                if (value! != widget.controller.diaSemana) {
                  widget.controller.turno = null;
                  _horariosSelecionados.clear();
                  horariosChecked.value.clear();
                }
                widget.controller.diaSemana = value;
              });
            }),
      ],
    );
  }

  Widget _turnosDropdownMenu(BuildContext context) {
    return Column(
      children: [
        const Text('Selecionar Turno'),
        DropdownButton(
            isExpanded: true,
            hint: Text(widget.controller.turno ?? 'Selecione o turno'),
            items: ['manha', 'tarde', 'noite']
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ))
                .toList(),
            onChanged: (value) {
              setState(() {
                widget.controller.turno = value;
              });
            }),
      ],
    );
  }

  Widget _seletorDeHorarios(BuildContext context) {
    List<HorarioEntity> horariosPorDiaDaSemana = [];
    switch (widget.controller.turno) {
      case 'manha':
        horariosPorDiaDaSemana.addAll(AgendaInitializer.getManha().map((horarios) => horarios.toEntity()).toList());
        break;
      case 'tarde':
        horariosPorDiaDaSemana.addAll(AgendaInitializer.getTarde().map((horarios) => horarios.toEntity()).toList());
        break;
      case 'noite':
        horariosPorDiaDaSemana.addAll(AgendaInitializer.getNoite().map((horarios) => horarios.toEntity()).toList());
        break;
      default:
    }
    return SizedBox(
      height: MediaQuery.of(context).size.height - 200,
      child: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: 30 / 9,
        children: [
          ...horariosPorDiaDaSemana.map(
            (horario) {
              //TODO: VERIFIICAR O PROBLEMA DE QUE NÃO ESTÁ REMOVENDO OS HORARIOS DA LISTA CASO FALSO
              if (!horariosChecked.value.containsKey(horario.inicio)) {
                horariosChecked.value[horario.inicio] = false;
                return CheckboxListTile(
                  value: horariosChecked.value[horario.inicio]!,
                  selected: horariosChecked.value[horario.inicio]!,
                  onChanged: (bool? value) {
                    setState(() {
                      horariosChecked.value.update(horario.inicio, (oldValue) => value!);
                      _horariosSelecionados.add(horario);
                    });
                  },
                  title: Text(
                    "Inicio: ${horario.inicio}",
                    style: const TextStyle(color: Colors.black),
                  ),
                  subtitle: Text("fim: ${horario.fim}", style: const TextStyle(color: Colors.black)),
                );
              }
              return CheckboxListTile(
                activeColor: Colors.blueAccent,
                value: horariosChecked.value[horario.inicio]!,
                selected: horariosChecked.value[horario.inicio]!,
                onChanged: (bool? value) {
                  setState(() {
                    horariosChecked.value.update(horario.inicio, (oldValue) => value!);
                    _horariosSelecionados.add(horario);
                  });
                },
                title: Text(
                  "Inicio: ${horario.inicio}",
                  style: const TextStyle(color: Colors.black),
                ),
                subtitle: Text("fim: ${horario.fim}", style: const TextStyle(color: Colors.black)),
              );
            },
          )
        ],
      ),
    );
  }

  void vincularGestores(BuildContext context) async {
    var response = await widget.controller.vincularGestores(horariosSelecionados: horariosChecked.value);
    context.mounted ? ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Gestores vinculados com sucesso!'))) : null;
    if (response) {
      if (context.mounted) {
        Navigator.of(context).pushReplacementNamed('/home');
        showDialog<void>(
          context: context,
          barrierDismissible: false, // user must tap button!
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Deseja vincular outro gestor de servico?'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    ElevatedButton(
                      child: const Text('Vincular'),
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/vincular_gestor_servico_ao_espaco');
                      },
                    )
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  child: const Text('Sair'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    }
  }
}
