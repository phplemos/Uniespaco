// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:uniespaco/layers/data/dto/horario_dto.dart';
import 'package:uniespaco/layers/data/dto/usuario_dto.dart';
import 'package:uniespaco/layers/domain/entities/agenda_entity.dart';

class AgendaDto {
  final String id;

  final String? observacao;

  final UsuarioDto gestorServico;

  final UsuarioDto gestorReserva;

  final List<HorarioDto> horarios;
  
  AgendaDto({
    required this.id,
    this.observacao,
    required this.gestorServico,
    required this.gestorReserva,
    required this.horarios,
  });

  AgendaEntity toEntity() {
    return AgendaEntity(
      id: id,
      observacao: observacao,
      gestorServico: gestorServico.toEntity(),
      gestorReserva: gestorReserva.toEntity(),
      horarios: horarios.map((e) => e.toEntity()).toList(),
    );
  }

  factory AgendaDto.fromEntity(AgendaEntity agenda) {
    return AgendaDto(
      id: agenda.id,
      observacao: agenda.observacao,
      gestorServico: UsuarioDto.fromEntity(agenda.gestorServico),
      gestorReserva: UsuarioDto.fromEntity(agenda.gestorReserva),
      horarios: agenda.horarios.map((e) => HorarioDto.fromEntity(e)).toList(),
    );
  }

  AgendaDto copyWith({
    String? id,
    String? observacao,
    UsuarioDto? gestorServico,
    UsuarioDto? gestorReserva,
    List<HorarioDto>? horarios,
  }) {
    return AgendaDto(
      id: id ?? this.id,
      observacao: observacao ?? this.observacao,
      gestorServico: gestorServico ?? this.gestorServico,
      gestorReserva: gestorReserva ?? this.gestorReserva,
      horarios: horarios ?? this.horarios,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'observacao': observacao,
      'gestorServico': gestorServico.toMap(),
      'gestorReserva': gestorReserva.toMap(),
      'horarios': horarios.map((x) => x.toMap()).toList(),
    };
  }

  factory AgendaDto.fromMap(Map<String, dynamic> map) {
    return AgendaDto(
      id: map['id'] as String,
      observacao:
          map['observacao'] != null ? map['observacao'] as String : null,
      gestorServico:
          UsuarioDto.fromMap(map['gestorServico'] as Map<String, dynamic>),
      gestorReserva:
          UsuarioDto.fromMap(map['gestorReserva'] as Map<String, dynamic>),
      horarios: List<HorarioDto>.from(
        (map['horarios'] as List<int>).map<HorarioDto>(
          (x) => HorarioDto.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory AgendaDto.fromJson(String source) =>
      AgendaDto.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AgendaDto(id: $id, observacao: $observacao, gestorServico: $gestorServico, gestorReserva: $gestorReserva, horarios: $horarios)';
  }

  @override
  bool operator ==(covariant AgendaDto other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.observacao == observacao &&
        other.gestorServico == gestorServico &&
        other.gestorReserva == gestorReserva &&
        listEquals(other.horarios, horarios);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        observacao.hashCode ^
        gestorServico.hashCode ^
        gestorReserva.hashCode ^
        horarios.hashCode;
  }
}
