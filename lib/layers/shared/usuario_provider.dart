import 'package:flutter/material.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/usecases/efetuar_logout_usecase/efetuar_logout_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/ver_informacao_do_usuario_usecase/ver_informacao_do_usuario_usecase.dart';

class UsuarioProvider extends ValueNotifier<UsuarioEntity?> {
  final VerInformacaoDoUsuarioUseCase verInformacaoDoUsuarioUseCase;
  final EfetuarLogoutUseCase efetuarLogoutUseCase;

  UsuarioProvider({
    required this.verInformacaoDoUsuarioUseCase,
    required this.efetuarLogoutUseCase,
  }) : super(null) {
    init();
  }

  init() async {
    var responseUsuario = await verInformacaoDoUsuarioUseCase();
    responseUsuario.fold((error) => throw Exception('Erro ao recuperar usuario'), (success) => value = success);
  }

  logout() async {
    await efetuarLogoutUseCase();
  }
}
