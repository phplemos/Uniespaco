import 'package:flutter/cupertino.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/usecases/listar_gestores_de_servico_vinculados_aos_espacos_usecase/listar_gestores_de_servico_vinculados_aos_espacos_usecase.dart';

abstract class VisualizarGestoresServicoVinculadosAosEspacosController extends ChangeNotifier {
  List<EspacoEntity?> _espacos = [];

  List<EspacoEntity?> get espacos => _espacos;

  set espacos(List<EspacoEntity?> espacos) {
    _espacos = espacos;
    notifyListeners();
  }

  Map<EspacoEntity, List<UsuarioEntity?>> _gestoresPorEspaco = {};

  Map<EspacoEntity, List<UsuarioEntity?>> get gestoresPorEspaco => _gestoresPorEspaco;

  set gestoresPorEspaco(Map<EspacoEntity, List<UsuarioEntity?>> gestoresPorEspaco) {
    _gestoresPorEspaco = gestoresPorEspaco;
    notifyListeners();
  }

  Future init();
}

class VisualizarGestoresServicoVinculadosAosEspacosControllerImpl extends VisualizarGestoresServicoVinculadosAosEspacosController {
  final ListarGestoresDeServicoVinculadosAosEspacosUseCase listarGestoresDeServicoVinculadosAosEspacosUseCase;

  VisualizarGestoresServicoVinculadosAosEspacosControllerImpl({required this.listarGestoresDeServicoVinculadosAosEspacosUseCase});

  @override
  init() async {
    var response = await listarGestoresDeServicoVinculadosAosEspacosUseCase();
    response.fold((error) => null, (success) => gestoresPorEspaco = success);
    getEspacos();
  }

  getEspacos() {
    List<EspacoEntity?> espacosTemp = [];
    gestoresPorEspaco.forEach((key, value) {
      espacosTemp.add(key);
    });
    espacos = espacosTemp;
  }
}
