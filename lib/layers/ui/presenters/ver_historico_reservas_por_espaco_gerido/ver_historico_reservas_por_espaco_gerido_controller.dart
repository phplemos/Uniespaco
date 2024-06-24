import 'package:flutter/cupertino.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';
import 'package:uniespaco/layers/domain/usecases/ver_historico_reservas_por_espaco_usecase/ver_historico_reservas_por_espaco_usecase.dart';
import 'package:uniespaco/layers/shared/usuario_provider.dart';

abstract class VerHistoricoReservasPorEspacoGeridoController extends ChangeNotifier {
  List<EspacoEntity?> _espacos = [];

  List<EspacoEntity?> get espacos => _espacos;

  set espacos(List<EspacoEntity?> espacos) {
    _espacos = espacos;
    notifyListeners();
  }

  Map<EspacoEntity, List<ReservaEntity?>> _reservasPorEspaco = {};

  Map<EspacoEntity, List<ReservaEntity?>> get reservasPorEspaco => _reservasPorEspaco;

  set reservasPorEspaco(Map<EspacoEntity, List<ReservaEntity?>> reservasPorEspacos) {
    _reservasPorEspaco = reservasPorEspacos;
    notifyListeners();
  }

  Future init();
}

class VerHistoricoReservasPorEspacoGeridoControllerImpl extends VerHistoricoReservasPorEspacoGeridoController {
  final VerHistoricoReservasPorEspacoUseCase verHistoricoReservasPorEspacoUseCase;
  final UsuarioProvider usuarioProvider;

  VerHistoricoReservasPorEspacoGeridoControllerImpl({required this.verHistoricoReservasPorEspacoUseCase, required this.usuarioProvider});

  @override
  init() async {
    await usuarioProvider.init();
    final usuario = usuarioProvider.value;
    final response = await verHistoricoReservasPorEspacoUseCase(usuarioId: usuario!.id);
    response.fold((error) => null, (success) => reservasPorEspaco = success);
    getEspacos();
  }

  getEspacos() {
    List<EspacoEntity?> espacosTemp = [];
    reservasPorEspaco.forEach((key, value) {
      espacosTemp.add(key);
    });
    espacos = espacosTemp;
  }
}
