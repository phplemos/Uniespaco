import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/agenda_entity.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';

abstract class VincularGestoresAoEspacoUsecase {
  Future<Either<Exception, bool>> call({required EspacoEntity espacoEntity, required Map<String, Map<String, AgendaEntity>> newAgenda});
}
