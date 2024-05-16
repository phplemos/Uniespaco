import 'package:flutter/foundation.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/horario_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

class ReservaEntity {
  final String id;
  final EspacoEntity espaco;
  final UsuarioEntity solicitante;
  final String descricao;
  final String status;
  final List<HorarioEntity> periodo;

  ReservaEntity({
    required this.id,
    required this.espaco,
    required this.solicitante,
    required this.descricao,
    required this.status,
    required this.periodo,
  });


  @override
  String toString() {
    return 'ReservaEntity(id: $id, espaco: $espaco, solicitante: $solicitante, descricao: $descricao, status: $status, periodo: $periodo)';
  }

  @override
  bool operator ==(covariant ReservaEntity other) {
    if (identical(this, other)) return true;

    return other.id == id && other.espaco == espaco && other.solicitante == solicitante && other.descricao == descricao && other.status == status && listEquals(other.periodo, periodo);
  }

  @override
  int get hashCode {
    return id.hashCode ^ espaco.hashCode ^ solicitante.hashCode ^ descricao.hashCode ^ status.hashCode ^ periodo.hashCode;
  }
}
