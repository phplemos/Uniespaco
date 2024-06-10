import 'package:dartz/dartz.dart';

import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/usecases/listar_setores_cadastrados_usecase/listar_setores_cadastrados_usecase.dart';
import 'package:uniespaco/layers/ui/presenters/test/test_widget.dart';

class TestControllerImp extends TestController {
  final ListarSetoresCadastradosUseCase listarSetoresCadastradosUseCase;

  TestControllerImp({required this.listarSetoresCadastradosUseCase}) {
    refresh();
  }

  List<String> _itens = [];

  String? _erroMsg;

  @override
  String? get errorMsg => _erroMsg;

  @override
  List<String> get itens => _itens;

  @override
  String get title => "${_itens.length} Itens";

  refresh() async {
    Either<Exception, List<UsuarioEntity?>> response = await listarSetoresCadastradosUseCase();
    response.fold((l) {
      _erroMsg = 'Erro';
      notifyListeners();
    }, (r) {
      _itens = r.map((e) => e!.nome).toList();
      notifyListeners();
    });
  }
}
