import 'package:flutter/cupertino.dart';
import 'package:uniespaco/layers/domain/entities/servico_entity.dart';
import 'package:uniespaco/layers/domain/usecases/cancelar_servico_usecase/cancelar_servico_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_todos_servicos_vinculados_ao_usuario/listar_todos_servicos_vinculados_ao_usuario_usecase.dart';
import 'package:uniespaco/layers/shared/usuario_provider.dart';

abstract class MeusServicosController extends ChangeNotifier {
  List<ServicoEntity?> _servicos = [];

  List<ServicoEntity?> get servicos => _servicos;

  set servicos(List<ServicoEntity?> servicos) {
    _servicos = servicos;
    notifyListeners();
  }

  Future<void> init();

  Future<bool> cancelarSolicitacaoServico({required String servicoId});
}

class MeusServicosControllerImpl extends MeusServicosController {
  final ListarTodosServicosVinculadosAoUsuarioUsecase listarTodosServicosVinculadosAoUsuarioUsecase;
  final UsuarioProvider usuarioProvider;
  final CancelarServicoUseCase cancelarServicoUseCase;

  MeusServicosControllerImpl({required this.listarTodosServicosVinculadosAoUsuarioUsecase, required this.usuarioProvider, required this.cancelarServicoUseCase});

  init() async {
    await usuarioProvider.init();
    var usuario = usuarioProvider.value!;
    var response = await listarTodosServicosVinculadosAoUsuarioUsecase(usuarioId: usuario.id);
    response.fold((error) => Exception("Erro ao listar servicos"), (success) => servicos = success);
  }

  @override
  Future<bool> cancelarSolicitacaoServico({required String servicoId}) async {
    var response = await cancelarServicoUseCase(servicoId: servicoId);
    return response.fold((error) => false, (success) => true);
  }
}
