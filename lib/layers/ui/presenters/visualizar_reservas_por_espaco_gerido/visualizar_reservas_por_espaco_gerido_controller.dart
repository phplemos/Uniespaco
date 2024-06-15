import 'package:flutter/cupertino.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';
import 'package:uniespaco/layers/domain/usecases/visualizar_reservas_por_espaco_gerido_usecase/visualizar_reservas_por_espaco_gerido_usecase.dart';
import 'package:uniespaco/layers/shared/usuario_provider.dart';

abstract class VisualizarReservasPorEspacoGeridoController extends ChangeNotifier {
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

class VisualizarReservasPorEspacoGeridoControllerImpl extends VisualizarReservasPorEspacoGeridoController {
  final VisualizarReservasPorEspacoGeridoUsecase visualizarReservasPorEspacoGeridoUsecase;
  final UsuarioProvider usuarioProvider;

  VisualizarReservasPorEspacoGeridoControllerImpl({required this.visualizarReservasPorEspacoGeridoUsecase, required this.usuarioProvider});

  @override
  init() async {
    await usuarioProvider.init();
    final usuario = usuarioProvider.value;
    final response = await visualizarReservasPorEspacoGeridoUsecase(usuarioId: usuario!.id);
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
