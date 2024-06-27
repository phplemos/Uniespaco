import 'package:get_it/get_it.dart';
import 'package:uniespaco/core/core.dart';
import 'package:uniespaco/layers/data/datasources/google_auth.dart';
import 'package:uniespaco/layers/data/datasources/remote/firebase/firestore_datasource.dart';
import 'package:uniespaco/layers/data/datasources/remote/firebase/google_auth_impl.dart';
import 'package:uniespaco/layers/data/datasources/remote/firebase/precadastro/precadastro_firebase_datasource.dart';
import 'package:uniespaco/layers/data/datasources/remote/firebase/usuario/usuario_firebase_datasource.dart';
import 'package:uniespaco/layers/data/repositories/espaco_repository_impl.dart';
import 'package:uniespaco/layers/data/repositories/professor_repository_impl.dart';
import 'package:uniespaco/layers/data/repositories/reserva_repository_impl.dart';
import 'package:uniespaco/layers/data/repositories/servico_repository_impl.dart';
import 'package:uniespaco/layers/data/repositories/setor_respository_impl.dart';
import 'package:uniespaco/layers/data/repositories/usuario_repository_impl.dart';
import 'package:uniespaco/layers/domain/repositories/espaco_repository.dart';
import 'package:uniespaco/layers/domain/repositories/professor_repository.dart';
import 'package:uniespaco/layers/domain/repositories/reserva_repository.dart';
import 'package:uniespaco/layers/domain/repositories/servico_repository.dart';
import 'package:uniespaco/layers/domain/repositories/setor_repository.dart';
import 'package:uniespaco/layers/domain/repositories/usuario_repository.dart';
import 'package:uniespaco/layers/domain/usecases/alterar_situacao_reserva_usecase/alterar_situacao_reserva_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/alterar_situacao_reserva_usecase/alterar_situacao_reserva_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/alterar_situacao_servico_usecase/alterar_situacao_servico_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/alterar_situacao_servico_usecase/alterar_situacao_servico_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/buscar_usuario_pelo_id_usecase/buscar_usuario_pelo_id_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/buscar_usuario_pelo_id_usecase/buscar_usuario_pelo_id_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/cadastrar_espaco_usecase/cadastrar_espaco_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/cadastrar_espaco_usecase/cadastrar_espaco_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/cancelar_reserva_usecase/cancelar_reserva_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/cancelar_reserva_usecase/cancelar_reserva_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/cancelar_servico_usecase/cancelar_servico_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/cancelar_servico_usecase/cancelar_servico_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/consultar_espaco_usecase/consultar_espaco_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/consultar_espaco_usecase/consultar_espaco_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/consultar_reserva_usecase/consultar_reserva_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/consultar_reserva_usecase/consultar_reserva_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/consultar_servico_usecase/consultar_servico_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/consultar_servico_usecase/consultar_servico_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/desfavoritar_espaco_usecase/desfavoritar_espaco_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/desfavoritar_espaco_usecase/desfavoritar_espaco_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/efetuar_login_usecase/efetuar_login_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/efetuar_login_usecase/efetuar_login_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/efetuar_logout_usecase/efetuar_logout_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/efetuar_logout_usecase/efetuar_logout_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/favoritar_espaco_usecase/favoritar_espaco_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/favoritar_espaco_usecase/favoritar_espaco_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/listar_espacos_favoritados_usecase/listar_espacos_favoritados_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_espacos_favoritados_usecase/listar_espacos_favoritados_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/listar_gestores_de_reserva_vinculados_aos_espacos_usecase/listar_gestores_de_reserva_vinculados_aos_espacos_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_gestores_de_reserva_vinculados_aos_espacos_usecase/listar_gestores_de_reserva_vinculados_aos_espacos_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/listar_gestores_de_servico_vinculados_aos_espacos_usecase/listar_gestores_de_servico_vinculados_aos_espacos_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_gestores_de_servico_vinculados_aos_espacos_usecase/listar_gestores_de_servico_vinculados_aos_espacos_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/listar_gestores_reserva_cadastrados_usecase/listar_gestores_reserva_cadastrados_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_gestores_reserva_cadastrados_usecase/listar_gestores_reserva_cadastrados_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/listar_gestores_servico_cadastrados_usecase/listar_gestores_servico_cadastrados_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_gestores_servico_cadastrados_usecase/listar_gestores_servico_cadastrados_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/listar_professores_cadastrados_usecase/listar_professores_cadastrados_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_professores_cadastrados_usecase/listar_professores_cadastrados_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/listar_reservas_usuario_por_dia_usecase/listar_reservas_usuario_por_dia_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_reservas_usuario_por_dia_usecase/listar_reservas_usuario_por_dia_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/listar_setores_cadastrados_usecase/listar_setores_cadastrados_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_setores_cadastrados_usecase/listar_setores_cadastrados_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/listar_todas_reservas_usuario_usecase/listar_todas_reservas_usuario_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_todas_reservas_usuario_usecase/listar_todas_reservas_usuario_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/listar_espacos_por_campus_usecase/listar_espacos_por_campus.dart';
import 'package:uniespaco/layers/domain/usecases/listar_espacos_por_campus_usecase/listar_espacos_por_campus_impl.dart';
import 'package:uniespaco/layers/domain/usecases/listar_espacos_usecase/listar_espacos_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_espacos_usecase/listar_espacos_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/listar_todas_reservas_vinculadas_ao_usuario/listar_todas_reservas_vinculadas_ao_usuario_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_todas_reservas_vinculadas_ao_usuario/listar_todas_reservas_vinculadas_ao_usuario_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/listar_todos_servicos_vinculados_ao_usuario/listar_todos_servicos_vinculados_ao_usuario_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_todos_servicos_vinculados_ao_usuario/listar_todos_servicos_vinculados_ao_usuario_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/pre_cadastrar_usuario_usecase/pre_cadastrar_usuario_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/pre_cadastrar_usuario_usecase/pre_cadastrar_usuario_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/solicitar_reserva_usecase/solicitar_reserva_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/solicitar_reserva_usecase/solicitar_reserva_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/solicitar_servico_usecase/solicitar_reserva_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/solicitar_servico_usecase/solicitar_reserva_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/ver_historico_reservas_por_espaco_usecase/ver_historico_reservas_por_espaco_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/ver_historico_reservas_por_espaco_usecase/ver_historico_reservas_por_espaco_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/ver_historico_servicos_por_espaco_usecase/ver_historico_servicos_por_espaco_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/ver_historico_servicos_por_espaco_usecase/ver_historico_servicos_por_espaco_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/ver_informacao_do_usuario_usecase/ver_informacao_do_usuario_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/ver_informacao_do_usuario_usecase/ver_informacao_do_usuario_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/vincular_gestores_ao_espaco_usecase/vincular_gestores_ao_espaco_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/vincular_gestores_ao_espaco_usecase/vincular_gestores_ao_espaco_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/visualizar_reservas_por_espaco_gerido_usecase/visualizar_reservas_por_espaco_gerido_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/visualizar_reservas_por_espaco_gerido_usecase/visualizar_reservas_por_espaco_gerido_usecase_impl.dart';
import 'package:uniespaco/layers/domain/usecases/visualizar_servicos_por_espaco_gerido_usecase/visualizar_servicos_por_espaco_gerido_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/visualizar_servicos_por_espaco_gerido_usecase/visualizar_servicos_por_espaco_gerido_usecase_impl.dart';
import 'package:uniespaco/layers/shared/espaco_provider.dart';
import 'package:uniespaco/layers/shared/reserva_provider.dart';
import 'package:uniespaco/layers/shared/usuario_provider.dart';
import 'package:uniespaco/layers/ui/controllers/listar_reservas_controller.dart';
import 'package:uniespaco/layers/ui/presenters/avaliar_solicitacao_reserva/avaliar_solicitacao_reserva_controller.dart';
import 'package:uniespaco/layers/ui/presenters/avaliar_solicitacao_servico/avaliar_solicitacao_servico_controller.dart';
import 'package:uniespaco/layers/ui/presenters/cadastro_espaco/cadastro_espaco_controller.dart';
import 'package:uniespaco/layers/ui/presenters/home/home_controller.dart';
import 'package:uniespaco/layers/ui/presenters/login/login_controller.dart';
import 'package:uniespaco/layers/ui/presenters/meus_servicos/meus_servicos_controller.dart';
import 'package:uniespaco/layers/ui/presenters/minhas_reservas/minhas_reservas_controller.dart';
import 'package:uniespaco/layers/ui/presenters/pre_cadastro_usuarios/pre_cadastro_usuario_controller.dart';
import 'package:uniespaco/layers/ui/presenters/professores_cadastrados/professores_cadastrados_controller.dart';
import 'package:uniespaco/layers/ui/presenters/setores_cadastrados/setores_cadastrados_controller.dart';
import 'package:uniespaco/layers/ui/presenters/solicitar_reserva/solicitar_reserva_controller.dart';
import 'package:uniespaco/layers/ui/presenters/solicitar_servico/solicitar_servico_controller.dart';
import 'package:uniespaco/layers/ui/presenters/ver_historico_reservas_por_espaco_gerido/ver_historico_reservas_por_espaco_gerido_controller.dart';
import 'package:uniespaco/layers/ui/presenters/ver_historico_servicos_por_espaco_gerido/ver_historico_servicos_por_espaco_gerido_controller.dart';
import 'package:uniespaco/layers/ui/presenters/vincular_gestor_reserva_ao_espaco/vincular_gestor_reserva_ao_espaco_controller.dart';
import 'package:uniespaco/layers/ui/presenters/vincular_gestor_servico_ao_espaco/vincular_gestor_servico_ao_espaco_controller.dart';
import 'package:uniespaco/layers/ui/presenters/visualizar_gestores_reserva_vinculados_aos_espacos/visualizar_gestores_reserva_vinculados_aos_espacos_controller.dart';
import 'package:uniespaco/layers/ui/presenters/visualizar_gestores_servico_vinculados_aos_espacos/visualizar_gestores_servico_vinculados_aos_espacos_controller.dart';
import 'package:uniespaco/layers/ui/presenters/visualizar_reservas_por_espaco_gerido/visualizar_reservas_por_espaco_gerido_controller.dart';
import 'package:uniespaco/layers/ui/presenters/visualizar_servicos_por_espaco_gerido/visualizar_servicos_por_espaco_gerido_controller.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;
    // DataSources
    getIt.registerLazySingleton<FirestoreDataSource>(() => FirestoreDataSource());
    getIt.registerLazySingleton<UsuarioFirebaseDataSource>(() => UsuarioFirebaseDataSource());
    getIt.registerLazySingleton<PrecadastroFirebaseDataSource>(() => PrecadastroFirebaseDataSource());
    getIt.registerLazySingleton<GoogleAuth>(() => GoogleAuthImpl(usuarioFirebaseDataSource: getIt(), precadastroFirebaseDataSource: getIt()));
    // Core
    getIt.registerLazySingleton<Core>(() => Core(googleAuth: getIt(), usuarioFirebaseDataSource: getIt()));
    //repositories
    getIt.registerLazySingleton<EspacoRepository>(() => EspacoRepositoryImpl());
    getIt.registerLazySingleton<UsuarioRepository>(() => UsuarioRepositoryImpl(
          precadastroFirebaseDataSource: getIt(),
          googleAuth: getIt(),
        ));
    getIt.registerLazySingleton<ProfessorRepository>(() => ProfessorRepositoryImpl(usuarioDatasource: getIt()));
    getIt.registerLazySingleton<SetorRepository>(() => SetorRepositoryImpl(usuarioDatasource: getIt()));

    getIt.registerLazySingleton<ReservaRepository>(() => ReservaRepositoryImpl());
    getIt.registerLazySingleton<ServicoRepository>(() => ServicoRepositoryImpl());
    // Core
    // UseCases
    getIt.registerLazySingleton<CadastrarEspacoUseCase>(() => CadastrarEspacoUseCaseImpl(espacoRepository: getIt()));
    getIt.registerLazySingleton<ConsultarEspacoUseCase>(() => ConsultarEspacoUseCaseImpl(espacoRepository: getIt()));
    getIt.registerLazySingleton<EfetuarLoginUseCase>(() => EfetuarLoginUseCaseImpl(usuarioRepository: getIt()));
    getIt.registerLazySingleton<EfetuarLogoutUseCase>(() => EfetuarLogoutUseCaseImpl(usuarioRepository: getIt()));
    getIt.registerLazySingleton<ListarGestoresDeReservaVinculadosAosEspacosUseCase>(() => ListarGestoresDeReservaVinculadosAosEspacosUseCaseImpl(reservaRepository: getIt()));
    getIt.registerLazySingleton<ListarGestoresDeServicoVinculadosAosEspacosUseCase>(() => ListarGestoresDeServicoVinculadosAosEspacosUseCaseImpl(servicoRepository: getIt()));
    getIt.registerLazySingleton<ListarProfessoresCadastradosUseCase>(() => ListarProfessoresCadastradosUseCaseImpl(professorRepository: getIt()));
    getIt.registerLazySingleton<ListarSetoresCadastradosUseCase>(() => ListarSetoresCadastradosUseCaseImpl(setorRepository: getIt()));
    getIt.registerLazySingleton<ListarEspacosUseCase>(() => ListarEspacosUseCaseImpl(espacoRepository: getIt()));
    getIt.registerLazySingleton<VerInformacaoDoUsuarioUseCase>(() => VerInformacaoDoUsuarioUseCaseImpl(usuarioRepository: getIt()));
    getIt.registerLazySingleton<ListarEspacosPorCampusUseCase>(() => ListarEspacosPorCampusUseCaseImpl(espacoRepository: getIt()));
    getIt.registerLazySingleton<VincularGestoresAoEspacoUsecase>(() => VincularGestoresAoEspacoUsecaseImpl(espacoRepository: getIt()));
    getIt.registerLazySingleton<PreCadastrarUsuarioUseCase>(() => PreCadastrarUsuarioUseCaseImpl(usuarioRepository: getIt()));
    getIt.registerLazySingleton<SolicitarReservaUseCase>(() => SolicitarReservaUseCaseImpl(reservaRepository: getIt()));
    getIt.registerLazySingleton<ListarTodasReservasUsuarioUseCase>(() => ListarTodasReservasUsuarioUseCaseImpl(reservaRepository: getIt()));
    getIt.registerLazySingleton<ListarReservasUsuarioPorDiaUseCase>(() => ListarReservasUsuarioPorDiaUseCaseImpl(reservaRepository: getIt()));
    getIt.registerLazySingleton<ListarEspacosFavoritadosUseCase>(() => ListarEspacosFavoritadosUseCaseImpl(espacoRepository: getIt()));
    getIt.registerLazySingleton<FavoritarEspacoUseCase>(() => FavoritarEspacoUseCaseImpl(espacoRepository: getIt()));
    getIt.registerLazySingleton<DesfavoritarEspacoUseCase>(() => DesfavoritarEspacoUseCaseImpl(espacoRepository: getIt()));
    getIt.registerLazySingleton<SolicitarServicoUseCase>(() => SolicitarServicoUseCaseImpl(servicoRepository: getIt()));
    getIt.registerLazySingleton<VisualizarReservasPorEspacoGeridoUsecase>(() => VisualizarReservasPorEspacoGeridoUsecaseImpl(reservaRepository: getIt()));
    getIt.registerLazySingleton<VisualizarServicosPorEspacoGeridoUsecase>(() => VisualizarServicosPorEspacoGeridoUsecaseImpl(servicoRepository: getIt()));
    getIt.registerLazySingleton<ConsultarReservaUseCase>(() => ConsultarReservaUseCaseImpl(reservaRepository: getIt()));
    getIt.registerLazySingleton<ConsultarServicoUsecase>(() => ConsultarServicoUseCaseImpl(servicoRepository: getIt()));
    getIt.registerLazySingleton<BuscarUsuarioPeloIdUsecase>(() => BuscarUsuarioPeloIdUsecaseImpl(usuarioRepository: getIt()));
    getIt.registerLazySingleton<AlterarSituacaoReservaUsecase>(() => AlterarSituacaoReservaUsecaseImpl(reservaRepository: getIt()));
    getIt.registerLazySingleton<AlterarSituacaoServicoUsecase>(() => AlterarSituacaoServicoUsecaseImpl(servicoRepository: getIt()));
    getIt.registerLazySingleton<VerHistoricoServicosPorEspacoUseCase>(() => VerHistoricoServicosPorEspacoUseCaseImpl(servicoRepository: getIt()));
    getIt.registerLazySingleton<VerHistoricoReservasPorEspacoUseCase>(() => VerHistoricoReservasPorEspacoUseCaseImpl(reservaRepository: getIt()));
    getIt.registerLazySingleton<ListarTodasReservasVinculadasAoUsuarioUseCase>(() => ListarTodasReservasVinculadasAoUsuarioUseCaseImpl(reservaRepository: getIt()));
    getIt.registerLazySingleton<ListarTodosServicosVinculadosAoUsuarioUsecase>(() => ListarTodosServicosVinculadosAoUsuarioUsecaseImpl(servicoRepository: getIt()));
    getIt.registerLazySingleton<CancelarReservaUseCase>(() => CancelarReservaUseCaseImpl(reservaRepository: getIt()));
    getIt.registerLazySingleton<ListarGestoresReservaCadastradosUsecase>(() => ListarGestoresReservaCadastradosUsecaseImpl(reservaRepository: getIt()));
    getIt.registerLazySingleton<ListarGestoresServicoCadastradosUsecase>(() => ListarGestoresServicoCadastradosUsecaseImpl(servicoRepository: getIt()));
    getIt.registerLazySingleton<CancelarServicoUseCase>(() => CancelarServicoUseCaseImpl(servicoRepository: getIt()));

    //providers
    getIt.registerLazySingleton<UsuarioProvider>(
        () => UsuarioProvider(verInformacaoDoUsuarioUseCase: getIt(), efetuarLogoutUseCase: getIt(), listarProfessoresCadastradosUseCase: getIt(), listarSetoresCadastradosUseCase: getIt()));
    getIt.registerLazySingleton<EspacosProvider>(() => EspacosProvider(
          listarTodosEspacosPorCampusUseCase: getIt(),
          listarTodosEspacosUseCase: getIt(),
          verInformacaoDoUsuarioUseCase: getIt(),
        ));
    getIt.registerLazySingleton<ReservaProvider>(() => ReservaProvider(listarTodasReservasUsuarioUseCase: getIt(), verInformacaoDoUsuarioUseCase: getIt()));
    //controllers
    getIt.registerFactory<LoginController>(() => LoginControllerImpl(
          efetuarLoginUseCase: getIt(),
          efetuarLogoutUseCase: getIt(),
        ));
    // Singleton pois vai ser usado durante o ciclo de vida da aplicação
    getIt.registerLazySingleton<HomeController>(() => HomeControllerImpl(espacoProvider: getIt(), usuarioProvider: getIt()));
    getIt.registerFactory<CadastroEspacoController>(() => CadastroEspacoControllerImpl(
          cadastrarEspacoUseCase: getIt(),
          listarProfessoresCadastradosUseCase: getIt(),
          listarSetoresCadastradosUseCase: getIt(),
        ));
    getIt.registerFactory<VincularGestorReservaAoEspacoController>(() => VincularGestorReservaAoEspacoControllerImpl(
          listarTodosEspacosUseCase: getIt(),
          listarSetoresCadastradosUseCase: getIt(),
          listarProfessoresCadastradosUseCase: getIt(),
          verInformacaoDoUsuarioUseCase: getIt(),
          listarTodosEspacosPorCampusUseCase: getIt(),
          vincularGestoresAoEspacoUsecase: getIt(),
          listarGestoresReservaCadastradosUsecase: getIt(),
          listarGestoresServicoCadastradosUsecase: getIt(),
          precadastroFirebaseDataSource: getIt(),
        ));
    getIt.registerFactory<VincularGestorServicoAoEspacoController>(() => VincularGestorServicoAoEspacoControllerImpl(
          listarTodosEspacosUseCase: getIt(),
          listarSetoresCadastradosUseCase: getIt(),
          listarProfessoresCadastradosUseCase: getIt(),
          verInformacaoDoUsuarioUseCase: getIt(),
          listarTodosEspacosPorCampusUseCase: getIt(),
          vincularGestoresAoEspacoUsecase: getIt(),
          listarGestoresReservaCadastradosUsecase: getIt(),
          listarGestoresServicoCadastradosUsecase: getIt(),
          precadastroFirebaseDataSource: getIt(),
        ));
    getIt.registerFactory<PreCadastroUsuarioController>(() => PreCadastroUsuarioControllerImpl(cadastrarUsuarioUseCase: getIt()));
    getIt.registerFactory<ListarReservasController>(() => ListarReservasControllerImpl());
    getIt.registerFactory<SolicitarReservaController>(() => SolicitarReservaControllerImpl(solicitarReservaUseCase: getIt(), verInformacaoDoUsuarioUseCase: getIt()));
    getIt.registerFactory<SolicitarServicoController>(() => SolicitarServicoControllerImpl(solicitarServicoUseCase: getIt(), verInformacaoDoUsuarioUseCase: getIt()));
    getIt.registerFactory<VisualizarReservasPorEspacoGeridoController>(
        () => VisualizarReservasPorEspacoGeridoControllerImpl(visualizarReservasPorEspacoGeridoUsecase: getIt(), usuarioProvider: getIt()));
    getIt.registerFactory<VisualizarServicosPorEspacoGeridoController>(
        () => VisualizarServicosPorEspacoGeridoControllerImpl(visualizarServicosPorEspacoGeridoUsecase: getIt(), usuarioProvider: getIt()));
    getIt.registerFactory<ProfessoresCadastradosController>(() => ProfessoresCadastradosControllerImpl(usuarioProvider: getIt()));
    getIt.registerFactory<SetoresCadastradosController>(() => SetoresCadastradosControllerImpl(usuarioProvider: getIt()));
    getIt.registerFactory<VisualizarGestoresReservaVinculadosAosEspacosController>(
        () => VisualizarGestoresReservaVinculadosAosEspacosControllerImpl(listarGestoresDeReservaVinculadosAosEspacosUseCase: getIt()));
    getIt.registerFactory<VisualizarGestoresServicoVinculadosAosEspacosController>(
        () => VisualizarGestoresServicoVinculadosAosEspacosControllerImpl(listarGestoresDeServicoVinculadosAosEspacosUseCase: getIt()));
    getIt.registerFactory<AvaliarSolicitacaoReservaController>(
        () => AvaliarSolicitacaoReservaControllerImpl(consultarReservaUseCase: getIt(), consultarEspacoUseCase: getIt(), buscarUsuarioPeloIdUsecase: getIt(), alterarSituacaoReservaUsecase: getIt()));
    getIt.registerFactory<AvaliarSolicitacaoServicoController>(
        () => AvaliarSolicitacaoServicoControllerImpl(consultarServicoUseCase: getIt(), consultarEspacoUseCase: getIt(), buscarUsuarioPeloIdUsecase: getIt(), alterarSituacaoServicoUsecase: getIt()));
    getIt.registerFactory<VerHistoricoReservasPorEspacoGeridoController>(
        () => VerHistoricoReservasPorEspacoGeridoControllerImpl(verHistoricoReservasPorEspacoUseCase: getIt(), usuarioProvider: getIt()));
    getIt.registerFactory<VerHistoricoServicosPorEspacoGeridoController>(
        () => VerHistoricoServicosPorEspacoGeridoControllerImpl(usuarioProvider: getIt(), verHistoricoServicosPorEspacoUseCase: getIt()));
    // getIt.registerFactory<VerHistoricoServicosPorEspacoController>(() => VerHistoricoServicosPorEspacoControllerImpl());
    getIt.registerFactory<MinhasReservasController>(
        () => MinhasReservasControllerImpl(listarTodasReservasVinculadasAoUsuarioUseCase: getIt(), usuarioProvider: getIt(), cancelarReservaUseCase: getIt()));
    getIt.registerFactory<MeusServicosController>(() => MeusServicosControllerImpl(listarTodosServicosVinculadosAoUsuarioUsecase: getIt(), usuarioProvider: getIt(), cancelarServicoUseCase: getIt()));
  }
}
