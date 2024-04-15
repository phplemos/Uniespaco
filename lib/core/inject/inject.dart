import 'package:get_it/get_it.dart';
import 'package:uniespaco/layers/data/datasources/datasource.dart';
import 'package:uniespaco/layers/data/datasources/google_auth.dart';
import 'package:uniespaco/layers/data/datasources/remote/firebase/firestore_datasource.dart';
import 'package:uniespaco/layers/data/datasources/remote/firebase/google_auth_impl.dart';
import 'package:uniespaco/layers/data/repositories/espaco_repository_impl.dart';
import 'package:uniespaco/layers/data/repositories/professor_repository_impl.dart';
import 'package:uniespaco/layers/data/repositories/setor_repository_impl.dart';
import 'package:uniespaco/layers/data/repositories/usuario_repository_impl.dart';
import 'package:uniespaco/layers/domain/repositories/espaco_repository.dart';
import 'package:uniespaco/layers/domain/repositories/professor_repository.dart';
import 'package:uniespaco/layers/domain/repositories/setor_repository.dart';
import 'package:uniespaco/layers/domain/repositories/usuario_repository.dart';
import 'package:uniespaco/layers/domain/usecases/cadastrar_espaco_usecase/cadastrar_espaco_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/cadastrar_espaco_usecase/cadastrar_espaco_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/cadastrar_professor_usecase/cadastrar_professor_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/cadastrar_professor_usecase/cadastrar_professor_usecase_imp.dart';
import 'package:uniespaco/layers/domain/usecases/cadastrar_setor_usecase/cadastrar_setor_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/cadastrar_setor_usecase/cadastrar_setor_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/consultar_espaco_usecase/consultar_espaco_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/consultar_espaco_usecase/consultar_espaco_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/efetuar_login_usecase/efetuar_login_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/efetuar_login_usecase/efetuar_login_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/efetuar_logout_usecase/efetuar_logout_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/efetuar_logout_usecase/efetuar_logout_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/listar_gestores_de_reserva_vinculados_aos_espacos_usecase/listar_gestores_de_reserva_vinculados_aos_espacos_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_gestores_de_reserva_vinculados_aos_espacos_usecase/listar_gestores_de_reserva_vinculados_aos_espacos_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/listar_gestores_de_servico_vinculados_aos_espacos_usecase/listar_gestores_de_servico_vinculados_aos_espacos_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_gestores_de_servico_vinculados_aos_espacos_usecase/listar_gestores_de_servico_vinculados_aos_espacos_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/listar_professores_cadastrados_usecase/listar_professores_cadastrados_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_professores_cadastrados_usecase/listar_professores_cadastrados_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/listar_setores_cadastrados_usecase/listar_setores_cadastrados_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_setores_cadastrados_usecase/listar_setores_cadastrados_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/listar_todos_espacos_usecase/listar_todos_espacos_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_todos_espacos_usecase/listar_todos_espacos_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/ver_informacao_do_usuario_usecase/ver_informacao_do_usuario_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/ver_informacao_do_usuario_usecase/ver_informacao_do_usuario_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/vincular_gestor_de_reserva_ao_espaco_usecase/vincular_gestor_de_reserva_ao_espaco_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/vincular_gestor_de_reserva_ao_espaco_usecase/vincular_gestor_de_reserva_ao_espaco_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/vincular_gestor_de_servico_ao_espaco_usecase/vincular_gestor_de_servico_ao_espaco_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/vincular_gestor_de_servico_ao_espaco_usecase/vincular_gestor_de_servico_ao_espaco_usecase_impl.dart';
import 'package:uniespaco/layers/presenters/home/home_controller.dart';
import 'package:uniespaco/layers/presenters/home/home_widget.dart';
import 'package:uniespaco/layers/presenters/login/login_controller.dart';
import 'package:uniespaco/layers/presenters/login/login_widget.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;
    //datasources
    getIt.registerLazySingleton<DataSource>(() => FirestoreDataSourceImpl());
    getIt.registerLazySingleton<GoogleAuth>(() => GoogleAuthImpl(dataSource: getIt()));
    //repositories
    getIt.registerLazySingleton<EspacoRepository>(() => EspacoRepositoryImpl(dataSource: getIt()));
    getIt.registerLazySingleton<ProfessorRepository>(() => ProfessorRepositoryImpl(dataSource: getIt()));
    getIt.registerLazySingleton<SetorRepository>(() => SetorRepositoryImpl(dataSource: getIt()));
    getIt.registerLazySingleton<UsuarioRepository>(() => UsuarioRepositoryImpl(googleAuth: getIt(), dataSource: getIt()));
    //usecases
    getIt.registerLazySingleton<CadastrarEspacoUseCase>(() => CadastrarEspacoUseCaseImpl(espacoRepository: getIt()));
    getIt.registerLazySingleton<CadastrarProfessorUseCase>(() => CadastrarProfessorUseCaseImpl(professorRepository: getIt()));
    getIt.registerLazySingleton<CadastrarSetorUseCase>(() => CadastrarSetorUseCaseImpl(setorRepository: getIt()));
    getIt.registerLazySingleton<ConsultarEspacoUseCase>(() => ConsultarEspacoUseCaseImpl(espacoRepository: getIt()));
    getIt.registerLazySingleton<EfetuarLoginUseCase>(() => EfetuarLoginUseCaseImpl(usuarioRepository: getIt()));
    getIt.registerLazySingleton<EfetuarLogoutUseCase>(() => EfetuarLogoutUseCaseImpl(usuarioRepository: getIt()));
    getIt.registerLazySingleton<ListarGestoresDeReservaVinculadosAosEspacosUseCase>(() => ListarGestoresDeReservaVinculadosAosEspacosUseCaseImpl(espacoRepository: getIt()));
    getIt.registerLazySingleton<ListarGestoresDeServicoVinculadosAosEspacosUseCase>(() => ListarGestoresDeServicoVinculadosAosEspacosUseCaseImpl(espacoRepository: getIt()));
    getIt.registerLazySingleton<ListarProfessoresCadastradosUseCase>(() => ListarProfessoresCadastradosUseCaseImpl(professorRepository: getIt()));
    getIt.registerLazySingleton<ListarSetoresCadastradosUseCase>(() => ListarSetoresCadastradosUseCaseImpl(setorRepository: getIt()));
    getIt.registerLazySingleton<ListarTodosEspacosUseCase>(() => ListarTodosEspacosUseCaseImpl(espacoRepository: getIt()));
    getIt.registerLazySingleton<VincularGestorDeReservaAoEspacoUseCase>(() => VincularGestorDeReservaAoEspacoUseCaseImpl(espacoRepository: getIt()));
    getIt.registerLazySingleton<VincularGestorDeServicoAoEspacoUseCase>(() => VincularGestorDeServicoAoEspacoUseCaseImpl(espacoRepository: getIt()));
    getIt.registerLazySingleton<VerInformacaoDoUsuarioUseCase>(() => VerInformacaoDoUsuarioUseCaseImpl(usuarioRepository: getIt()));
    //controllers
    getIt.registerFactory<LoginController>(() => LoginControllerImpl(efetuarLoginUseCase: getIt(), efetuarLogoutUseCase: getIt()));
    getIt.registerFactory<HomeController>(() => HomeControllerImpl(listarTodosEspacosUseCase: getIt(), verInformacaoDoUsuarioUseCase: getIt(), efetuarLogoutUseCase: getIt()));
  }
}
