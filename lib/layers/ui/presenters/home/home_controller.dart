import 'package:flutter/material.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/shared/espaco_provider.dart';
import 'package:uniespaco/layers/shared/usuario_provider.dart';

abstract class HomeController extends ChangeNotifier {
  List<EspacoEntity?>? _espacos;

  List<EspacoEntity?>? get espacos => _espacos;

  set espacos(List<EspacoEntity?>? espacos) {
    _espacos = espacos;
    notifyListeners();
  }

  List<EspacoEntity>? _espacosFavoritos;

  List<EspacoEntity>? get espacosFavoritos => _espacosFavoritos;

  set espacosFavoritos(List<EspacoEntity>? espacos) {
    _espacosFavoritos = espacos;
    notifyListeners();
  }

  Future init();
}

class HomeControllerImpl extends HomeController {
  final EspacosProvider espacoProvider;
  final UsuarioProvider usuarioProvider;

  HomeControllerImpl({required this.espacoProvider, required this.usuarioProvider});

  @override
  init() async {
    await espacoProvider.init();
    espacos = espacoProvider.espacos;
  }
}
