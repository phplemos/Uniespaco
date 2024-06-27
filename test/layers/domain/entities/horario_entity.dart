class HorarioEntity {
  String? id;

  final String inicio;

  final String fim;

  String? gestorServico;

  String? gestorReserva;

  bool isReserved;

  String? reservaId;

  String? servicoId;

  HorarioEntity({
    this.id,
    required this.inicio,
    required this.fim,
    required this.gestorReserva,
    required this.gestorServico,
    this.isReserved = false,
    this.reservaId,
    this.servicoId,
  });

  @override
  String toString() {
    return 'HorarioEntity( id: $id, inicio: $inicio, fim: $fim, gestorServico: $gestorServico, gestorReserva: $gestorReserva isReserved: $isReserved, reservaId: $reservaId, servicoId: $servicoId)';
  }

  @override
  bool operator ==(other) {
    return (other is HorarioEntity) &&
        other.id == id &&
        other.inicio == inicio &&
        other.fim == fim &&
        other.gestorReserva == gestorReserva &&
        other.gestorServico == gestorServico &&
        other.isReserved == isReserved &&
        other.reservaId == reservaId &&
        other.servicoId == servicoId;
  }

  @override
  int get hashCode => id.hashCode ^ inicio.hashCode ^ fim.hashCode ^ gestorReserva.hashCode ^ gestorServico.hashCode ^ isReserved.hashCode ^ reservaId.hashCode ^ servicoId.hashCode;
}
