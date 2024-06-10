import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/servico_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

abstract class ServicoRepository {
  Future<Either<Exception, Map<DateTime, List<ServicoEntity?>>>> getAll({required UsuarioEntity usuario});

  Future<Either<Exception, Map<DateTime, List<ServicoEntity?>>>> getByDay({required UsuarioEntity usuario, required DateTime day});

  Future<Either<Exception, bool>> save({required ServicoEntity servicoEntity});
}
