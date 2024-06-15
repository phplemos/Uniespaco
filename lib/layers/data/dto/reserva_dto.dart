// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:uniespaco/layers/data/dto/horario_dto.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';

class ReservaDto {
  String? id;
  final String espacoId;
  final String solicitanteId;
  final String titulo;
  final String descricao;
  final String status;
  final DateTime dia;
  final List<HorarioDto> periodo;

  ReservaDto({
    this.id,
    required this.espacoId,
    required this.solicitanteId,
    required this.titulo,
    required this.descricao,
    required this.status,
    required this.dia,
    required this.periodo,
  });

  ReservaDto copyWith({
    String? id,
    String? espacoId,
    String? solicitanteId,
    String? titulo,
    String? descricao,
    String? status,
    DateTime? dia,
    List<HorarioDto>? periodo,
  }) {
    return ReservaDto(
      id: id ?? this.id,
      espacoId: espacoId ?? this.espacoId,
      solicitanteId: solicitanteId ?? this.solicitanteId,
      titulo: titulo ?? this.titulo,
      descricao: descricao ?? this.descricao,
      status: status ?? this.status,
      dia: dia ?? this.dia,
      periodo: periodo ?? this.periodo,
    );
  }

  ReservaEntity toEntity() {
    return ReservaEntity(
      id: id,
      espacoId: espacoId,
      solicitanteId: solicitanteId,
      titulo: titulo,
      descricao: descricao,
      status: status,
      dia: dia,
      periodo: periodo.map((e) => e.toEntity()).toList(),
    );
  }

  factory ReservaDto.fromEntity(ReservaEntity reservaEntity) {
    return ReservaDto(
      id: reservaEntity.id,
      espacoId: reservaEntity.espacoId,
      solicitanteId: reservaEntity.solicitanteId,
      titulo: reservaEntity.titulo,
      descricao: reservaEntity.descricao,
      status: reservaEntity.status,
      dia: reservaEntity.dia,
      periodo: reservaEntity.periodo.map((e) => HorarioDto.fromEntity(e)).toList(),
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'espacoId': espacoId,
      'solicitanteId': solicitanteId,
      'titulo': titulo,
      'descricao': descricao,
      'status': status,
      'dia': dia.toString() as String,
      'periodo': periodo.map((x) => x.toMap()).toList(),
    };
  }

  factory ReservaDto.fromMap(Map<String, dynamic> map) {
    DateFormat dateFormat = DateFormat('yyyy-MM-dd');
    return ReservaDto(
      id: map['id'] as String,
      espacoId: map['espacoId'],
      solicitanteId: map['solicitanteId'],
      titulo: map['titulo'],
      descricao: map['descricao'] as String,
      status: map['status'] as String,
      dia: dateFormat.parse(map['dia']),
      periodo: List<HorarioDto>.from(
        (map['periodo']).map<HorarioDto>(
          (x) => HorarioDto.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory ReservaDto.fromJson(String source) => ReservaDto.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ReservaDto(id: $id, espaco: $espacoId, solicitante: $solicitanteId, titulo: $titulo, descricao: $descricao, status: $status, dia: $dia, periodo: $periodo)';
  }

  @override
  bool operator ==(covariant ReservaDto other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.espacoId == espacoId &&
        other.solicitanteId == solicitanteId &&
        other.titulo == titulo &&
        other.descricao == descricao &&
        other.status == status &&
        other.dia == dia &&
        listEquals(other.periodo, periodo);
  }

  @override
  int get hashCode {
    return id.hashCode ^ espacoId.hashCode ^ solicitanteId.hashCode ^ titulo.hashCode ^ descricao.hashCode ^ status.hashCode ^ dia.hashCode ^ periodo.hashCode;
  }
}
