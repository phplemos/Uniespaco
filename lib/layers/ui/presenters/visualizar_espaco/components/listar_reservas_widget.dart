// Copyright 2019 Aleksander Woźniak
// SPDX-License-Identifier: Apache-2.0
import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:uniespaco/layers/domain/entities/agenda_entity.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/horario_entity.dart';

class ListarReservasWidget extends StatefulWidget {
  final EspacoEntity espaco;
  final Map<DateTime, Map<String, AgendaEntity>> agenda;

  ListarReservasWidget({
    required this.agenda,
    required this.espaco,
  }) : super();

  @override
  _ListarReservasWidgetState createState() => _ListarReservasWidgetState();
}

class _ListarReservasWidgetState extends State<ListarReservasWidget> {
  final List<HorarioEntity> _horariosSelecionados = [];
  ValueNotifier<Map<String, bool>> horariosChecked = ValueNotifier({});
  LinkedHashMap<DateTime, Map<String, List<HorarioEntity>>>? _groupedReservas;
  late final ValueNotifier<String> _turnoSelecionado = ValueNotifier('manha');
  late DateTime _kToday;
  late DateTime _kFirstDay;
  late DateTime _kLastDay;
  final CalendarFormat _calendarFormat = CalendarFormat.month;
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode.toggledOff; // Can be toggled on/off by longpressing a date
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;
  final _formkey = GlobalKey<FormState>();
  DateFormat dateFormat = DateFormat('yyyy-MM-dd');

  @override
  void initState() {
    super.initState();
    _kToday = DateTime.now();
    _kFirstDay = DateTime(_kToday.year, _kToday.month - 3, _kToday.day);
    _kLastDay = DateTime(_kToday.year, _kToday.month + 3, _kToday.day);
    final formatedDate = DateFormat('yyyy-MM-dd').format(_focusedDay);
    _selectedDay = dateFormat.parse(formatedDate);
    _groupReservas(widget.agenda);
    horariosChecked.addListener(() {});
  }

