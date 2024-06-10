import 'package:flutter_test/flutter_test.dart';
import 'package:uniespaco/layers/data/dto/agenda_dto.dart';
import 'package:uniespaco/layers/data/dto/usuario_dto.dart';

main() {
  test('Testando se o fromMap funciona com todos parametros nulos', () {
    var agenda = {
      'id': '1',
      'gestorServico': null,
      'gestorReserva': null,
      'horarios': <Map<String, dynamic>>[],
    };
    var agendaDto = AgendaDto.fromMap(agenda);
    expect(agendaDto, isInstanceOf<AgendaDto>());
  });

  test('Testando se o toMap funciona com todos parametros nulos', () {
    var agenda = {
      'id': '1',
      'observacao': null,
      'gestorServico': null,
      'gestorReserva': null,
      'horarios': <Map<String, dynamic>>[],
    };
    var agendaDto = AgendaDto.fromMap(agenda);
    expect(agendaDto.toMap(), agenda);
  });
  test('Testando se o toMap funciona com todos parametros com conversao do gestor de servico e reserva', () {
    var usuario = UsuarioDto(id: '1', nome: 'joao', email: 'joao@gmail.com', telefone: '77995566444', photoUrl: 'photoUrl', tipoUsuario: 'professor', espacosFavoritados: []);
    var agendaMock = AgendaDto(id: '1', observacao: null, gestorReserva: usuario, gestorServico: usuario, horarios: []);
    var agendaTeste = {
      'id': '1',
      'observacao': null,
      'gestorServico': {'id': '1', 'nome': 'joao', 'email': 'joao@gmail.com', 'telefone': '77995566444', 'photoUrl': 'photoUrl', 'tipoUsuario': 'professor'},
      'gestorReserva': {'id': '1', 'nome': 'joao', 'email': 'joao@gmail.com', 'telefone': '77995566444', 'photoUrl': 'photoUrl', 'tipoUsuario': 'professor'},
      'horarios': [],
    };
    var agendaDto = AgendaDto.fromMap(agendaTeste);
    expect(agendaDto.toMap(), agendaMock.toMap());
  });
  test('Testando se o fromMap funciona com todos parametros com conversao do gestor de servico e reserva', () {
    var usuario = UsuarioDto(id: '1', nome: 'joao', email: 'joao@gmail.com', telefone: '77995566444', photoUrl: 'photoUrl', tipoUsuario: 'professor', espacosFavoritados: []);
    var agendaMock = AgendaDto(id: '1', observacao: null, gestorReserva: usuario, gestorServico: usuario, horarios: []);
    var agendaTeste = {
      'id': '1',
      'observacao': null,
      'gestorServico': {'id': '1', 'nome': 'joao', 'email': 'joao@gmail.com', 'telefone': '77995566444', 'photoUrl': 'photoUrl', 'tipoUsuario': 'professor'},
      'gestorReserva': {'id': '1', 'nome': 'joao', 'email': 'joao@gmail.com', 'telefone': '77995566444', 'photoUrl': 'photoUrl', 'tipoUsuario': 'professor'},
      'horarios': [],
    };
    var agendaDto = AgendaDto.fromMap(agendaTeste);
    expect(agendaDto, agendaMock);
  });
    test('Testando se o fromMap funciona com todos parametros com conversao do gestor de servico e reserva', () {
    var usuario = UsuarioDto(id: '1', nome: 'joao', email: 'joao@gmail.com', telefone: '77995566444', photoUrl: 'photoUrl', tipoUsuario: 'professor', espacosFavoritados: []);
    var agendaMock = AgendaDto(id: '1', observacao: null, gestorReserva: usuario, gestorServico: usuario, horarios: []);
    var agendaTeste = {
      'id': '1',
      'observacao': null,
      'gestorServico': {'id': '1', 'nome': 'joao', 'email': 'joao@gmail.com', 'telefone': '77995566444', 'photoUrl': 'photoUrl', 'tipoUsuario': 'professor'},
      'gestorReserva': {'id': '1', 'nome': 'joao', 'email': 'joao@gmail.com', 'telefone': '77995566444', 'photoUrl': 'photoUrl', 'tipoUsuario': 'professor'},
      'horarios': [],
    };
    var agendaDto = AgendaDto.fromMap(agendaTeste);
    expect(agendaDto, agendaMock);
  });
}
