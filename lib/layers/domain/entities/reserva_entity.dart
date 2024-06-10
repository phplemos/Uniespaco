import 'package:flutter/foundation.dart';
import 'package:uniespaco/layers/domain/entities/horario_entity.dart';

class ReservaEntity {

  final String id;

  final String espacoId;

  final String solicitanteId;

  final String descricao;

  final String status;

  final List<HorarioEntity> periodo;
  
  ReservaEntity({
    required this.id,
    required this.espacoId,
    required this.solicitanteId,
    required this.descricao,
    required this.status,
    required this.periodo,
  });

  @override
  String toString() {
    return 'ReservaEntity(id: $id, espaco: $espacoId, solicitante: $solicitanteId, descricao: $descricao, status: $status, periodo: $periodo)';
  }

  @override
  bool operator ==(other) {
    return (other is ReservaEntity) && other.id == id && other.espacoId == espacoId && other.solicitanteId == solicitanteId && other.descricao == descricao && other.status == status && listEquals(other.periodo, periodo);
  }

  @override
  int get hashCode => id.hashCode ^ espacoId.hashCode ^ solicitanteId.hashCode ^ descricao.hashCode ^ status.hashCode ^ periodo.hashCode;
}
