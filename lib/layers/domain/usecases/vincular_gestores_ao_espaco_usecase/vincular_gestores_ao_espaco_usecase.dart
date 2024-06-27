import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/agenda_entity.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

abstract class VincularGestoresAoEspacoUsecase {
  Future<Either<Exception, bool>> call({required UsuarioEntity usuario, required EspacoEntity espacoEntity, required Map<DateTime, Map<String, AgendaEntity>> newAgenda});
}
