// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:uniespaco/layers/data/dto/espaco_dto.dart';
import 'package:uniespaco/layers/data/dto/horario_dto.dart';
import 'package:uniespaco/layers/data/dto/usuario_dto.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';

class ReservaDto {
  final String id;
  final EspacoDto espaco;
  final UsuarioDto solicitante;
  final String descricao;
  final String status;
  final List<HorarioDto> periodo;
  ReservaDto({
    required this.id,
    required this.espaco,
    required this.solicitante,
    required this.descricao,
    required this.status,
    required this.periodo,
  });

  ReservaEntity toEntity() {
    return ReservaEntity(
      id: id,
      espaco: espaco.toEntity(),
      solicitante: solicitante.toEntity(),
      descricao: descricao,
      status: status,
      periodo: periodo.map((e) => e.toEntity()).toList(),
    );
  }

  factory ReservaDto.fromEntity(ReservaEntity reserva) {
    return ReservaDto(
      id: reserva.id,
      espaco: EspacoDto.fromEntity(reserva.espaco),
      solicitante: UsuarioDto.fromEntity(reserva.solicitante),
      descricao: reserva.descricao,
      status: reserva.status,
      periodo: reserva.periodo.map((e) => HorarioDto.fromEntity(e)).toList(),
    );
  }
  ReservaDto copyWith({
    String? id,
    EspacoDto? espaco,
    UsuarioDto? solicitante,
    String? descricao,
    String? status,
    List<HorarioDto>? periodo,
  }) {
    return ReservaDto(
      id: id ?? this.id,
      espaco: espaco ?? this.espaco,
      solicitante: solicitante ?? this.solicitante,
      descricao: descricao ?? this.descricao,
      status: status ?? this.status,
      periodo: periodo ?? this.periodo,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'espaco': espaco.toMap(),
      'solicitante': solicitante.toMap(),
      'descricao': descricao,
      'status': status,
      'periodo': periodo.map((x) => x.toMap()).toList(),
    };
  }

  factory ReservaDto.fromMap(Map<String, dynamic> map) {
    return ReservaDto(
      id: map['id'] as String,
      espaco: EspacoDto.fromMap(map['espaco'] as Map<String, dynamic>),
      solicitante:
          UsuarioDto.fromMap(map['solicitante'] as Map<String, dynamic>),
      descricao: map['descricao'] as String,
      status: map['status'] as String,
      periodo: List<HorarioDto>.from(
        (map['periodo'] as List<int>).map<HorarioDto>(
          (x) => HorarioDto.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory ReservaDto.fromJson(String source) =>
      ReservaDto.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ReservaDto(id: $id, espaco: $espaco, solicitante: $solicitante, descricao: $descricao, status: $status, periodo: $periodo)';
  }

  @override
  bool operator ==(covariant ReservaDto other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.espaco == espaco &&
        other.solicitante == solicitante &&
        other.descricao == descricao &&
        other.status == status &&
        listEquals(other.periodo, periodo);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        espaco.hashCode ^
        solicitante.hashCode ^
        descricao.hashCode ^
        status.hashCode ^
        periodo.hashCode;
  }
}
