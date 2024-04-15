import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/usecases/efetuar_logout_usecase/efetuar_logout_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_todos_espacos_usecase/listar_todos_espacos_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/ver_informacao_do_usuario_usecase/ver_informacao_do_usuario_usecase.dart';
import 'package:uniespaco/layers/presenters/home/home_widget.dart';

class HomeControllerImpl extends HomeController {
  final ListarTodosEspacosUseCase listarTodosEspacosUseCase;
  final VerInformacaoDoUsuarioUseCase verInformacaoDoUsuarioUseCase;
  final EfetuarLogoutUseCase efetuarLogoutUseCase;

  HomeControllerImpl({required this.listarTodosEspacosUseCase, required this.verInformacaoDoUsuarioUseCase, required this.efetuarLogoutUseCase});

  @override
  Future<Either<Exception, UsuarioEntity>> getUsuario() async {
    var response = await verInformacaoDoUsuarioUseCase();
    return response.fold((error) => Left(error), (success) => Right(success));
  }

  @override
  Future<Either<Exception, void>> logout() {
    return efetuarLogoutUseCase();
  }
}
