import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/horario_entity.dart';
import 'package:uniespaco/layers/domain/entities/servico_entity.dart';
import 'package:uniespaco/layers/domain/entities/situacao_solicitacao_enum.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/usecases/alterar_situacao_servico_usecase/alterar_situacao_servico_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/buscar_usuario_pelo_id_usecase/buscar_usuario_pelo_id_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/consultar_espaco_usecase/consultar_espaco_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/consultar_servico_usecase/consultar_servico_usecase.dart';
import 'package:uniespaco/layers/shared/espaco_provider.dart';

abstract class AvaliarSolicitacaoServicoController extends ChangeNotifier {
  final loading = ValueNotifier<bool>(true);

  late DateTime dia;

  List<HorarioEntity?> _horariosSelecionados = [];

  List<HorarioEntity?> get horariosSelecionados => _horariosSelecionados;

  set horariosSelecionados(List<HorarioEntity?> horariosSelecionado) {
    _horariosSelecionados = horariosSelecionado;
    notifyListeners();
  }

  ServicoEntity? _servico;

  ServicoEntity? get servico => _servico;

  set servico(ServicoEntity? servico) {
    _servico = servico;
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

  Situacao _situacao = Situacao.EM_ANALISE;

  Situacao get situacao => _situacao;

  set situacao(Situacao situacao) {
    _situacao = situacao;
    notifyListeners();
  }

  Future<void> init({required String usuarioId, required String espacoId});

  Future<bool> atualizarSituacao({required String idServico, required Situacao situacao});
}

class AvaliarSolicitacaoServicoControllerImpl extends AvaliarSolicitacaoServicoController {
  final ConsultarEspacoUseCase consultarEspacoUseCase;
  final BuscarUsuarioPeloIdUsecase buscarUsuarioPeloIdUsecase;
  final ConsultarServicoUsecase consultarServicoUseCase;
  final AlterarSituacaoServicoUsecase alterarSituacaoServicoUsecase;
  final EspacosProvider espacosProvider;

  AvaliarSolicitacaoServicoControllerImpl({
    required this.espacosProvider,
    required this.consultarServicoUseCase,
    required this.buscarUsuarioPeloIdUsecase,
    required this.consultarEspacoUseCase,
    required this.alterarSituacaoServicoUsecase,
  });

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

  @override
  Future<bool> atualizarSituacao({required String idServico, required Situacao situacao}) async {
    dia = servico!.dia;
    var response = await alterarSituacaoServicoUsecase(servicoId: idServico, situacao: situacao, periodo: horariosSelecionados, dia: dia);
    espacosProvider.init();
    return response.fold((error) => false, (success) => true);
  }
}
