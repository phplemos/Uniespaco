import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/core/core.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';
import 'package:uniespaco/layers/domain/usecases/cancelar_reserva_usecase/cancelar_reserva_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_todas_reservas_vinculadas_ao_usuario/listar_todas_reservas_vinculadas_ao_usuario_usecase.dart';
import 'package:uniespaco/layers/shared/espaco_provider.dart';
import 'package:uniespaco/layers/shared/usuario_provider.dart';

abstract class HomeController extends ChangeNotifier {
  List<ReservaEntity?> _reservas = [];

  List<ReservaEntity?> get reservas => _reservas;

  set reservas(List<ReservaEntity?> reservas) {
    _reservas = reservas;
    notifyListeners();
  }

  List<EspacoEntity?> _espacos = [];

  List<EspacoEntity?> get espacos => _espacos;

  set espacos(List<EspacoEntity?> espacos) {
    _espacos = espacos;
    notifyListeners();
  }

  List<EspacoEntity?> _espacosFavoritos = [];

  List<EspacoEntity?> get espacosFavoritos => _espacosFavoritos;

  set espacosFavoritos(List<EspacoEntity?> espacosFavoritos) {
    _espacosFavoritos = espacosFavoritos;
    notifyListeners();
  }

  Future init();

  void favoritarEspaco({required EspacoEntity espacoEntity});

  void desfavoritarEspaco({required EspacoEntity espacoEntity});

  Future<bool> cancelarSolicitacaoReserva({required String reservaId});
}

class HomeControllerImpl extends HomeController {
  final EspacosProvider espacoProvider;
  final UsuarioProvider usuarioProvider;
  final Core core = GetIt.instance.get<Core>();
  final ListarTodasReservasVinculadasAoUsuarioUseCase listarTodasReservasVinculadasAoUsuarioUseCase;
  final CancelarReservaUseCase cancelarReservaUseCase;

  HomeControllerImpl({required this.cancelarReservaUseCase, required this.listarTodasReservasVinculadasAoUsuarioUseCase, required this.espacoProvider, required this.usuarioProvider});

  @override
  void addListener(VoidCallback listener) {
    super.addListener(listener);
  }

  @override
  init() async {
    // Busca usuario da Classe Core
    await core.setUserData();
    var usuario = core.user;
    var response = await listarTodasReservasVinculadasAoUsuarioUseCase(usuarioId: usuario!.id);
    response.fold((error) => Exception("Erro ao listar reservas"), (success) => reservas = success);

    await espacoProvider.init();
    if (espacoProvider.espacos.isNotEmpty) {
      espacos = espacoProvider.espacos;
    }
  }

  @override
  Future<bool> cancelarSolicitacaoReserva({required String reservaId}) async {
    var response = await cancelarReservaUseCase(reservaId: reservaId);
    return response.fold((error) => false, (success) => true);
  }

  void favoritarEspaco({required EspacoEntity espacoEntity}) {
    espacosFavoritos.any((espaco) => espaco?.id == espacoEntity.id) ? null : espacosFavoritos.add(espacoEntity);
    notifyListeners();
  }

  void desfavoritarEspaco({required EspacoEntity espacoEntity}) {
    espacosFavoritos.removeWhere((espaco) => espaco?.id == espacoEntity.id);
    notifyListeners();
  }
}
