import 'package:flutter/foundation.dart';
import 'package:uniespaco/layers/domain/entities/horario_entity.dart';

class ServicoEntity {
  final String id;

  final String espacoId;

  final String solicitanteId;

  final String descricao;

  final String status;

  final List<HorarioEntity> periodo;

  ServicoEntity({
    required this.id,
    required this.espacoId,
    required this.solicitanteId,
    required this.descricao,
    required this.status,
    required this.periodo,
  });

  ServicoEntity copyWith({
    String? id,
    String? espacoId,
    String? solicitanteId,
    String? descricao,
    String? status,
    List<HorarioEntity>? periodo,
  }) {
    return ServicoEntity(
      id: id ?? this.id,
      descricao: descricao ?? this.descricao,
      status: status ?? this.status,
      solicitanteId: solicitanteId ?? this.solicitanteId,
      periodo: periodo ?? this.periodo,
      espacoId: espacoId ?? this.espacoId,
    );
  }

  @override
  String toString() {
    return 'ServicoEntity(id: $id, descricao: $descricao, status: $status, solicitante: $solicitanteId, periodo: $periodo, espaco: $espacoId)';
  }

  @override
  bool operator ==(covariant ServicoEntity other) {
    if (identical(this, other)) return true;

    return other.id == id && other.descricao == descricao && other.status == status && other.solicitanteId == solicitanteId && listEquals(other.periodo, periodo) && other.espacoId == espacoId;
  }

  @override
  int get hashCode {
    return id.hashCode ^ descricao.hashCode ^ status.hashCode ^ solicitanteId.hashCode ^ periodo.hashCode ^ espacoId.hashCode;
  }
}
