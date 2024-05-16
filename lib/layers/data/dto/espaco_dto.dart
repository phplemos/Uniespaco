// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

import 'package:uniespaco/layers/data/dto/agenda_dto.dart';
import 'package:uniespaco/layers/data/dto/equipamento_dto.dart';
import 'package:uniespaco/layers/data/dto/localizacao_dto.dart';
import 'package:uniespaco/layers/data/dto/servico_dto.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';

class EspacoDto {
  final String id;

  final LocalizacaoDto localizacao;

  final int capacidadePessoas;

  final List<EquipamentoDto>? equipamentoDisponivel;

  final bool acessibilidade;

  Map<DateTime, Map<String, AgendaDto>> agenda;

  final List<ServicoDto>? servicos;

  EspacoDto({
    required this.id,
    required this.localizacao,
    required this.capacidadePessoas,
    this.equipamentoDisponivel,
    required this.acessibilidade,
    required this.agenda,
    this.servicos,
  });

  EspacoDto copyWith({
    String? id,
    LocalizacaoDto? localizacao,
    int? capacidadePessoas,
    List<EquipamentoDto>? equipamentoDisponivel,
    bool? acessibilidade,
    Map<DateTime, Map<String, AgendaDto>>? agenda,
    List<ServicoDto>? servicos,
  }) {
    return EspacoDto(
      id: id ?? this.id,
      localizacao: localizacao ?? this.localizacao,
      capacidadePessoas: capacidadePessoas ?? this.capacidadePessoas,
      equipamentoDisponivel: equipamentoDisponivel ?? this.equipamentoDisponivel,
      acessibilidade: acessibilidade ?? this.acessibilidade,
      agenda: agenda ?? this.agenda,
      servicos: servicos ?? this.servicos,
    );
  }

  EspacoEntity toEntity() {
    return EspacoEntity(
      id: id,
      localizacao: localizacao.toEntity(),
      capacidadePessoas: capacidadePessoas,
      equipamentoDisponivel: equipamentoDisponivel?.map((e) => e.toEntity()).toList(),
      acessibilidade: acessibilidade,
      agenda: agenda.map((key, value) => MapEntry(key, value.map((key, value) => MapEntry(key, value.toEntity())))),
      servicos: servicos?.map((e) => e.toEntity()).toList(),
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
      servicos: espacoEntity.servicos?.map((e) => ServicoDto.fromEntity(e)).toList(),
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
      'servicos': servicos?.map((x) => x.toMap()).toList(),
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
      servicos: map['servicos'] != null
          ? List<ServicoDto>.from(
              (map['servicos']).map<ServicoDto?>(
                (x) => ServicoDto.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory EspacoDto.fromJson(String source) => EspacoDto.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'EspacoDto(id: $id, localizacao: $localizacao, capacidadePessoas: $capacidadePessoas, equipamentoDisponivel: $equipamentoDisponivel, acessibilidade: $acessibilidade, agenda: $agenda, servicos: $servicos)';
  }

  @override
  bool operator ==(covariant EspacoDto other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.localizacao == localizacao &&
        other.capacidadePessoas == capacidadePessoas &&
        listEquals(other.equipamentoDisponivel, equipamentoDisponivel) &&
        other.acessibilidade == acessibilidade &&
        mapEquals(other.agenda, agenda) &&
        listEquals(other.servicos, servicos);
  }

  @override
  int get hashCode {
    return id.hashCode ^ localizacao.hashCode ^ capacidadePessoas.hashCode ^ equipamentoDisponivel.hashCode ^ acessibilidade.hashCode ^ agenda.hashCode ^ servicos.hashCode;
  }
}
