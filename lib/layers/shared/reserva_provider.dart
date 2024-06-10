import 'package:flutter/material.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/usecases/listar_todas_reservas_usuario_usecase/listar_todas_reservas_usuario_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/ver_informacao_do_usuario_usecase/ver_informacao_do_usuario_usecase.dart';

class ReservaProvider extends ValueNotifier<Map<DateTime, List<ReservaEntity?>>?> {
  final ListarTodasReservasUsuarioUseCase listarTodasReservasUsuarioUseCase;
  final VerInformacaoDoUsuarioUseCase verInformacaoDoUsuarioUseCase;

  ReservaProvider({required this.verInformacaoDoUsuarioUseCase, required this.listarTodasReservasUsuarioUseCase}) : super(null) {
    init();
  }

  init() async {
    UsuarioEntity? usuario;
    var responseUsuario = await verInformacaoDoUsuarioUseCase();
    responseUsuario.fold((error) => Exception("Erro ao recuperar"), (success) => usuario = success);
    var response = await listarTodasReservasUsuarioUseCase(usuarioEntity: usuario!);
    return response.fold((error) => Exception('Erro ao recuperar as Reservas'), (success) => value = success);
  }
}
