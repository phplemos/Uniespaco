import 'package:dartz/dartz.dart';
import 'package:uniespaco/layers/domain/entities/situacao_solicitacao_enum.dart';
import 'package:uniespaco/layers/domain/repositories/reserva_repository.dart';
import 'package:uniespaco/layers/domain/usecases/alterar_situacao_reserva_usecase/alterar_situacao_reserva_usecase.dart';

class AlterarSituacaoReservaUsecaseImpl implements AlterarSituacaoReservaUsecase {
  final ReservaRepository reservaRepository;

  AlterarSituacaoReservaUsecaseImpl({required this.reservaRepository});

  @override
  Future<Either<Exception, bool>> call({required String reservaId, required Situacao situacao}) {
    return reservaRepository.alterarSituacaoReserva(reservaId: reservaId, situacao: situacao);
  }
}
