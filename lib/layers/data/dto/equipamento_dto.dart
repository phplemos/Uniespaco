// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:uniespaco/layers/domain/entities/equipamento_entity.dart';

class EquipamentoDto {
  final String id;
  final String nome;
  final String tipo;
  final String numTombo;
  EquipamentoDto({
    required this.id,
    required this.nome,
    required this.tipo,
    required this.numTombo,
  });

  EquipamentoEntity toEntity() {
    return EquipamentoEntity(
      id: id,
      nome: nome,
      tipo: tipo,
      numTombo: numTombo,
    );
  }

  factory EquipamentoDto.fromEntity(EquipamentoEntity equipamento) {
    return EquipamentoDto(
      id: equipamento.id,
      nome: equipamento.nome,
      tipo: equipamento.tipo,
      numTombo: equipamento.numTombo,
    );
  }

  EquipamentoDto copyWith({
    String? id,
    String? nome,
    String? tipo,
    String? numTombo,
  }) {
    return EquipamentoDto(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      tipo: tipo ?? this.tipo,
      numTombo: numTombo ?? this.numTombo,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
      'tipo': tipo,
      'numTombo': numTombo,
    };
  }

  factory EquipamentoDto.fromMap(Map<String, dynamic> map) {
    return EquipamentoDto(
      id: map['id'] as String,
      nome: map['nome'] as String,
      tipo: map['tipo'] as String,
      numTombo: map['numTombo'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory EquipamentoDto.fromJson(String source) =>
      EquipamentoDto.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'EquipamentoDto(id: $id, nome: $nome, tipo: $tipo, numTombo: $numTombo)';
  }

  @override
  bool operator ==(covariant EquipamentoDto other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.nome == nome &&
        other.tipo == tipo &&
        other.numTombo == numTombo;
  }

  @override
  int get hashCode {
    return id.hashCode ^ nome.hashCode ^ tipo.hashCode ^ numTombo.hashCode;
  }
}
