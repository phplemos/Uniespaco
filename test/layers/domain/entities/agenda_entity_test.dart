import 'package:flutter_test/flutter_test.dart';
import 'package:uniespaco/layers/domain/entities/agenda_entity.dart';
import 'package:uniespaco/layers/domain/entities/horario_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

main() {
  test('Testar se volta um objeto não nulo', () {
    //Criando variaveis mock
    var gestorReservaMock = UsuarioEntity(
        id: '1',
        nome: 'Pedro',
        email: 'teste@gmail.com',
        telefone: '73991295315',
        tipoUsuario: '', photoUrl: '');
    var gestorServicoMock = UsuarioEntity(
        id: '1',
        nome: 'Henrique',
        email: 'teste@gmail.com',
        telefone: '73991295315',
        tipoUsuario: '', photoUrl: '');
    List<HorarioEntity> horarios = [];
    //Criando instancia de Agenda
    var agenda = AgendaEntity(
        id: '1',
        gestorServico: gestorServicoMock,
        gestorReserva: gestorReservaMock,
        horarios: horarios);

    expect(agenda, isNotNull);
  });
  test('Testar se a agenda está com os horários vazios', () {
    //Criando variaveis mock
    var gestorReservaMock = UsuarioEntity(
        id: '1',
        nome: 'Pedro',
        email: 'teste@gmail.com',
        telefone: '73991295315',
        tipoUsuario: '', photoUrl: '');
    var gestorServicoMock = UsuarioEntity(
        id: '1',
        nome: 'Henrique',
        email: 'teste@gmail.com',
        telefone: '73991295315',
        tipoUsuario: '', photoUrl: '');
    List<HorarioEntity> horarios = [];
    //Criando instancia de Agenda
    var agenda = AgendaEntity(
        id: '1',
        gestorServico: gestorServicoMock,
        gestorReserva: gestorReservaMock,
        horarios: horarios);

    expect(agenda.horarios, isEmpty);
  });

  test('Testar se a agenda está com horário agendado', () {
    //Criando variaveis mock
    var gestorReservaMock = UsuarioEntity(
        id: '1',
        nome: 'Pedro',
        email: 'teste@gmail.com',
        telefone: '73991295315',
        tipoUsuario: '', photoUrl: '');
    var gestorServicoMock = UsuarioEntity(
        id: '1',
        nome: 'Henrique',
        email: 'teste@gmail.com',
        telefone: '73991295315',
        tipoUsuario: '', photoUrl: '');
    var reservado = HorarioEntity(
        inicio: DateTime(2020), fim: DateTime(2022), isReserved: true);
    List<HorarioEntity> horarios = [reservado];
    //Criando instancia de Agenda
    var agenda = AgendaEntity(
        id: '1',
        gestorServico: gestorServicoMock,
        gestorReserva: gestorReservaMock,
        horarios: horarios);

    expect(agenda.horarios[0].isReserved, true);
  });
}
