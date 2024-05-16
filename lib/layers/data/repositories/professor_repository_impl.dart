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
      // Busca na tabela de usuarios os usuarios com o campo tipoUsuario professor
      final response = await dataSource.getItensByCampoEspecifico(tabela: 'usuario', campo: 'tipoUsuario', referencia: 'professor');
      // converte o retorno de map para entity
      final professoresEntity = response.map((e) => UsuarioDto.fromMap(e).toEntity()).toList();
      return Right(professoresEntity);
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
      var result = await dataSource.save(tabela: 'usuario', item: UsuarioDto.fromEntity(professorEntity).toMap());
      return Right(result);
    } catch (e) {
      return Left(Exception('Erro ao cadastrar o espaço'));
    }
  }
}
