// Teste da entidade Agenda

import 'package:flutter_test/flutter_test.dart';
import 'package:uniespaco/layers/domain/entities/agenda_entity.dart';
import 'package:uniespaco/layers/domain/entities/horario_entity.dart';

main() {

  test('Valida criação de entidade com todos atributos', () {
    var mock = AgendaEntity(observacao: 'Mock', horarios: [
      HorarioEntity(inicio: '7:30', fim: '9:10', gestorReserva: '123', gestorServico: '321'),
    ]);

    expect(
        AgendaEntity(observacao: 'Mock', horarios: [
          HorarioEntity(inicio: '7:30', fim: '9:10', gestorReserva: '123', gestorServico: '321'),
        ]),
        mock);
  });

  test('Valida criação de entidade sem observacao', () {
    var mock = AgendaEntity(horarios: [
      HorarioEntity(inicio: '7:30', fim: '9:10', gestorReserva: '123', gestorServico: '321'),
    ]);

    expect(
        AgendaEntity(horarios: [
          HorarioEntity(inicio: '7:30', fim: '9:10', gestorReserva: '123', gestorServico: '321'),
        ]),
        mock);
  });
}
