import 'package:flutter/cupertino.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/servico_entity.dart';
import 'package:uniespaco/layers/domain/usecases/ver_historico_servicos_por_espaco_usecase/ver_historico_servicos_por_espaco_usecase.dart';
import 'package:uniespaco/layers/shared/usuario_provider.dart';

abstract class VerHistoricoServicosPorEspacoGeridoController extends ChangeNotifier {
  List<EspacoEntity?> _espacos = [];

  List<EspacoEntity?> get espacos => _espacos;

  set espacos(List<EspacoEntity?> espacos) {
    _espacos = espacos;
    notifyListeners();
  }

  Map<EspacoEntity, List<ServicoEntity?>> _servicosPorEspaco = {};

  Map<EspacoEntity, List<ServicoEntity?>> get servicosPorEspaco => _servicosPorEspaco;

  set servicosPorEspaco(Map<EspacoEntity, List<ServicoEntity?>> servicosPorEspacos) {
    _servicosPorEspaco = servicosPorEspacos;
    notifyListeners();
  }

  Future init();
}

class VerHistoricoServicosPorEspacoGeridoControllerImpl extends VerHistoricoServicosPorEspacoGeridoController {
  final VerHistoricoServicosPorEspacoUseCase verHistoricoServicosPorEspacoUseCase;
  final UsuarioProvider usuarioProvider;

  VerHistoricoServicosPorEspacoGeridoControllerImpl({required this.verHistoricoServicosPorEspacoUseCase, required this.usuarioProvider});

  @override
  init() async {
    await usuarioProvider.init();
    final usuario = usuarioProvider.value;
    final response = await verHistoricoServicosPorEspacoUseCase(usuarioId: usuario!.id);
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
