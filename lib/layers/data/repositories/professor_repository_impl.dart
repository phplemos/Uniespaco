import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/data/datasources/datasource.dart';
import 'package:uniespaco/layers/data/dto/usuario_dto.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/professor_repository.dart';

class ProfessorRepositoryImpl implements ProfessorRepository {
  final DataSource dataSource;

  ProfessorRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Exception, List<UsuarioEntity>>> getAll() async {
    try {
      final response = await dataSource.get(tabela: 'professor');
      final professoresToDto = response.map((e) => UsuarioDto.fromMap(e)).toList();
      return Right(professoresToDto.map((e) => e.toEntity()).toList());
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
  Future<Either<Exception, bool>> save({required UsuarioEntity professorEntity}) async {
    try {
      var professorDto = UsuarioDto.fromEntity(professorEntity);
      var result = await dataSource.save(tabela: 'professor', item: professorDto.toMap());
      return Right(result);
    } catch (e) {
      return Left(Exception('Erro ao cadastrar o espaço'));
    }
  }
}
