import 'package:flutter/material.dart';
import 'package:uniespaco/core/horario_list_initiializer/agenda_initializer.dart';
import 'package:uniespaco/layers/domain/entities/agenda_entity.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/horario_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/usecases/listar_professores_cadastrados_usecase/listar_professores_cadastrados_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_setores_cadastrados_usecase/listar_setores_cadastrados_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_espacos_por_campus_usecase/listar_espacos_por_campus.dart';
import 'package:uniespaco/layers/domain/usecases/listar_espacos_usecase/listar_espacos_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/ver_informacao_do_usuario_usecase/ver_informacao_do_usuario_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/vincular_gestores_ao_espaco_usecase/vincular_gestores_ao_espaco_usecase.dart';

abstract class VincularGestorReservaAoEspacoController extends ChangeNotifier {
  Campus campus = Campus.CAMPUS;

  String? _turno;

  String? get turno => _turno;

  set turno(String? turno) {
    _turno = turno;
    notifyListeners();
  }

  String? diaSemana;

  String? pavilhao;

  EspacoEntity? _espaco;

  set espaco(EspacoEntity? newEspaco) {
    _espaco = newEspaco;
    notifyListeners();
  }

  EspacoEntity? get espaco => _espaco;

  UsuarioEntity? _gestorReserva;

  set gestorReserva(UsuarioEntity? gestor) {
    _gestorReserva = gestor;
    notifyListeners();
  }

  UsuarioEntity? get gestorReserva => _gestorReserva;


  Map<String, AgendaEntity>? _agendaTurno;

  set agendaTurno(Map<String, AgendaEntity>? agenda) {
    _agendaTurno = agenda;
    notifyListeners();
  }

  Map<String, AgendaEntity>? get agendaTurno => _agendaTurno;


  Future<UsuarioEntity?> getUsuario();

  Future<List<EspacoEntity?>> getEspacos({required Campus campus});

  Future<List<UsuarioEntity?>> getGestores();

  Future<bool> vincularGestores({required Map<String, bool> horariosSelecionados});

  List<HorarioEntity> getAllHorarios();

  void logout() {}
}

class VincularGestorReservaAoEspacoControllerImpl extends VincularGestorReservaAoEspacoController {
  final ListarEspacosUseCase listarTodosEspacosUseCase;
  final ListarSetoresCadastradosUseCase listarSetoresCadastradosUseCase;
  final ListarProfessoresCadastradosUseCase listarProfessoresCadastradosUseCase;
  final VerInformacaoDoUsuarioUseCase verInformacaoDoUsuarioUseCase;
  final ListarEspacosPorCampusUseCase listarTodosEspacosPorCampusUseCase;
  final VincularGestoresAoEspacoUsecase vincularGestoresAoEspacoUsecase;

  VincularGestorReservaAoEspacoControllerImpl({
    required this.listarTodosEspacosUseCase,
    required this.listarSetoresCadastradosUseCase,
    required this.listarProfessoresCadastradosUseCase,
    required this.verInformacaoDoUsuarioUseCase,
    required this.listarTodosEspacosPorCampusUseCase,
    required this.vincularGestoresAoEspacoUsecase,
  });

  @override
  Future<List<UsuarioEntity?>> getGestores() async {
    List<UsuarioEntity?> gestores = [];
    var responseSetores = await listarSetoresCadastradosUseCase();
    var responseProfessores = await listarProfessoresCadastradosUseCase();
    responseSetores.fold((error) => [], (success) => gestores.addAll(success));
    responseProfessores.fold((error) => [], (success) => gestores.addAll(success));
    return gestores;
  }

  @override
  Future<UsuarioEntity?> getUsuario() async {
    var response = await verInformacaoDoUsuarioUseCase();
    return response.fold((error) => throw Exception('Erro ao recuperar usuario'), (success) => success);
  }

  @override
  Future<List<EspacoEntity?>> getEspacos({required Campus campus}) async {
    final response = await listarTodosEspacosPorCampusUseCase(campus: campus);
    return response.fold((error) => [], (success) => success);
  }

