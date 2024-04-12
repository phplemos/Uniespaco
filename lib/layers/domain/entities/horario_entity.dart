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
}
