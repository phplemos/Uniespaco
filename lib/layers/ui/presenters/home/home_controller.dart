import 'package:flutter/material.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/usecases/desfavoritar_espaco_usecase/desfavoritar_espaco_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/favoritar_espaco_usecase/favoritar_espaco_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_espacos_favoritados_usecase/listar_espacos_favoritados_usecase.dart';
import 'package:uniespaco/layers/shared/espaco_provider.dart';
import 'package:uniespaco/layers/shared/usuario_provider.dart';

abstract class HomeController extends ChangeNotifier {
  List<EspacoEntity?> _espacos = [];

  List<EspacoEntity?> get espacos => _espacos;

  set espacos(List<EspacoEntity?> espacos) {
    _espacos = espacos;
    notifyListeners();
  }

  List<EspacoEntity?> _espacosFavoritos = [];

  List<EspacoEntity?> get espacosFavoritos => _espacosFavoritos;

  set espacosFavoritos(List<EspacoEntity?> espacosFavoritos) {
    _espacosFavoritos = espacosFavoritos;
    notifyListeners();
  }

  Future init();

  void favoritarEspaco({required EspacoEntity espaco});

  void desfavoritarEspaco({required EspacoEntity espaco});
}

class HomeControllerImpl extends HomeController {
  final EspacosProvider espacoProvider;
  final UsuarioProvider usuarioProvider;

  HomeControllerImpl({required this.espacoProvider, required this.usuarioProvider});

  @override
  init() async {
    await espacoProvider.init();
    if (espacoProvider.espacos.isNotEmpty) {
      if (espacos.any((espaco) => espacoProvider.espacos.contains(espaco))) {
        notifyListeners();
      } else {
        espacos.addAll(espacoProvider.espacos);
        notifyListeners();
      }
    }
  }

  void favoritarEspaco({required EspacoEntity espaco}) {
    espacosFavoritos.add(espaco);
    notifyListeners();
  }

  void desfavoritarEspaco({required EspacoEntity espaco}) {
    espacosFavoritos.remove(espaco);
    notifyListeners();
  }
}