  @override
  Future<bool> vincularGestores({required Map<String, bool> horariosSelecionados}) async {
    final agenda = espaco!.agenda;
    final diasDaSemana = {
      'Segunda': DateTime.monday,
      'Terça': DateTime.tuesday,
      'Quarta': DateTime.wednesday,
      'Quinta': DateTime.thursday,
      'Sexta': DateTime.friday,
      'Sabado': DateTime.saturday,
      'Domingo': DateTime.sunday,
    };
    var diaComparator = diasDaSemana[diaSemana];
    List<String> horariosManha = [];
    List<String> horariosTarde = [];
    List<String> horariosNoite = [];
    horariosSelecionados.forEach((key, value) {
      if (key == '7:30' || key == '9:10' || key == '10:10' || key == '11:00' || key == '11:80') {
        if (value) {
          horariosManha.add(key);
        }
      } else if (key == '13:10' || key == '14:00' || key == '14:50' || key == '15:50' || key == '16:40' || key == '17:30') {
        if (value) {
          horariosTarde.add(key);
        }
      } else {
        if (value) {
          horariosNoite.add(key);
        }
      }
    });
    agenda.updateAll((dia, agenda) {
      // Verifica se o dia da chave e correspondente ao dia selecionado.
      if (dia.weekday == diaComparator) {
        // Verifica se há seleção nos horarios da manha
        if (horariosManha.isNotEmpty) {
          // Atualiza o valor da chave da noite que tem uma agendaEntity como valor
          agenda.update('manha', (agendaTurno) {
            // Atualiza a lista de horarios e coloca o id do gestor caso usuario tenha marcado checkbox
            agendaTurno.horarios = agendaTurno.horarios.map((horario) {
              if (horariosSelecionados[horario.inicio]!) {
                // Atribuindo gestor ao horario
                horario.gestorReserva = _gestorReserva!.id;
                return horario;
              }
              return horario;
            }).toList();
            return agendaTurno;
          });
        }
        if (horariosTarde.isNotEmpty) {
          // Atualiza o valor da chave da noite que tem uma agendaEntity como valor
          agenda.update('tarde', (agendaTurno) {
            // Atualiza a lista de horarios e coloca o id do gestor caso usuario tenha marcado checkbox
            agendaTurno.horarios = agendaTurno.horarios.map((horario) {
              if (horariosSelecionados[horario.inicio]!) {
                // Atribuindo gestor ao horario
                horario.gestorReserva = _gestorReserva!.id;
                return horario;
              }
              return horario;
            }).toList();
            return agendaTurno;
          });
        }
        if (horariosNoite.isNotEmpty) {
          // Atualiza o valor da chave da noite que tem uma agendaEntity como valor
          agenda.update('noite', (agendaTurno) {
            // Atualiza a lista de horarios e coloca o id do gestor caso usuario tenha marcado checkbox
            agendaTurno.horarios = agendaTurno.horarios.map((horario) {
              if (horariosSelecionados[horario.inicio]!) {
                // Atribuindo gestor ao horario
                horario.gestorReserva = _gestorReserva!.id;
                return horario;
              }
              return horario;
            }).toList();
            return agendaTurno;
          });
        }
      }
      return agenda;
    });
    final response = await vincularGestoresAoEspacoUsecase(espacoEntity: espaco!, newAgenda: agenda);
    return response.fold((error) => false, (success) => true);
  }

  @override
  List<HorarioEntity> getAllHorarios() {
    List<HorarioEntity> horarios = [];
    horarios.addAll(AgendaInitializer.getManha().map((agendaDto) => agendaDto.toEntity()));
    horarios.addAll(AgendaInitializer.getTarde().map((agendaDto) => agendaDto.toEntity()));
    horarios.addAll(AgendaInitializer.getNoite().map((agendaDto) => agendaDto.toEntity()));
    return horarios;
  }
}
