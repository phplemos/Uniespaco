// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:uniespaco/layers/data/dto/horario_dto.dart';
import 'package:uniespaco/layers/domain/entities/servico_entity.dart';

class ServicoDto {
  String? id;
  final String espacoId;
  final String solicitanteId;
  final String titulo;
  final String descricao;
  String status;
  DateTime dia;
  List<HorarioDto?> periodo;

  ServicoDto({
    this.id,
    required this.espacoId,
    required this.solicitanteId,
    required this.titulo,
    required this.descricao,
    required this.status,
    required this.dia,
    required this.periodo,
  });

  ServicoDto copyWith({
    String? id,
    String? espacoId,
    String? solicitanteId,
    String? titulo,
    String? descricao,
    String? status,
    DateTime? dia,
    List<HorarioDto?>? periodo,
  }) {
    return ServicoDto(
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

  ServicoEntity toEntity() {
    return ServicoEntity(
      id: id,
      espacoId: espacoId,
      solicitanteId: solicitanteId,
      titulo: titulo,
      descricao: descricao,
      status: status,
      dia: dia,
      periodo: periodo.map((e) => e?.toEntity()).toList(),
    );
  }

  factory ServicoDto.fromEntity(ServicoEntity servicoEntity) {
    return ServicoDto(
      id: servicoEntity.id,
      espacoId: servicoEntity.espacoId,
      solicitanteId: servicoEntity.solicitanteId,
      titulo: servicoEntity.titulo,
      descricao: servicoEntity.descricao,
      status: servicoEntity.status,
      dia: servicoEntity.dia,
      periodo: servicoEntity.periodo.map((e) => e != null ? HorarioDto.fromEntity(e) : null).toList(),
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
      'periodo': periodo.map((x) => x?.toMap()).toList(),
    };
  }

  factory ServicoDto.fromMap(Map<String, dynamic> map) {
    DateFormat dateFormat = DateFormat('yyyy-MM-dd');
    return ServicoDto(
      id: map['id'] as String,
      espacoId: map['espacoId'],
      solicitanteId: map['solicitanteId'],
      titulo: map['titulo'],
      descricao: map['descricao'] as String,
      status: map['status'] as String,
      dia: dateFormat.parse(map['dia']),
      periodo: map['periodo'] != null
          ? List<HorarioDto>.from(
              (map['periodo']).map<HorarioDto>(
                (x) => HorarioDto.fromMap(x as Map<String, dynamic>),
              ),
            )
          : [],
    );
  }

  String toJson() => json.encode(toMap());

  factory ServicoDto.fromJson(String source) => ServicoDto.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ServicoDto(id: $id, espacoId: $espacoId, titulo: $titulo, solicitanteId: $solicitanteId, descricao: $descricao, status: $status, dia: $dia, periodo: $periodo)';
  }

  @override
  bool operator ==(covariant ServicoDto other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.titulo == titulo &&
        other.descricao == descricao &&
        other.status == status &&
        other.solicitanteId == solicitanteId &&
        other.dia == dia &&
        listEquals(other.periodo, periodo) &&
        other.espacoId == espacoId;
  }

  @override
  int get hashCode {
    return id.hashCode ^ titulo.hashCode ^ descricao.hashCode ^ status.hashCode ^ solicitanteId.hashCode ^ dia.hashCode ^ periodo.hashCode ^ espacoId.hashCode;
  }
}
