// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/usecases/desfavoritar_espaco_usecase/desfavoritar_espaco_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/favoritar_espaco_usecase/favoritar_espaco_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_espacos_favoritados_usecase/listar_espacos_favoritados_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_espacos_por_campus_usecase/listar_espacos_por_campus.dart';
import 'package:uniespaco/layers/domain/usecases/listar_espacos_usecase/listar_espacos_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/ver_informacao_do_usuario_usecase/ver_informacao_do_usuario_usecase.dart';

class EspacosProvider extends ChangeNotifier {
  ListarEspacosPorCampusUseCase listarTodosEspacosPorCampusUseCase;
  ListarEspacosUseCase listarTodosEspacosUseCase;
  VerInformacaoDoUsuarioUseCase verInformacaoDoUsuarioUseCase;

  List<EspacoEntity?> _espacos = [];

  List<EspacoEntity?> get espacos => _espacos;

  set espacos(List<EspacoEntity?> espacos) {
    _espacos = espacos;
    notifyListeners();
  }

  UsuarioEntity? _usuario;

  UsuarioEntity? get usuario => _usuario;

  set usuario(UsuarioEntity? usuario) {
    _usuario = _usuario;
    notifyListeners();
  }

  EspacosProvider({
    required this.listarTodosEspacosPorCampusUseCase,
    required this.listarTodosEspacosUseCase,
    required this.verInformacaoDoUsuarioUseCase,
  }) : super() {
    init();
  }

  Future init() async {
    var responseUsuario = await verInformacaoDoUsuarioUseCase();
    responseUsuario.fold((error) => throw Exception('Erro ao recuperar o usuario no EspacoProvider'), (success) => _usuario = success);

    var responseEspaco = await listarTodosEspacosUseCase();
    responseEspaco.fold((error) => throw Exception('Erro ao recuperar o espaco no EspacoProvider'), (success) => espacos = success);
  }
}
