import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/data/datasources/datasource.dart';
import 'package:uniespaco/layers/data/dto/reserva_dto.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/reserva_repository.dart';

class ReservaRepositoryImpl implements ReservaRepository {
  final DataSource dataSource;

  ReservaRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Exception, Map<DateTime, List<ReservaEntity>>>> getAll({required UsuarioEntity usuario}) async {
    try {
      //Solicita do banco o map do usuario
      var response = await dataSource.getItemById(tabela: 'reserva', itemId: '${usuario.id}');
      // Pega o primeiro item da lista pois não há necessariamente uma lista com mapas de reserva
      if (response.isNotEmpty) {
        //Depois converte a chave de String para DateTime e a lista de map para lista de Reserva entity
        Map<DateTime, List<ReservaEntity>> reservas = response['reservas'].map((key, value) => MapEntry(DateTime, value.map((e) => ReservaDto.fromMap(e).toEntity()).toList()));
        return Right(reservas);
      }
      return const Right({});
    } catch (e) {
      return Left(Exception('Erro ao recuperar todas reservas'));
    }
  }

  @override
  Future<Either<Exception, bool>> save({required ReservaEntity reservaEntity}) async {
    try {
      var response = await dataSource.update(tabela: 'reserva', item: ReservaDto.fromEntity(reservaEntity).toMap());
      return Right(response);
    } catch (e) {
      return Left(Exception('Erro ao persistir no banco'));
    }
  }

  @override
  Future<Either<Exception, Map<DateTime, List<ReservaEntity>>>> getByDay({required UsuarioEntity usuario, required DateTime day}) {
    // TODO: implement getByDay
    throw UnimplementedError();
  }
}
