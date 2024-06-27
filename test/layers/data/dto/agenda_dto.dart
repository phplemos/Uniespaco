// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:uniespaco/layers/data/dto/horario_dto.dart';
import 'package:uniespaco/layers/domain/entities/agenda_entity.dart';

class AgendaDto {

  final String? observacao;

  final List<HorarioDto> horarios;
  AgendaDto({
    this.observacao,
    required this.horarios,
  });

  AgendaDto copyWith({
    String? observacao,
    List<HorarioDto>? horarios,
  }) {
    return AgendaDto(
      observacao: observacao ?? this.observacao,
      horarios: horarios ?? this.horarios,
    );
  }

  factory AgendaDto.fromFirestore(DocumentSnapshot<Map<String, dynamic>> snapshot, SnapshotOptions? options) {
    final data = snapshot.data();
    return AgendaDto(
        observacao: data?['observacao'],
        horarios: data?['horarios'] is Iterable
            ? data!['horarios']
                .map(
                  (horario) => HorarioDto.fromMap(horario),
                )
                .toList()
            : []);
  }

  Map<String, dynamic> toFirestore() {
    return {
      "observacao": observacao,
      "horarios": horarios.map((horario) => horario.toFirestore()).toList(),
    };
  }

  AgendaEntity toEntity() {
    return AgendaEntity(
      observacao: observacao,
      horarios: horarios.map((e) => e.toEntity()).toList(),
    );
  }

  factory AgendaDto.fromEntity(AgendaEntity agendaEntity) {
    return AgendaDto(
      observacao: agendaEntity.observacao,
      horarios: agendaEntity.horarios.map((horario) => HorarioDto.fromEntity(horario)).toList(),
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'observacao': observacao,
      'horarios': horarios.map((HorarioDto x) => x.toMap()).toList(),
    };
  }

  factory AgendaDto.fromMap(Map<String, dynamic> map) {
    return AgendaDto(
      observacao: map['observacao'] != null ? map['observacao'] as String : null,
      horarios: List<HorarioDto>.from(
        (map['horarios']).map<HorarioDto>(
          (x) => HorarioDto.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory AgendaDto.fromJson(String source) => AgendaDto.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AgendaDto(observacao: $observacao, horarios: $horarios)';
  }

  @override
  bool operator ==(covariant AgendaDto other) {
    if (identical(this, other)) return true;

    return other.observacao == observacao && listEquals(other.horarios, horarios);
  }

  @override
  int get hashCode {
    return observacao.hashCode ^ horarios.hashCode;
  }
}
