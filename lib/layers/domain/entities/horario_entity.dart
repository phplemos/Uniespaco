class HorarioEntity {
  final String inicio;

  final String fim;

  String? gestorServico;

  String? gestorReserva;

  final bool isReserved;

  final String? solicitanteReservaId;

  final String? solicitanteServicoId;

  HorarioEntity({
    required this.inicio,
    required this.fim,
    required this.gestorReserva,
    required this.gestorServico,
    required this.isReserved,
    this.solicitanteReservaId,
    this.solicitanteServicoId,
  });

  @override
  String toString() {
    return 'HorarioEntity(inicio: $inicio, fim: $fim, gestorServico: $gestorServico, gestorReserva: $gestorReserva isReserved: $isReserved, solicitanteReservaId: $solicitanteReservaId, solicitanteServicoId: $solicitanteServicoId)';
  }

  @override
  bool operator ==(other) {
    return (other is HorarioEntity) && other.inicio == inicio && other.fim == fim && other.gestorReserva == gestorReserva && other.gestorServico == gestorServico && other.isReserved == isReserved && other.solicitanteReservaId == solicitanteReservaId && other.solicitanteServicoId == solicitanteServicoId;
  }

  @override
  int get hashCode => inicio.hashCode ^ fim.hashCode ^ gestorReserva.hashCode ^ gestorServico.hashCode ^ isReserved.hashCode ^ solicitanteReservaId.hashCode ^ solicitanteServicoId.hashCode;
}
