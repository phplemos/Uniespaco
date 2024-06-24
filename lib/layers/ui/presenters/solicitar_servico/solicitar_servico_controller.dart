import 'package:flutter/material.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/horario_entity.dart';
import 'package:uniespaco/layers/domain/entities/servico_entity.dart';
import 'package:uniespaco/layers/domain/entities/situacao_solicitacao_enum.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/usecases/solicitar_servico_usecase/solicitar_reserva_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/ver_informacao_do_usuario_usecase/ver_informacao_do_usuario_usecase.dart';

abstract class SolicitarServicoController extends ChangeNotifier {
  TextEditingController titulo = TextEditingController();
  TextEditingController descricao = TextEditingController();
  List<HorarioEntity> periodo = [];
  late EspacoEntity espaco;
  late DateTime selectedDay;

  String? validatorText(String? text);

  Future<bool> solicitarServico();
}

class SolicitarServicoControllerImpl extends SolicitarServicoController {
  final SolicitarServicoUseCase solicitarServicoUseCase;
  final VerInformacaoDoUsuarioUseCase verInformacaoDoUsuarioUseCase;

  SolicitarServicoControllerImpl({required this.solicitarServicoUseCase, required this.verInformacaoDoUsuarioUseCase});

  @override
  String? validatorText(String? text) {
    if (text?.isEmpty ?? true) {
      return 'Campo Obrigatório';
    }
    final exp = RegExp(r"^[a-zA-Z0-9 ]+$");
    if (!exp.hasMatch(text!)) {
      return 'Caractere invalido!';
    }
    return null;
  }

  @override
  Future<bool> solicitarServico() async {
    try {
      final responseUsuario = await verInformacaoDoUsuarioUseCase();
      UsuarioEntity? usuario = responseUsuario.fold((error) => null, (success) => success);
      final servico = ServicoEntity(
        espacoId: espaco.id,
        solicitanteId: usuario!.id,
        titulo: titulo.text,
        descricao: descricao.text,
        status: Situacao.EM_ANALISE.text!,
        dia: selectedDay,
        periodo: periodo,
      );
      await solicitarServicoUseCase(servicoEntity: servico);
      return true;
    } catch (e) {
      return false;
    }
  }
}
