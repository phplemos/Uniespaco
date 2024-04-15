import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/data/datasources/datasource.dart';
import 'package:uniespaco/layers/data/dto/espaco_dto.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/espaco_repository.dart';

class EspacoRepositoryImpl implements EspacoRepository {
  final DataSource dataSource;

  EspacoRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Exception, List<EspacoEntity>>> getAll() async {
    try {
      final response = await dataSource.get(tabela: 'espaco');
      final resultToDto = response.map((e) => EspacoDto.fromMap(e)).toList();
      return Right(resultToDto.map((e) => EspacoEntity.fromDto(e)).toList());
    } catch (e) {
      return Left(Exception('Erro ao serializar o espaco'));
    }
  }

  @override
  Future<Either<Exception, List<UsuarioEntity>>> getAllGestoresReserva() async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, List<UsuarioEntity>>> getAllGestoresServico() {
    // TODO: implement getAllGestoresServico
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, EspacoEntity>> getById({required String idEspaco}) async {
    try {
      final response = await dataSource.getItemById(tabela: 'espaco', itemId: idEspaco);
      final espacoDto = EspacoDto.fromMap(response);
      return Right(EspacoEntity.fromDto(espacoDto));
    } catch (e) {
      return Left(Exception('Erro ao serializar o espaco'));
    }
  }

  @override
  Future<Either<Exception, bool>> save({required EspacoEntity espacoEntity}) async {
    try {
      var result = await dataSource.save(tabela: 'espaco', item: espacoEntity.toDto().toMap());
      return Right(result);
    } catch (e) {
      return Left(Exception('Erro ao cadastrar o espaço'));
    }
  }

  @override
  Future<Either<Exception, bool>> vincularGestorReservaEspaco({required UsuarioEntity gestorReserva, required EspacoEntity espacoEntity}) {
    // TODO: implement vincularGestorReservaEspaco
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, bool>> vincularGestorServicoEspaco({required UsuarioEntity gestorServico, required EspacoEntity espacoEntity}) {
    // TODO: implement vincularGestorServicoEspaco
    throw UnimplementedError();
  }
}
