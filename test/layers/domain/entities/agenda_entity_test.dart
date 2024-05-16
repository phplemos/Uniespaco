import 'package:flutter_test/flutter_test.dart';
import 'package:uniespaco/layers/data/dto/agenda_dto.dart';
import 'package:uniespaco/layers/domain/entities/agenda_entity.dart';

main() {
  test('Testando se o fromDto funciona com parametros nulos', () {
    var agendaMock = AgendaEntity(id: '1', observacao: null, gestorReserva: null, gestorServico: null, horarios: []);
    var agendaDto = AgendaDto(id: '1', observacao: null, gestorReserva: null, gestorServico: null, horarios: []);
    expect(agendaDto.toEntity(), agendaMock);
  });
  test('Testando se o toDto funciona com parametros nulos', () {
    var agendaMock = AgendaEntity(id: '1', observacao: null, gestorReserva: null, gestorServico: null, horarios: []);
    var agendaDto = AgendaDto(id: '1', observacao: null, gestorReserva: null, gestorServico: null, horarios: []);
    expect(agendaDto.toEntity(), agendaMock);
  });
}
