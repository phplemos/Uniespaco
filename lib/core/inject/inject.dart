import 'package:get_it/get_it.dart';
import 'package:uniespaco/layers/data/datasources/datasource.dart';
import 'package:uniespaco/layers/data/datasources/google_auth.dart';
import 'package:uniespaco/layers/data/datasources/remote/firebase/firestore_datasource.dart';
import 'package:uniespaco/layers/data/datasources/remote/firebase/google_auth_impl.dart';
import 'package:uniespaco/layers/data/repositories/espaco_repository_impl.dart';
import 'package:uniespaco/layers/data/repositories/professor_repository_impl.dart';
import 'package:uniespaco/layers/data/repositories/reserva_repository_impl.dart';
import 'package:uniespaco/layers/data/repositories/setor_repository_impl.dart';
import 'package:uniespaco/layers/data/repositories/usuario_repository_impl.dart';
import 'package:uniespaco/layers/domain/repositories/espaco_repository.dart';
import 'package:uniespaco/layers/domain/repositories/professor_repository.dart';
import 'package:uniespaco/layers/domain/repositories/reserva_repository.dart';
import 'package:uniespaco/layers/domain/repositories/setor_repository.dart';
import 'package:uniespaco/layers/domain/repositories/usuario_repository.dart';
import 'package:uniespaco/layers/domain/usecases/cadastrar_espaco_usecase/cadastrar_espaco_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/cadastrar_espaco_usecase/cadastrar_espaco_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/cadastrar_professor_usecase/cadastrar_professor_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/cadastrar_professor_usecase/cadastrar_professor_usecase_imp.dart';
import 'package:uniespaco/layers/domain/usecases/cadastrar_setor_usecase/cadastrar_setor_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/cadastrar_setor_usecase/cadastrar_setor_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/cadastrar_usuario_usecase/cadastrar_usuario_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/cadastrar_usuario_usecase/cadastrar_usuario_usecase_impl.dart';
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
import 'package:uniespaco/layers/domain/usecases/listar_reservas_usuario_por_dia_usecase/listar_reservas_usuario_por_dia_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_reservas_usuario_por_dia_usecase/listar_reservas_usuario_por_dia_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/listar_setores_cadastrados_usecase/listar_setores_cadastrados_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_setores_cadastrados_usecase/listar_setores_cadastrados_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/listar_todas_reservas_usuario_usecase/listar_todas_reservas_usuario_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_todas_reservas_usuario_usecase/listar_todas_reservas_usuario_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/listar_todos_espacos_por_campus_usecase/listar_todos_espacos_por_campus.dart';
import 'package:uniespaco/layers/domain/usecases/listar_todos_espacos_por_campus_usecase/listar_todos_espacos_por_campus_impl.dart';
import 'package:uniespaco/layers/domain/usecases/listar_todos_espacos_usecase/listar_todos_espacos_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_todos_espacos_usecase/listar_todos_espacos_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/pesquisar_espaco_usecase/pesquisar_espaco_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/pesquisar_espaco_usecase/pesquisar_espaco_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/solicitar_reserva_usecase/solicitar_reserva_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/solicitar_reserva_usecase/solicitar_reserva_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/ver_informacao_do_usuario_usecase/ver_informacao_do_usuario_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/ver_informacao_do_usuario_usecase/ver_informacao_do_usuario_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/vincular_gestores_ao_espaco_usecase/vincular_gestores_ao_espaco_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/vincular_gestores_ao_espaco_usecase/vincular_gestores_ao_espaco_usecase_impl.dart';
import 'package:uniespaco/layers/shared/espaco_provider.dart';
import 'package:uniespaco/layers/shared/reserva_provider.dart';
import 'package:uniespaco/layers/shared/usuario_provider.dart';
import 'package:uniespaco/layers/ui/controllers/listar_reservas_controller.dart';
import 'package:uniespaco/layers/ui/presenters/cadastro_espaco/cadastro_espaco_controller.dart';
import 'package:uniespaco/layers/ui/presenters/cadastro_usuarios/cadastro_usuario_controller.dart';
import 'package:uniespaco/layers/ui/presenters/home/home_controller.dart';
import 'package:uniespaco/layers/ui/presenters/login/login_controller.dart';
import 'package:uniespaco/layers/ui/presenters/vincular_gestor_ao_espaco/vincular_gestor_ao_espaco_controller.dart';

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
    getIt.registerLazySingleton<ReservaRepository>(() => ReservaRepositoryImpl(dataSource: getIt()));
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
    getIt.registerLazySingleton<VerInformacaoDoUsuarioUseCase>(() => VerInformacaoDoUsuarioUseCaseImpl(usuarioRepository: getIt()));
    getIt.registerLazySingleton<ListarTodosEspacosPorCampusUseCase>(() => ListarTodosEspacosPorCampusUseCaseImpl(espacoRepository: getIt()));
    getIt.registerLazySingleton<PesquisarEspacoUseCase>(() => PesquisarEspacoUseCaseImpl(espacoRepository: getIt()));
    getIt.registerLazySingleton<VincularGestoresAoEspacoUsecase>(() => VincularGestoresAoEspacoUsecaseImpl(espacoRepository: getIt()));
    getIt.registerLazySingleton<CadastrarUsuarioUseCase>(() => CadastrarUsuarioUseCaseImpl(usuarioRepository: getIt()));
    getIt.registerLazySingleton<SolicitarReservaUseCase>(() => SolicitarReservaUseCaseImpl(reservaRepository: getIt()));
    getIt.registerLazySingleton<ListarTodasReservasUsuarioUseCase>(() => ListarTodasReservasUsuarioUseCaseImpl(reservaRepository: getIt()));
    getIt.registerLazySingleton<ListarReservasUsuarioPorDiaUseCase>(() => ListarReservasUsuarioPorDiaUseCaseImpl(reservaRepository: getIt()));
    //providers
    getIt.registerLazySingleton<UsuarioProvider>(() => UsuarioProvider(verInformacaoDoUsuarioUseCase: getIt(), efetuarLogoutUseCase: getIt()));
    getIt.registerLazySingleton<EspacosProvider>(() => EspacosProvider(listarTodosEspacosPorCampusUseCase: getIt(), listarTodosEspacosUseCase: getIt(), pesquisarEspacoUseCase: getIt()));
    getIt.registerLazySingleton<ReservaProvider>(() => ReservaProvider(listarTodasReservasUsuarioUseCase: getIt(), verInformacaoDoUsuarioUseCase: getIt()));
    //controllers
    getIt.registerFactory<LoginController>(() => LoginControllerImpl(
          efetuarLoginUseCase: getIt(),
          efetuarLogoutUseCase: getIt(),
        ));
    getIt.registerFactory<HomeController>(() => HomeControllerImpl(
          listarTodosEspacosUseCase: getIt(),
        ));
    getIt.registerFactory<CadastroEspacoController>(() => CadastroEspacoControllerImpl(
          cadastrarEspacoUseCase: getIt(),
          listarProfessoresCadastradosUseCase: getIt(),
          listarSetoresCadastradosUseCase: getIt(),
        ));
    getIt.registerFactory<VincularGestorAoEspacoController>(() => VincularGestorAoEspacoControllerImpl(
          listarTodosEspacosUseCase: getIt(),
          listarSetoresCadastradosUseCase: getIt(),
          listarProfessoresCadastradosUseCase: getIt(),
          verInformacaoDoUsuarioUseCase: getIt(),
          listarTodosEspacosPorCampusUseCase: getIt(),
          vincularGestoresAoEspacoUsecase: getIt(),
        ));
    getIt.registerFactory<CadastroUsuarioController>(() => CadastroUsuarioControllerImpl(cadastrarUsuarioUseCase: getIt()));
    getIt.registerFactory<ListarReservasController>(() => ListarReservasControllerImpl());
  }
}
