// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:uniespaco/layers/data/dto/agenda_dto.dart';
import 'package:uniespaco/layers/data/dto/equipamento_dto.dart';
import 'package:uniespaco/layers/data/dto/localizacao_dto.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';

class EspacoDto {
  final String id;

  final LocalizacaoDto localizacao;

  final int capacidadePessoas;

  final List<EquipamentoDto>? equipamentoDisponivel;

  final bool acessibilidade;

  Map<DateTime, Map<String, AgendaDto>> agenda;

  EspacoDto({
    required this.id,
    required this.localizacao,
    required this.capacidadePessoas,
    this.equipamentoDisponivel,
    required this.acessibilidade,
    required this.agenda,
  });

  EspacoDto copyWith({
    String? id,
    LocalizacaoDto? localizacao,
    int? capacidadePessoas,
    List<EquipamentoDto>? equipamentoDisponivel,
    bool? acessibilidade,
    Map<DateTime, Map<String, AgendaDto>>? agenda,
  }) {
    return EspacoDto(
      id: id ?? this.id,
      localizacao: localizacao ?? this.localizacao,
      capacidadePessoas: capacidadePessoas ?? this.capacidadePessoas,
      equipamentoDisponivel: equipamentoDisponivel ?? this.equipamentoDisponivel,
      acessibilidade: acessibilidade ?? this.acessibilidade,
      agenda: agenda ?? this.agenda,
    );
  }

  factory EspacoDto.fromFirestore(DocumentSnapshot<Map<String, dynamic>> snapshot, SnapshotOptions? options) {
    final data = snapshot.data();
    return EspacoDto(
      id: data?['id'],
      localizacao: LocalizacaoDto.fromMap(data!['localizacao']),
      capacidadePessoas: data['capacidadePessoas'],
      equipamentoDisponivel: data['equipamentoDisponivel'] != null
          ? List<EquipamentoDto>.from(
              (data['equipamentoDisponivel']).map<EquipamentoDto?>(
                (x) => EquipamentoDto.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      acessibilidade: data['acessibilidade'],
      agenda: data['agenda'].isNotEmpty
          ? Map<DateTime, Map<String, AgendaDto>>.from((data['agenda'] as Map<String, dynamic>).map<DateTime, Map<String, AgendaDto>>((String key, value) {
              //CRIAR A CONVERSAO DE YYYY-MM-DD PARA DATETIME
              DateFormat dateFormat = DateFormat('yyyy-MM-dd');
              return MapEntry(dateFormat.parse(key), (value as Map<String, dynamic>).map<String, AgendaDto>((String key, value) => MapEntry(key, AgendaDto.fromMap(value as Map<String, dynamic>))));
            }))
          : {},
    );
  }
  Map<String, dynamic> toFirestore() {
    return {
      'id': id,
      'localizacao': localizacao.toMap(),
      'capacidadePessoas': capacidadePessoas,
      'equipamentoDisponivel': equipamentoDisponivel?.map((x) => x.toMap()).toList(),
      'acessibilidade': acessibilidade,
      'agenda': agenda.map((key, value) => MapEntry(key.toString(), value.map((key, value) => MapEntry(key, value.toMap())))),
    };
  }

  EspacoEntity toEntity() {
    return EspacoEntity(
      id: id,
      localizacao: localizacao.toEntity(),
      capacidadePessoas: capacidadePessoas,
      equipamentoDisponivel: equipamentoDisponivel?.map((e) => e.toEntity()).toList(),
      acessibilidade: acessibilidade,
      agenda: agenda.map((key, value) => MapEntry(key, value.map((key, value) => MapEntry(key, value.toEntity())))),
    );
  }

  factory EspacoDto.fromEntity(EspacoEntity espacoEntity) {
    return EspacoDto(
      id: espacoEntity.id,
      localizacao: LocalizacaoDto.fromEntity(espacoEntity.localizacao),
      capacidadePessoas: espacoEntity.capacidadePessoas,
      equipamentoDisponivel: espacoEntity.equipamentoDisponivel?.map((e) => EquipamentoDto.fromEntity(e)).toList(),
      acessibilidade: espacoEntity.acessibilidade,
      agenda: espacoEntity.agenda.map((key, value) => MapEntry(key, value.map((key, value) => MapEntry(key, AgendaDto.fromEntity(value))))),
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'localizacao': localizacao.toMap(),
      'capacidadePessoas': capacidadePessoas,
      'equipamentoDisponivel': equipamentoDisponivel?.map((x) => x.toMap()).toList(),
      'acessibilidade': acessibilidade,
      'agenda': agenda.map((key, value) => MapEntry(key.toString(), value.map((key, value) => MapEntry(key, value.toMap())))),
    };
  }

  factory EspacoDto.fromMap(Map<String, dynamic> map) {
    return EspacoDto(
      id: map['id'] as String,
      localizacao: LocalizacaoDto.fromMap(map['localizacao'] as Map<String, dynamic>),
      capacidadePessoas: map['capacidadePessoas'] as int,
      equipamentoDisponivel: map['equipamentoDisponivel'] != null
          ? List<EquipamentoDto>.from(
              (map['equipamentoDisponivel']).map<EquipamentoDto?>(
                (x) => EquipamentoDto.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      acessibilidade: map['acessibilidade'] as bool,
      agenda: map['agenda'].isNotEmpty
          ? Map<DateTime, Map<String, AgendaDto>>.from((map['agenda'] as Map<String, dynamic>).map<DateTime, Map<String, AgendaDto>>((String key, value) {
              //CRIAR A CONVERSAO DE YYYY-MM-DD PARA DATETIME
              DateFormat dateFormat = DateFormat('yyyy-MM-dd');
              return MapEntry(dateFormat.parse(key), (value as Map<String, dynamic>).map<String, AgendaDto>((String key, value) => MapEntry(key, AgendaDto.fromMap(value as Map<String, dynamic>))));
            }))
          : {},
    );
  }

  String toJson() => json.encode(toMap());

  factory EspacoDto.fromJson(String source) => EspacoDto.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'EspacoDto(id: $id, localizacao: $localizacao, capacidadePessoas: $capacidadePessoas, equipamentoDisponivel: $equipamentoDisponivel, acessibilidade: $acessibilidade, agenda: $agenda)';
  }

  @override
  bool operator ==(covariant EspacoDto other) {
    if (identical(this, other)) return true;

    return other.id == id && other.localizacao == localizacao && other.capacidadePessoas == capacidadePessoas && listEquals(other.equipamentoDisponivel, equipamentoDisponivel) && other.acessibilidade == acessibilidade && mapEquals(other.agenda, agenda);
  }

  @override
  int get hashCode {
    return id.hashCode ^ localizacao.hashCode ^ capacidadePessoas.hashCode ^ equipamentoDisponivel.hashCode ^ acessibilidade.hashCode ^ agenda.hashCode ;
  }
}
