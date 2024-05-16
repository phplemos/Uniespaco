import 'package:dartz/dartz.dart';
import 'package:uniespaco/core/horario_list_initiializer/agenda_initializer.dart';
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
      final resultToDto = response.map((e) => EspacoDto.fromMap(e).toEntity()).toList();
      return Right(resultToDto);
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
      // Busca espaço por id
      final response = await dataSource.getItemById(tabela: 'espaco', itemId: idEspaco);
      // converte o retorno de map para entity
      final espacoEntity = EspacoDto.fromMap(response).toEntity();
      return Right(espacoEntity);
    } catch (e) {
      return Left(Exception('Erro ao serializar o espaco'));
    }
  }

  @override
  Future<Either<Exception, bool>> save({required EspacoEntity espacoEntity}) async {
    try {
      var espacoMap = EspacoDto.fromEntity(espacoEntity).toMap();
      espacoMap['agenda'] = AgendaInitializer.createAgenda(dayToInit: DateTime.now());
      var result = await dataSource.save(tabela: 'espaco', item: espacoMap);
      return Right(result);
    } catch (e) {
      return Left(Exception('Erro ao cadastrar o espaço'));
    }
  }

  @override
  Future<Either<Exception, List<EspacoEntity>>> getEspacosPorCampus({required Campus campus}) async {
    try {
      // Busca o espaço pela query
      final response = await dataSource.getItensByCampoEspecifico(tabela: 'espaco', campo: 'localizacao.campus', referencia: campus.text!);
      // Converte o retorno de map para entity
      final espacoEntity = response.map((e) => EspacoDto.fromMap(e).toEntity()).toList();
      return Right(espacoEntity);
    } catch (e) {
      return Left(Exception('Erro ao serializar o espaco'));
    }
  }

  @override
  Future<List<EspacoEntity>> getEspacosPorPesquisa({required String? query}) async {
    try {
      var response = await dataSource.getItensByCampoEspecifico(tabela: 'espacos', campo: 'localizacao.pavilhao', referencia: query ?? '');
      return response.map((e) => EspacoDto.fromMap(e).toEntity()).toList();
    } catch (e) {
      throw Exception('Erro ao buscar');
    }
  }

  @override
  Future<Either<Exception, bool>> vincularGestoresEspaco(
      {required DateTime dayToInit, required DateTime dayToEnd, required EspacoEntity espacoEntity, required Map<String, Map<String, UsuarioEntity>> gestores}) async {
    try {
      var espacoMap = EspacoDto.fromEntity(espacoEntity).toMap();
      espacoMap['agenda'] = AgendaInitializer.updateGestoresAgenda(dayToInit: dayToInit, dayToEnd: dayToEnd, gestores: gestores);
      // faz um update na tabela
      final result = await dataSource.update(tabela: 'espaco', item: espacoMap);
      return Right(result);
    } catch (e) {
      return Left(Exception('erro ao vincular!'));
    }
  }
}
