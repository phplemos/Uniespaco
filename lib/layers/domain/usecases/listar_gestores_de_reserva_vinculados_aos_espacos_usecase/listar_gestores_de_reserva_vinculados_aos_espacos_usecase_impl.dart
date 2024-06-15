import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/repositories/reserva_repository.dart';

import 'package:uniespaco/layers/domain/usecases/listar_gestores_de_reserva_vinculados_aos_espacos_usecase/listar_gestores_de_reserva_vinculados_aos_espacos_usecase.dart';

class ListarGestoresDeReservaVinculadosAosEspacosUseCaseImpl implements ListarGestoresDeReservaVinculadosAosEspacosUseCase {
  final ReservaRepository reservaRepository;

  ListarGestoresDeReservaVinculadosAosEspacosUseCaseImpl({required this.reservaRepository});

  @override
  Future<Either<Exception, Map<EspacoEntity, List<UsuarioEntity?>>>> call() {
    return reservaRepository.getAllGestoresReservaEspaco();
  }
}
