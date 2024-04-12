import 'package:uniespaco/layers/domain/usecases/listar_todos_espacos_usecase/listar_todos_espacos_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_todos_espacos_usecase/listar_todos_espacos_usecase_impl.dart';
import 'package:uniespaco/layers/shared/dependecies/dependecies.dart';

setupDependencies() {
  //Dependencies.instance.add<ListarSetoresCadastradosRepository>(ListarSetoresCadastradosRepositoryImp());
  Dependencies.instance.add<ListarTodosEspacosUseCase>(
      ListarTodosEspacosUseCaseImpl(Dependencies.instance.get()));
}
