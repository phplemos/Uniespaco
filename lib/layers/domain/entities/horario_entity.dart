import 'package:uniespaco/layers/data/dto/horario_dto.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';

class HorarioEntity {
  final DateTime inicio;

  final DateTime fim;

  final bool isReserved;

  final ReservaEntity? solicitanteReserva;

  HorarioEntity({
    required this.inicio,
    required this.fim,
    required this.isReserved,
    this.solicitanteReserva,
  });

  HorarioDto toDto() {
    return HorarioDto(inicio: inicio, fim: fim, isReserved: isReserved, solicitanteReserva: solicitanteReserva?.toDto());
  }

  factory HorarioEntity.fromDto(HorarioDto horarioDto) {
    return HorarioEntity(
      inicio: horarioDto.inicio,
      fim: horarioDto.fim,
      isReserved: horarioDto.isReserved,
      solicitanteReserva: horarioDto.solicitanteReserva != null ? ReservaEntity.fromDto(horarioDto.solicitanteReserva!) : null,
    );
  }
}
