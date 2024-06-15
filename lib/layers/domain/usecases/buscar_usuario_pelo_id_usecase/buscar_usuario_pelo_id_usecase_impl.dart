import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/usuario_repository.dart';
import 'package:uniespaco/layers/domain/usecases/buscar_usuario_pelo_id_usecase/buscar_usuario_pelo_id_usecase.dart';

class BuscarUsuarioPeloIdUsecaseImpl implements BuscarUsuarioPeloIdUsecase {
  final UsuarioRepository usuarioRepository;

  BuscarUsuarioPeloIdUsecaseImpl({required this.usuarioRepository});

  @override
  Future<Either<Exception, UsuarioEntity?>> call({required String usuarioId}) {
    return usuarioRepository.getById(usuarioId: usuarioId);
  }
}
