// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:uniespaco/layers/domain/entities/horario_entity.dart';

class AgendaEntity {
  String? observacao;

  List<HorarioEntity> horarios;

  AgendaEntity({
    this.observacao,
    required this.horarios,
  });

  @override
  String toString() {
    return 'AgendaEntity(observacao: $observacao, horarios: $horarios)';
  }

  @override
  bool operator ==(other) {
    return (other is AgendaEntity) && other.observacao == observacao && listEquals(other.horarios, horarios);
  }

  @override
  int get hashCode => observacao.hashCode ^ horarios.hashCode;
}
