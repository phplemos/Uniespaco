import 'package:uniespaco/layers/domain/usecases/listar_todos_espacos_usecase/listar_todos_espacos_usecase.dart';
import 'package:uniespaco/layers/presenters/home/home_widget.dart';

class HomeControllerImpl extends HomeController {

  final ListarTodosEspacosUseCase listarTodosEspacosUseCase;

  HomeControllerImpl({required this.listarTodosEspacosUseCase});
}
