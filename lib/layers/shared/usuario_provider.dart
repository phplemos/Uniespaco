import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/core/core.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/usecases/efetuar_logout_usecase/efetuar_logout_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_setores_cadastrados_usecase/listar_setores_cadastrados_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/ver_informacao_do_usuario_usecase/ver_informacao_do_usuario_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_professores_cadastrados_usecase/listar_professores_cadastrados_usecase.dart';

class UsuarioProvider extends ValueNotifier<UsuarioEntity?> {
  final VerInformacaoDoUsuarioUseCase verInformacaoDoUsuarioUseCase;
  final EfetuarLogoutUseCase efetuarLogoutUseCase;
  final ListarProfessoresCadastradosUseCase listarProfessoresCadastradosUseCase;
  final ListarSetoresCadastradosUseCase listarSetoresCadastradosUseCase;

  UsuarioProvider({required this.verInformacaoDoUsuarioUseCase, required this.efetuarLogoutUseCase, required this.listarProfessoresCadastradosUseCase, required this.listarSetoresCadastradosUseCase})
      : super(null) {
    init();
  }

  init() async {
    var responseUsuario = await verInformacaoDoUsuarioUseCase();
    responseUsuario.fold((error) => throw Exception('Erro ao recuperar usuario'), (success) => value = success);
  }

  logout() async {
    await efetuarLogoutUseCase();
  }

  Future<List<UsuarioEntity?>> getProfessores() async {
    var response = await listarProfessoresCadastradosUseCase();
    return response.fold((error) => [], (success) => success);
  }

  Future<List<UsuarioEntity?>> getSetores() async {
    var response = await listarSetoresCadastradosUseCase();
    return response.fold((error) => [], (success) => success);
  }
}
