import 'package:uniespaco/layers/data/dto/espaco_dto.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/usecases/cadastrar_espaco_usecase/cadastrar_espaco_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/efetuar_logout_usecase/efetuar_logout_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_professores_cadastrados_usecase/listar_professores_cadastrados_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_setores_cadastrados_usecase/listar_setores_cadastrados_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/ver_informacao_do_usuario_usecase/ver_informacao_do_usuario_usecase.dart';
import 'package:uniespaco/layers/ui/presenters/cadastro_espaco/cadastro_espaco_widget.dart';

class CadastroEspacoControllerImpl extends CadastroEspacoController {
  final CadastrarEspacoUseCase cadastrarEspacoUseCase;
  final ListarSetoresCadastradosUseCase listarSetoresCadastradosUseCase;
  final ListarProfessoresCadastradosUseCase listarProfessoresCadastradosUseCase;
  final VerInformacaoDoUsuarioUseCase verInformacaoDoUsuarioUseCase;
  final EfetuarLogoutUseCase efetuarLogoutUseCase;

  CadastroEspacoControllerImpl({required this.cadastrarEspacoUseCase, required this.listarSetoresCadastradosUseCase, required this.listarProfessoresCadastradosUseCase, required this.verInformacaoDoUsuarioUseCase, required this.efetuarLogoutUseCase});

  @override
  Future<void> save({required Map<String, dynamic> map}) async {
    var espaco = EspacoDto.fromMap(map);
    var response = await cadastrarEspacoUseCase(espacoEntity: EspacoEntity.fromDto(espaco));
    return response.fold((l) => false, (r) => true);
  }

  @override
  Future<List<UsuarioEntity>> getGestores() async {
    List<UsuarioEntity> gestores = [];
    var responseSetores = await listarSetoresCadastradosUseCase();
    var responseProfessores = await listarProfessoresCadastradosUseCase();
    responseSetores.fold((l) => [], (r) => gestores.addAll(r));
    responseProfessores.fold((l) => [], (r) => gestores.addAll(r));
    return gestores;
  }

  @override
  Future<UsuarioEntity> getUsuario() async {
    var response = await verInformacaoDoUsuarioUseCase();
    return response.fold((error) => throw Exception('Erro ao recuperar usuario'), (success) => success);
  }

  @override
  Future<void> logout() async {
    await efetuarLogoutUseCase();
  }
}
