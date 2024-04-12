// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:uniespaco/layers/data/dto/espaco_dto.dart';
import 'package:uniespaco/layers/data/dto/horario_dto.dart';
import 'package:uniespaco/layers/data/dto/usuario_dto.dart';
import 'package:uniespaco/layers/domain/entities/servico_entity.dart';

class ServicoDto {
  final String id;
  final String descricao;
  final String status;
  final UsuarioDto solicitante;
  final List<HorarioDto> periodo;
  final EspacoDto espaco;

  ServicoDto({
    required this.id,
    required this.descricao,
    required this.status,
    required this.solicitante,
    required this.periodo,
    required this.espaco,
  });

  ServicoEntity toEntity() {
    return ServicoEntity(
      id: id,
      descricao: descricao,
      status: status,
      solicitante: solicitante.toEntity(),
      periodo: periodo.map((e) => e.toEntity()).toList(),
      espaco: espaco.toEntity(),
    );
  }

  factory ServicoDto.fromEntity(ServicoEntity servico) {
    return ServicoDto(
      id: servico.id,
      descricao: servico.descricao,
      status: servico.status,
      solicitante: UsuarioDto.fromEntity(servico.solicitante),
      periodo: servico.periodo.map((e) => HorarioDto.fromEntity(e)).toList(),
      espaco: EspacoDto.fromEntity(servico.espaco),
    );
  }

  ServicoDto copyWith({
    String? id,
    String? descricao,
    String? status,
    UsuarioDto? solicitante,
    List<HorarioDto>? periodo,
    EspacoDto? espaco,
  }) {
    return ServicoDto(
      id: id ?? this.id,
      descricao: descricao ?? this.descricao,
      status: status ?? this.status,
      solicitante: solicitante ?? this.solicitante,
      periodo: periodo ?? this.periodo,
      espaco: espaco ?? this.espaco,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'descricao': descricao,
      'status': status,
      'solicitante': solicitante.toMap(),
      'periodo': periodo.map((x) => x.toMap()).toList(),
      'espaco': espaco.toMap(),
    };
  }

  factory ServicoDto.fromMap(Map<String, dynamic> map) {
    return ServicoDto(
      id: map['id'] as String,
      descricao: map['descricao'] as String,
      status: map['status'] as String,
      solicitante:
          UsuarioDto.fromMap(map['solicitante'] as Map<String, dynamic>),
      periodo: List<HorarioDto>.from(
        (map['periodo'] as List<int>).map<HorarioDto>(
          (x) => HorarioDto.fromMap(x as Map<String, dynamic>),
        ),
      ),
      espaco: EspacoDto.fromMap(map['espaco'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory ServicoDto.fromJson(String source) =>
      ServicoDto.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ServicoDto(id: $id, descricao: $descricao, status: $status, solicitante: $solicitante, periodo: $periodo, espaco: $espaco)';
  }

  @override
  bool operator ==(covariant ServicoDto other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.descricao == descricao &&
        other.status == status &&
        other.solicitante == solicitante &&
        listEquals(other.periodo, periodo) &&
        other.espaco == espaco;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        descricao.hashCode ^
        status.hashCode ^
        solicitante.hashCode ^
        periodo.hashCode ^
        espaco.hashCode;
  }
}
