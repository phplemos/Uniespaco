import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';
import 'package:uniespaco/layers/domain/entities/situacao_solicitacao_enum.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/usecases/buscar_usuario_pelo_id_usecase/buscar_usuario_pelo_id_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/consultar_espaco_usecase/consultar_espaco_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/consultar_reserva_usecase/consultar_reserva_usecase.dart';

abstract class AvaliarSolicitacaoReservaController extends ChangeNotifier {
  final loading = ValueNotifier<bool>(true);

  ReservaEntity? _reserva;

  ReservaEntity? get reserva => _reserva;

  set reserva(ReservaEntity? reserva) {
    _reserva = reserva;
    notifyListeners();
  }

  UsuarioEntity? _usuario;

  UsuarioEntity? get usuario => _usuario;

  set usuario(UsuarioEntity? usuario) {
    _usuario = usuario;
    notifyListeners();
  }

  EspacoEntity? _espaco;

  EspacoEntity? get espaco => _espaco;

  set espaco(EspacoEntity? espaco) {
    _espaco = espaco;
    notifyListeners();
  }

  Future<void> init({required String usuarioId, required String espacoId});
}

class AvaliarSolicitacaoReservaControllerImpl extends AvaliarSolicitacaoReservaController {
  final ConsultarEspacoUseCase consultarEspacoUseCase;
  final BuscarUsuarioPeloIdUsecase buscarUsuarioPeloIdUsecase;
  final ConsultarReservaUseCase consultarReservaUseCase;

  AvaliarSolicitacaoReservaControllerImpl({required this.consultarReservaUseCase, required this.buscarUsuarioPeloIdUsecase, required this.consultarEspacoUseCase});

  init({required String usuarioId, required String espacoId}) async {
    var responseUsuario = await buscarUsuarioPeloIdUsecase(usuarioId: usuarioId);
    responseUsuario.fold((error) => null, (success) => usuario = success);
    var responseEspaco = await consultarEspacoUseCase(idEspaco: espacoId);
    responseEspaco.fold((error) => null, (success) => espaco = success);
    if (usuario != null && espaco != null) {
      loading.value = false;
    } else {
      loading.value = true;
    }
  }

  atualizarSituacaoReserva(String idReserva, Situacao novaSituacao) {

  }
}
