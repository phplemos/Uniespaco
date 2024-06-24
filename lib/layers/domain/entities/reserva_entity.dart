import 'package:flutter/foundation.dart';
import 'package:uniespaco/layers/domain/entities/horario_entity.dart';

class ReservaEntity {
  String? id;

  final String espacoId;

  final String solicitanteId;

  final String titulo;

  final String descricao;

  String status;

  DateTime dia;

  final List<HorarioEntity> periodo;

  ReservaEntity({
    this.id,
    required this.espacoId,
    required this.solicitanteId,
    required this.titulo,
    required this.descricao,
    required this.status,
    required this.dia,
    required this.periodo,
  });

  @override
  String toString() {
    return 'ReservaEntity(id: $id, espaco: $espacoId, solicitante: $solicitanteId, titulo: $titulo, descricao: $descricao, status: $status, dia: $dia, periodo: $periodo)';
  }

  @override
  bool operator ==(other) {
    return (other is ReservaEntity) &&
        other.id == id &&
        other.espacoId == espacoId &&
        other.solicitanteId == solicitanteId &&
        other.titulo == titulo &&
        other.descricao == descricao &&
        other.status == status &&
        other.dia == dia &&
        listEquals(other.periodo, periodo);
  }

  @override
  int get hashCode => id.hashCode ^ espacoId.hashCode ^ solicitanteId.hashCode ^ titulo.hashCode ^ descricao.hashCode ^ status.hashCode ^ dia.hashCode ^ periodo.hashCode;
}
