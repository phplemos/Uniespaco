import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/espaco_repository.dart';
import 'package:uniespaco/layers/domain/usecases/vincular_gestor_de_reserva_ao_espaco_usecase/vincular_gestor_de_reserva_ao_espaco_usecase.dart';

class VincularGestorDeReservaAoEspacoUseCaseImpl implements VincularGestorDeReservaAoEspacoUseCase {
  final EspacoRepository _espacoRepository;

  VincularGestorDeReservaAoEspacoUseCaseImpl({required EspacoRepository espacoRepository}) : _espacoRepository = espacoRepository;

  @override
  Future<Either<Exception, bool>> call({required UsuarioEntity gestorReserva, required EspacoEntity espaco}) {
    return _espacoRepository.vincularGestorReservaEspaco(gestorReserva: gestorReserva, espacoEntity: espaco);
  }
}
