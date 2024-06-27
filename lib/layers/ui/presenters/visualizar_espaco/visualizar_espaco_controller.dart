import 'package:flutter/cupertino.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/usecases/consultar_espaco_usecase/consultar_espaco_usecase.dart';

abstract class VisualizarEspacoController extends ChangeNotifier {
  EspacoEntity? _espacoEntity;

  EspacoEntity? get espacoEntity => _espacoEntity;

  set espacoEntity(EspacoEntity? espaco) {
    _espacoEntity = espaco;
    if (_espacoEntity != null) {
      isCompleted = true;
    }
    notifyListeners();
  }

  bool _isCompleted = false;

  bool get isCompleted => _isCompleted;

  set isCompleted(bool completed) {
    _isCompleted = completed;
    notifyListeners();
  }

  Future<void> init({required String idEspaco});
}

class VisualizarEspacoControllerImpl extends VisualizarEspacoController {
  final ConsultarEspacoUseCase consultarEspacoUseCase;

  VisualizarEspacoControllerImpl({required this.consultarEspacoUseCase});

  @override
  Future<void> init({required String idEspaco}) async {
    var response = await consultarEspacoUseCase(idEspaco: idEspaco);
    response.fold((error) => null, (success) => espacoEntity = success);
  }
}
