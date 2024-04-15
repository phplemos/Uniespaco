import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/usecases/efetuar_logout_usecase/efetuar_logout_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_todos_espacos_usecase/listar_todos_espacos_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/ver_informacao_do_usuario_usecase/ver_informacao_do_usuario_usecase.dart';
import 'package:uniespaco/layers/ui/presenters/home/home_widget.dart';

class HomeControllerImpl extends HomeController {
  final ListarTodosEspacosUseCase listarTodosEspacosUseCase;
  final VerInformacaoDoUsuarioUseCase verInformacaoDoUsuarioUseCase;
  final EfetuarLogoutUseCase efetuarLogoutUseCase;

  HomeControllerImpl({required this.listarTodosEspacosUseCase, required this.verInformacaoDoUsuarioUseCase, required this.efetuarLogoutUseCase});

  @override
  Future<UsuarioEntity> getUsuario() async {
    var response = await verInformacaoDoUsuarioUseCase();
    return response.fold((error) => throw Exception('Erro ao recuperar usuario'), (success) => success);
  }

  @override
  Future<void> logout() async {
    await efetuarLogoutUseCase();
  }

  @override
  Future<List<EspacoEntity>> getEspacos() async {
    var response = await listarTodosEspacosUseCase();
    return response.fold((l) => [], (r) => r);
  }
}
