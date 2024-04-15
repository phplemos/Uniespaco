import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/data/datasources/datasource.dart';
import 'package:uniespaco/layers/data/dto/usuario_dto.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/setor_repository.dart';

class SetorRepositoryImpl extends SetorRepository {
  final DataSource dataSource;

  SetorRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Exception, List<UsuarioEntity>>> getAll() async {
    try {
      final response = await dataSource.get(tabela: 'setor');
      final setoresToDto = response.map((e) => UsuarioDto.fromMap(e)).toList();
      return Right(setoresToDto.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(Exception('Erro ao serializar o espaco'));
    }
  }

  @override
  Future<Either<Exception, UsuarioEntity>> getById({required String id}) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, bool>> save({required UsuarioEntity setorEntity}) async {
    try {
      var setorDto = UsuarioDto.fromEntity(setorEntity);
      var result = await dataSource.save(tabela: 'professor', item: setorDto.toMap());
      return Right(result);
    } catch (e) {
      return Left(Exception('Erro ao cadastrar o espaço'));
    }
  }
}
