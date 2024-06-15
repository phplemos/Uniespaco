// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:uniespaco/layers/data/dto/horario_dto.dart';
import 'package:uniespaco/layers/domain/entities/servico_entity.dart';

class ServicoDto {
  String? id;
  final String espacoId;
  final String solicitanteId;
  final String titulo;
  final String descricao;
  final String status;
  final List<HorarioDto> periodo;

  ServicoDto({
    this.id,
    required this.espacoId,
    required this.solicitanteId,
    required this.titulo,
    required this.descricao,
    required this.status,
    required this.periodo,
  });

  ServicoDto copyWith({
    String? id,
    String? espacoId,
    String? solicitanteId,
    String? titulo,
    String? descricao,
    String? status,
    List<HorarioDto>? periodo,
  }) {
    return ServicoDto(
      id: id ?? this.id,
      espacoId: espacoId ?? this.espacoId,
      solicitanteId: solicitanteId ?? this.solicitanteId,
      titulo: titulo ?? this.titulo,
      descricao: descricao ?? this.descricao,
      status: status ?? this.status,
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
      periodo: periodo.map((e) => e.toEntity()).toList(),
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
      periodo: servicoEntity.periodo.map((e) => HorarioDto.fromEntity(e)).toList(),
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
      'periodo': periodo.map((x) => x.toMap()).toList(),
    };
  }

  factory ServicoDto.fromMap(Map<String, dynamic> map) {
    return ServicoDto(
      id: map['id'] as String,
      espacoId: map['espacoId'],
      solicitanteId: map['solicitanteId'],
      titulo: map['titulo'],
      descricao: map['descricao'] as String,
      status: map['status'] as String,
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
    return 'ServicoDto(id: $id, espacoId: $espacoId, titulo: $titulo, solicitanteId: $solicitanteId, descricao: $descricao, status: $status, periodo: $periodo)';
  }

  @override
  bool operator ==(covariant ServicoDto other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.titulo == titulo &&
        other.descricao == descricao &&
        other.status == status &&
        other.solicitanteId == solicitanteId &&
        listEquals(other.periodo, periodo) &&
        other.espacoId == espacoId;
  }

  @override
  int get hashCode {
    return id.hashCode ^ titulo.hashCode ^ descricao.hashCode ^ status.hashCode ^ solicitanteId.hashCode ^ periodo.hashCode ^ espacoId.hashCode;
  }
}
