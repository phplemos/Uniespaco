import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/usecases/listar_todos_espacos_usecase/listar_todos_espacos_usecase.dart';

abstract class HomeController extends ChangeNotifier {

  List<EspacoEntity>? _espacos;

  List<EspacoEntity>? get espacos => _espacos;

  set espacos(List<EspacoEntity>? espacos) {
    _espacos = espacos;
    notifyListeners();
  }

  void init();
}

class HomeControllerImpl extends HomeController {
  final ListarTodosEspacosUseCase listarTodosEspacosUseCase;

  HomeControllerImpl({required this.listarTodosEspacosUseCase});
  factory HomeControllerImpl.fromGetIt() {
    return HomeControllerImpl(
      listarTodosEspacosUseCase: GetIt.I.get<ListarTodosEspacosUseCase>(),
    );
  }
  @override
  init() async {
    var responseEspacos = await listarTodosEspacosUseCase();
    responseEspacos.fold((error) => throw Exception('Erro ao recuperar espacos'), (success) => espacos = success);
  }
}
