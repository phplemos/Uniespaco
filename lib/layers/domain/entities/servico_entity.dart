import 'package:flutter/foundation.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/horario_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

class ServicoEntity {
  final String id;
  final String descricao;
  final String status;
  final UsuarioEntity solicitante;
  final List<HorarioEntity> periodo;
  final EspacoEntity espaco;
  ServicoEntity({
    required this.id,
    required this.descricao,
    required this.status,
    required this.solicitante,
    required this.periodo,
    required this.espaco,
  });

  ServicoEntity copyWith({
    String? id,
    String? descricao,
    String? status,
    UsuarioEntity? solicitante,
    List<HorarioEntity>? periodo,
    EspacoEntity? espaco,
  }) {
    return ServicoEntity(
      id: id ?? this.id,
      descricao: descricao ?? this.descricao,
      status: status ?? this.status,
      solicitante: solicitante ?? this.solicitante,
      periodo: periodo ?? this.periodo,
      espaco: espaco ?? this.espaco,
    );
  }

  @override
  String toString() {
    return 'ServicoEntity(id: $id, descricao: $descricao, status: $status, solicitante: $solicitante, periodo: $periodo, espaco: $espaco)';
  }

  @override
  bool operator ==(covariant ServicoEntity other) {
    if (identical(this, other)) return true;

    return other.id == id && other.descricao == descricao && other.status == status && other.solicitante == solicitante && listEquals(other.periodo, periodo) && other.espaco == espaco;
  }

  @override
  int get hashCode {
    return id.hashCode ^ descricao.hashCode ^ status.hashCode ^ solicitante.hashCode ^ periodo.hashCode ^ espaco.hashCode;
  }
}
