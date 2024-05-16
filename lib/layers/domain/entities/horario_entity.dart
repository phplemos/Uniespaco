import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';

class HorarioEntity {
  final String inicio;

  final String fim;

  final bool isReserved;

  final ReservaEntity? solicitanteReserva;
  HorarioEntity({
    required this.inicio,
    required this.fim,
    required this.isReserved,
    this.solicitanteReserva,
  });



  @override
  String toString() {
    return 'HorarioEntity(inicio: $inicio, fim: $fim, isReserved: $isReserved, solicitanteReserva: $solicitanteReserva)';
  }

  @override
  bool operator ==(covariant HorarioEntity other) {
    if (identical(this, other)) return true;
  
    return 
      other.inicio == inicio &&
      other.fim == fim &&
      other.isReserved == isReserved &&
      other.solicitanteReserva == solicitanteReserva;
  }

  @override
  int get hashCode {
    return inicio.hashCode ^
      fim.hashCode ^
      isReserved.hashCode ^
      solicitanteReserva.hashCode;
  }
}
