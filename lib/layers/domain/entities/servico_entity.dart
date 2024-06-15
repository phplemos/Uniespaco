import 'package:flutter/foundation.dart';
import 'package:uniespaco/layers/domain/entities/horario_entity.dart';

class ServicoEntity {

  String? id;
  final String espacoId;
  final String solicitanteId;
  final String titulo;
  final String descricao;
  final String status;
  final List<HorarioEntity> periodo;

  ServicoEntity({
    this.id,
    required this.espacoId,
    required this.solicitanteId,
    required this.titulo,
    required this.descricao,
    required this.status,
    required this.periodo,
  });

  ServicoEntity copyWith({
    String? id,
    String? espacoId,
    String? solicitanteId,
    String? titulo,
    String? descricao,
    String? status,
    List<HorarioEntity>? periodo,
  }) {
    return ServicoEntity(
      id: id ?? this.id,
      titulo: titulo ?? this.titulo,
      descricao: descricao ?? this.descricao,
      status: status ?? this.status,
      solicitanteId: solicitanteId ?? this.solicitanteId,
      periodo: periodo ?? this.periodo,
      espacoId: espacoId ?? this.espacoId,
    );
  }

  @override
  String toString() {
    return 'ServicoEntity(id: $id, titulo: $titulo, descricao: $descricao, status: $status, solicitante: $solicitanteId, periodo: $periodo, espaco: $espacoId)';
  }

  @override
  bool operator ==(covariant ServicoEntity other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.titulo == titulo &&
        other.descricao == descricao &&
        other.status == status &&
        other.solicitanteId == solicitanteId &&
        listEquals(other.periodo, periodo) &&
        other.espacoId == espacoId;
  }

  @override
  int get hashCode {
    return id.hashCode ^ titulo.hashCode ^ descricao.hashCode ^ status.hashCode ^ solicitanteId.hashCode ^ periodo.hashCode ^ espacoId.hashCode;
  }
}
