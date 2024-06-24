import 'package:flutter/cupertino.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';
import 'package:uniespaco/layers/domain/usecases/cancelar_reserva_usecase/cancelar_reserva_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_todas_reservas_vinculadas_ao_usuario/listar_todas_reservas_vinculadas_ao_usuario_usecase.dart';
import 'package:uniespaco/layers/shared/usuario_provider.dart';

abstract class MinhasReservasController extends ChangeNotifier {
  List<ReservaEntity?> _reservas = [];

  List<ReservaEntity?> get reservas => _reservas;

  set reservas(List<ReservaEntity?> reservas) {
    _reservas = reservas;
    notifyListeners();
  }

  Future<void> init();

  Future<bool> cancelarSolicitacaoReserva({required String reservaId});
}

class MinhasReservasControllerImpl extends MinhasReservasController {
  final ListarTodasReservasVinculadasAoUsuarioUseCase listarTodasReservasVinculadasAoUsuarioUseCase;
  final UsuarioProvider usuarioProvider;
  final CancelarReservaUseCase cancelarReservaUseCase;

  MinhasReservasControllerImpl({required this.listarTodasReservasVinculadasAoUsuarioUseCase, required this.usuarioProvider, required this.cancelarReservaUseCase});

  init() async {
    await usuarioProvider.init();
    var usuario = usuarioProvider.value!;
    var response = await listarTodasReservasVinculadasAoUsuarioUseCase(usuarioId: usuario.id);
    response.fold((error) => Exception("Erro ao listar reservas"), (success) => reservas = success);
  }

  @override
  Future<bool> cancelarSolicitacaoReserva({required String reservaId}) async {
    var response = await cancelarReservaUseCase(reservaId: reservaId);
    return response.fold((error) => false, (success) => true);
  }
}
