// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:uniespaco/layers/domain/entities/horario_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

class AgendaEntity {
  final String id;

  String? observacao;

  UsuarioEntity? gestorServico;

  UsuarioEntity? gestorReserva;

  List<HorarioEntity> horarios;
  AgendaEntity({
    required this.id,
    this.observacao,
    this.gestorServico,
    this.gestorReserva,
    required this.horarios,
  });

  @override
  String toString() {
    return 'AgendaEntity(id: $id, observacao: $observacao, gestorServico: $gestorServico, gestorReserva: $gestorReserva, horarios: $horarios)';
  }

  @override
  bool operator ==(covariant AgendaEntity other) {
    if (identical(this, other)) return true;

    return other.id == id && other.observacao == observacao && other.gestorServico == gestorServico && other.gestorReserva == gestorReserva && listEquals(other.horarios, horarios);
  }

  @override
  int get hashCode {
    return id.hashCode ^ observacao.hashCode ^ gestorServico.hashCode ^ gestorReserva.hashCode ^ horarios.hashCode;
  }
}
