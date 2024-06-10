import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/agenda_entity.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/repositories/espaco_repository.dart';
import 'package:uniespaco/layers/domain/usecases/vincular_gestores_ao_espaco_usecase/vincular_gestores_ao_espaco_usecase.dart';

class VincularGestoresAoEspacoUsecaseImpl implements VincularGestoresAoEspacoUsecase {
  final EspacoRepository espacoRepository;

  VincularGestoresAoEspacoUsecaseImpl({required this.espacoRepository});

  @override
  Future<Either<Exception, bool>> call({required EspacoEntity espacoEntity, required Map<String, Map<String, AgendaEntity>> newAgenda}) {
    return espacoRepository.vincularGestoresEspaco(espacoEntity: espacoEntity, newAgenda: newAgenda);
  }
}