  @override
  void dispose() {
    //_selectedReservas.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TableCalendar<HorarioEntity>(
          locale: 'pt_BR',
          firstDay: _kFirstDay,
          lastDay: _kLastDay,
          focusedDay: _focusedDay,
          selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
          rangeStartDay: _rangeStart,
          rangeEndDay: _rangeEnd,
          calendarFormat: _calendarFormat,
          rangeSelectionMode: _rangeSelectionMode,
          eventLoader: _getReservasForDay,
          startingDayOfWeek: StartingDayOfWeek.monday,
          calendarStyle: const CalendarStyle(
            selectedDecoration: BoxDecoration(
              color: Colors.blueAccent,
              shape: BoxShape.rectangle,
            ),
            //Style do texto selecionado
            selectedTextStyle: TextStyle(color: Color.fromRGBO(238, 230, 226, 1)),
            //Cor do dia de hoje
            todayDecoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.rectangle,
            ),
            //Texto do dia de hoje
            todayTextStyle: TextStyle(color: Colors.black54),
            outsideDaysVisible: false,
          ),
          availableCalendarFormats: const {
            CalendarFormat.month: 'mês',
            CalendarFormat.twoWeeks: '2 Semanas',
            CalendarFormat.week: 'Semana',
          },
          headerStyle: const HeaderStyle(
            titleCentered: true,
            formatButtonVisible: false,
            formatButtonShowsNext: false,
          ),
          calendarBuilders: CalendarBuilders(
            dowBuilder: (context, day) {
              String text;
              if (day.weekday == DateTime.sunday) {
                text = 'dom';
              } else if (day.weekday == DateTime.monday) {
                text = 'seg';
              } else if (day.weekday == DateTime.tuesday) {
                text = 'ter';
              } else if (day.weekday == DateTime.wednesday) {
                text = 'qua';
              } else if (day.weekday == DateTime.thursday) {
                text = 'qui';
              } else if (day.weekday == DateTime.friday) {
                text = 'sex';
              } else if (day.weekday == DateTime.saturday) {
                text = 'sab';
              } else {
                text = 'err';
              }
              return Center(
                child: Text(
                  text,
                  style: const TextStyle(color: Colors.blueGrey),
                ),
              );
            },
            markerBuilder: (context, day, horarios) {
              bool hasHorarioFree = horarios.any((element) => element.isReserved == false);
              if (hasHorarioFree) {
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                        bottom: 2.0,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: const BoxDecoration(color: Colors.green, shape: BoxShape.rectangle, borderRadius: BorderRadius.all(Radius.circular(15))),
                        ))
                  ],
                );
              } else {
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                        bottom: 2.0,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: const BoxDecoration(color: Colors.red, shape: BoxShape.rectangle, borderRadius: BorderRadius.all(Radius.circular(15))),
                        ))
                  ],
                );
              }
            },
          ),
          onDaySelected: _onDaySelected,
          onRangeSelected: _onRangeSelected,
          onPageChanged: (focusedDay) {
            _focusedDay = focusedDay;
          },
        ),
        const SizedBox(height: 16.0),
        ListTile(
          titleAlignment: ListTileTitleAlignment.center,
          title: const Text('Selecione o turno'),
          subtitle: DropdownButton(
            value: _turnoSelecionado.value,
            items: ['manha', 'tarde', 'noite'].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
            onChanged: (value) {
              if (value != _turnoSelecionado.value) {
                setState(() {
                  _turnoSelecionado.value = value!;
                });
              }
            },
          ),
        ),
        _getReservasForDay(_selectedDay!).isNotEmpty
            ? SizedBox(
                height: MediaQuery.of(context).size.height - 200,
                child: GridView.count(
                  crossAxisCount: 1,
                  childAspectRatio: 30 / 9,
                  children: [
                    ..._getReservasForDay(_selectedDay!).map(
                      (horario) {
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
                        return Container(
                          decoration: BoxDecoration(
                            color: horario.isReserved ? Colors.redAccent : Colors.green,
                          ),
                          child: CheckboxListTile(
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
                          ),
                        );
                      },
                    )
                  ],
                ),
              )
            : const Card(
                color: Colors.redAccent,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Fora do período de reserva",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
      ],
    );
  }

  _solicitarReserva() {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) => SingleChildScrollView(
        child: AlertDialog(
          title: const Text(
            'Solicitar Reserva',
            textAlign: TextAlign.center,
          ),
          content: _formularioSolicitarReserva(context),
          actions: [ElevatedButton(onPressed: () => Navigator.pop(context, 'Sair'), child: const Text('Sair'))],
        ),
      ),
    );
  }

  Widget _formularioSolicitarReserva(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
          key: _formkey,
          child: Column(
            children: [
              Text('Reserva para o dia: ${_selectedDay?.day}'),
              const Divider(),
              Text('Sala: ${widget.espaco.localizacao.numero}, Modulo: ${widget.espaco.localizacao.pavilhao}'),
              TextFormField(
                decoration: const InputDecoration(label: Text('Descrição')),
              ),
              //DropdownButton(items: horarios, onChanged: onChanged)
            ],
          )),
    );
  }

  List<HorarioEntity> _getReservasForDay(DateTime day) {
    final formatedDate = DateFormat('yyyy-MM-dd').format(day);
    return _groupedReservas?[dateFormat.parse(formatedDate)]?[_turnoSelecionado.value] ?? [];
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        final formatedDate = DateFormat('yyyy-MM-dd').format(selectedDay);
        _selectedDay = dateFormat.parse(formatedDate);
        _focusedDay = focusedDay;
        _rangeStart = null; // Important to clean those
        _rangeEnd = null;
        _rangeSelectionMode = RangeSelectionMode.toggledOff;
      });
    }
  }

  void _onRangeSelected(DateTime? start, DateTime? end, DateTime focusedDay) {
    setState(() {
      _selectedDay = null;
      _focusedDay = focusedDay;
      _rangeStart = start;
      _rangeEnd = end;
      _rangeSelectionMode = RangeSelectionMode.toggledOn;
    });

    // `start` or `end` could be null
    // if (start != null && end != null) {
    //   _selectedReservas.value = _getReservasForRange(start, end);
    // } else if (start != null) {
    //   _selectedReservas.value = _getReservasForDay(start);
    // } else if (end != null) {
    //   _selectedReservas.value = _getReservasForDay(end);
    //}
  }

  void _groupReservas(Map<DateTime, Map<String, AgendaEntity>> agenda) {
    _groupedReservas = LinkedHashMap(equals: isSameDay, hashCode: getHashCode);
    agenda.entries.forEach((element) {
      DateTime date = DateTime.utc(element.key.year, element.key.month, element.key.day, 12);
      if (_groupedReservas![date] == null) _groupedReservas![date] = {};
      _groupedReservas![date] = element.value.map((key, value) => MapEntry(key, value.horarios));
    });
  }

  int getHashCode(DateTime key) {
    return key.day * 100000 + key.month * 10002 + key.year;
  }
}

// widget.agenda.containsKey(_selectedDay)
//     ? SizedBox(
//         height: MediaQuery.of(context).size.height - 400,
//         child: ListView.builder(
//           itemCount: widget.agenda[_selectedDay]![turnoSelecionado.value]!.horarios.length,
//           itemBuilder: (BuildContext context, int index) {
//             final inicio = widget.agenda[_selectedDay]?[turnoSelecionado.value]?.horarios[index].inicio;
//             final fim = widget.agenda[_selectedDay]?[turnoSelecionado.value]?.horarios[index].fim;
//             final isReserved = widget.agenda[_selectedDay]?[turnoSelecionado.value]?.horarios[index].isReserved;
//             return InkWell(
//               child: Card(
//                 color: isReserved! ? Colors.red : Colors.lightGreen,
//                 child: ListTile(
//                   leading: const Icon(
//                     Icons.access_time,
//                     color: Colors.white,
//                   ),
//                   title: Text(
//                     "Inicio: $inicio",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                   subtitle: Text("fim: $fim", style: TextStyle(color: Colors.white)),
//                 ),
//               ),
//               onTap: () {},
//             );
//           },
//         ),
//       )
//     : const Card(
//         color: Colors.redAccent,
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text("Fora do período de reserva", style: TextStyle(color: Colors.white)),
//         ),
//       ),
