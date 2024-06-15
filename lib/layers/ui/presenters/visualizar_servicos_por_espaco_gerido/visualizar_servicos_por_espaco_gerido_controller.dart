import 'package:flutter/cupertino.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/servico_entity.dart';
import 'package:uniespaco/layers/domain/usecases/visualizar_servicos_por_espaco_gerido_usecase/visualizar_servicos_por_espaco_gerido_usecase.dart';
import 'package:uniespaco/layers/shared/usuario_provider.dart';

abstract class VisualizarServicosPorEspacoGeridoController extends ChangeNotifier {
  List<EspacoEntity?> _espacos = [];

  List<EspacoEntity?> get espacos => _espacos;

  set espacos(List<EspacoEntity?> espacos) {
    _espacos = espacos;
    notifyListeners();
  }

  Map<EspacoEntity, List<ServicoEntity?>> _servicosPorEspaco = {};

  Map<EspacoEntity, List<ServicoEntity?>> get servicosPorEspaco => _servicosPorEspaco;

  set servicosPorEspaco(Map<EspacoEntity, List<ServicoEntity?>> servicosPorEspaco) {
    _servicosPorEspaco = servicosPorEspaco;
    notifyListeners();
  }

  Future init();
}

class VisualizarServicosPorEspacoGeridoControllerImpl extends VisualizarServicosPorEspacoGeridoController {
  final VisualizarServicosPorEspacoGeridoUsecase visualizarServicosPorEspacoGeridoUsecase;
  final UsuarioProvider usuarioProvider;

  VisualizarServicosPorEspacoGeridoControllerImpl({required this.visualizarServicosPorEspacoGeridoUsecase, required this.usuarioProvider});

  init() async {
    await usuarioProvider.init();
    final usuario = usuarioProvider.value;
    final response = await visualizarServicosPorEspacoGeridoUsecase(usuarioId: usuario!.id);
    response.fold((error) => null, (success) => servicosPorEspaco = success);
    getEspacos();
  }

  getEspacos() {
    List<EspacoEntity?> espacosTemp = [];
    servicosPorEspaco.forEach((key, value) {
      espacosTemp.add(key);
    });
    espacos = espacosTemp;
  }
}
