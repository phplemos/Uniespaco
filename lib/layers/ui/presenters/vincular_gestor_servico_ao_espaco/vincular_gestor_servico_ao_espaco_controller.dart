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

abstract class VincularGestorServicoAoEspacoController extends ChangeNotifier {
  Campus campus = Campus.CAMPUS;

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

  UsuarioEntity? _gestorServico;

  set gestorServico(UsuarioEntity? gestor) {
    _gestorServico = gestor;
    notifyListeners();
  }

  Map<String, AgendaEntity>? _agendaTurno;

  set agendaTurno(Map<String, AgendaEntity>? agenda) {
    _agendaTurno = agenda;
    notifyListeners();
  }

  Map<String, AgendaEntity>? get agendaTurno => _agendaTurno;

  UsuarioEntity? get gestorServico => _gestorServico;

  Future<UsuarioEntity?> getUsuario();

  Future<List<EspacoEntity?>> getEspacos({required Campus campus});

  Future<List<UsuarioEntity?>> getGestores();

  Future<bool> vincularGestores({required EspacoEntity espacoEntity, required Map<String, Map<String, AgendaEntity>> newAgenda});

  List<HorarioEntity> getAllHorarios();

  void logout() {}
}

class VincularGestorServicoAoEspacoControllerImpl extends VincularGestorServicoAoEspacoController {
  final ListarEspacosUseCase listarTodosEspacosUseCase;
  final ListarSetoresCadastradosUseCase listarSetoresCadastradosUseCase;
  final ListarProfessoresCadastradosUseCase listarProfessoresCadastradosUseCase;
  final VerInformacaoDoUsuarioUseCase verInformacaoDoUsuarioUseCase;
  final ListarEspacosPorCampusUseCase listarTodosEspacosPorCampusUseCase;
  final VincularGestoresAoEspacoUsecase vincularGestoresAoEspacoUsecase;

  VincularGestorServicoAoEspacoControllerImpl({
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
  Future<bool> vincularGestores({required EspacoEntity espacoEntity, required Map<String, Map<String, AgendaEntity>> newAgenda}) async {
    throw UnimplementedError();
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
