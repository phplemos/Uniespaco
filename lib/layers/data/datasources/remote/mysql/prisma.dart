// ignore_for_file: non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i1;

import 'prisma.dart' as _i2;

class ServicoCountOutputType {
  const ServicoCountOutputType({this.periodo});

  factory ServicoCountOutputType.fromJson(Map json) =>
      ServicoCountOutputType(periodo: json['periodo']);

  final int? periodo;

  Map<String, dynamic> toJson() => {'periodo': periodo};
}

class EspacoCountOutputType {
  const EspacoCountOutputType({
    this.equipamentoDisponivel,
    this.turnos,
    this.reservas,
    this.servicos,
  });

  factory EspacoCountOutputType.fromJson(Map json) => EspacoCountOutputType(
        equipamentoDisponivel: json['equipamentoDisponivel'],
        turnos: json['turnos'],
        reservas: json['reservas'],
        servicos: json['servicos'],
      );

  final int? equipamentoDisponivel;

  final int? turnos;

  final int? reservas;

  final int? servicos;

  Map<String, dynamic> toJson() => {
        'equipamentoDisponivel': equipamentoDisponivel,
        'turnos': turnos,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class ReservaCountOutputType {
  const ReservaCountOutputType({this.periodo});

  factory ReservaCountOutputType.fromJson(Map json) =>
      ReservaCountOutputType(periodo: json['periodo']);

  final int? periodo;

  Map<String, dynamic> toJson() => {'periodo': periodo};
}

class UsuarioCountOutputType {
  const UsuarioCountOutputType({
    this.gestorReservaHorarios,
    this.gestorServicoHorarios,
    this.reservas,
    this.servicos,
  });

  factory UsuarioCountOutputType.fromJson(Map json) => UsuarioCountOutputType(
        gestorReservaHorarios: json['gestorReservaHorarios'],
        gestorServicoHorarios: json['gestorServicoHorarios'],
        reservas: json['reservas'],
        servicos: json['servicos'],
      );

  final int? gestorReservaHorarios;

  final int? gestorServicoHorarios;

  final int? reservas;

  final int? servicos;

  Map<String, dynamic> toJson() => {
        'gestorReservaHorarios': gestorReservaHorarios,
        'gestorServicoHorarios': gestorServicoHorarios,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class AgendaCountOutputType {
  const AgendaCountOutputType({this.horarios});

  factory AgendaCountOutputType.fromJson(Map json) =>
      AgendaCountOutputType(horarios: json['horarios']);

  final int? horarios;

  Map<String, dynamic> toJson() => {'horarios': horarios};
}

class TurnoCountOutputType {
  const TurnoCountOutputType({this.agenda});

  factory TurnoCountOutputType.fromJson(Map json) =>
      TurnoCountOutputType(agenda: json['agenda']);

  final int? agenda;

  Map<String, dynamic> toJson() => {'agenda': agenda};
}

enum QueryMode implements _i1.PrismaEnum {
  $default._('default'),
  insensitive._('insensitive');

  const QueryMode._(this.name);

  @override
  final String name;
}

class NestedStringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
      };
}

class StringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
      };
}

class NestedStringNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i2.NestedStringNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
      };
}

class StringNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i2.NestedStringNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
      };
}

class TurnoRelationFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.TurnoWhereInput? $is;

  final _i2.TurnoWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class NestedBoolFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedBoolFilter({
    this.equals,
    this.not,
  });

  final _i1.PrismaUnion<bool, _i1.Reference<bool>>? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'not': not,
      };
}

class BoolFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BoolFilter({
    this.equals,
    this.not,
  });

  final _i1.PrismaUnion<bool, _i1.Reference<bool>>? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'not': not,
      };
}

class AgendaRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.AgendaWhereInput? $is;

  final _i2.AgendaWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class NestedIntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class IntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class EspacoNullableRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoNullableRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i1.PrismaUnion<_i2.EspacoWhereInput, _i1.PrismaNull>? $is;

  final _i1.PrismaUnion<_i2.EspacoWhereInput, _i1.PrismaNull>? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class LocalizacaoWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.campus,
    this.pavilhao,
    this.andar,
    this.numero,
    this.espaco,
  });

  final _i1.PrismaUnion<_i2.LocalizacaoWhereInput,
      Iterable<_i2.LocalizacaoWhereInput>>? AND;

  final Iterable<_i2.LocalizacaoWhereInput>? OR;

  final _i1.PrismaUnion<_i2.LocalizacaoWhereInput,
      Iterable<_i2.LocalizacaoWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? campus;

  final _i1.PrismaUnion<_i2.StringFilter, String>? pavilhao;

  final _i1.PrismaUnion<_i2.IntFilter, int>? andar;

  final _i1.PrismaUnion<_i2.IntFilter, int>? numero;

  final _i1.PrismaUnion<_i2.EspacoNullableRelationFilter,
      _i1.PrismaUnion<_i2.EspacoWhereInput, _i1.PrismaNull>>? espaco;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'campus': campus,
        'pavilhao': pavilhao,
        'andar': andar,
        'numero': numero,
        'espaco': espaco,
      };
}

class LocalizacaoRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.LocalizacaoWhereInput? $is;

  final _i2.LocalizacaoWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class EquipamentoWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.nome,
    this.tipo,
    this.numTombo,
    this.espacoId,
    this.espaco,
  });

  final _i1.PrismaUnion<_i2.EquipamentoWhereInput,
      Iterable<_i2.EquipamentoWhereInput>>? AND;

  final Iterable<_i2.EquipamentoWhereInput>? OR;

  final _i1.PrismaUnion<_i2.EquipamentoWhereInput,
      Iterable<_i2.EquipamentoWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? nome;

  final _i1.PrismaUnion<_i2.StringFilter, String>? tipo;

  final _i1.PrismaUnion<_i2.StringFilter, String>? numTombo;

  final _i1.PrismaUnion<_i2.StringFilter, String>? espacoId;

  final _i1.PrismaUnion<_i2.EspacoRelationFilter, _i2.EspacoWhereInput>? espaco;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
        'espacoId': espacoId,
        'espaco': espaco,
      };
}

class EquipamentoListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.EquipamentoWhereInput? every;

  final _i2.EquipamentoWhereInput? some;

  final _i2.EquipamentoWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class TurnoListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.TurnoWhereInput? every;

  final _i2.TurnoWhereInput? some;

  final _i2.TurnoWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class UsuarioRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.UsuarioWhereInput? $is;

  final _i2.UsuarioWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class ServicoWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
    this.espaco,
    this.solicitante,
    this.periodo,
  });

  final _i1.PrismaUnion<_i2.ServicoWhereInput, Iterable<_i2.ServicoWhereInput>>?
      AND;

  final Iterable<_i2.ServicoWhereInput>? OR;

  final _i1.PrismaUnion<_i2.ServicoWhereInput, Iterable<_i2.ServicoWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? espacoId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? solicitanteId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? descricao;

  final _i1.PrismaUnion<_i2.StringFilter, String>? status;

  final _i1.PrismaUnion<_i2.EspacoRelationFilter, _i2.EspacoWhereInput>? espaco;

  final _i1.PrismaUnion<_i2.UsuarioRelationFilter, _i2.UsuarioWhereInput>?
      solicitante;

  final _i2.HorarioListRelationFilter? periodo;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
        'espaco': espaco,
        'solicitante': solicitante,
        'periodo': periodo,
      };
}

class ServicoListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.ServicoWhereInput? every;

  final _i2.ServicoWhereInput? some;

  final _i2.ServicoWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class EspacoWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.localizacaoId,
    this.capacidadePessoas,
    this.acessibilidade,
    this.localizacao,
    this.equipamentoDisponivel,
    this.turnos,
    this.reservas,
    this.servicos,
  });

  final _i1.PrismaUnion<_i2.EspacoWhereInput, Iterable<_i2.EspacoWhereInput>>?
      AND;

  final Iterable<_i2.EspacoWhereInput>? OR;

  final _i1.PrismaUnion<_i2.EspacoWhereInput, Iterable<_i2.EspacoWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? localizacaoId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? capacidadePessoas;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? acessibilidade;

  final _i1
      .PrismaUnion<_i2.LocalizacaoRelationFilter, _i2.LocalizacaoWhereInput>?
      localizacao;

  final _i2.EquipamentoListRelationFilter? equipamentoDisponivel;

  final _i2.TurnoListRelationFilter? turnos;

  final _i2.ReservaListRelationFilter? reservas;

  final _i2.ServicoListRelationFilter? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'localizacaoId': localizacaoId,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        'localizacao': localizacao,
        'equipamentoDisponivel': equipamentoDisponivel,
        'turnos': turnos,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class EspacoRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.EspacoWhereInput? $is;

  final _i2.EspacoWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class ReservaWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
    this.espaco,
    this.solicitante,
    this.periodo,
  });

  final _i1.PrismaUnion<_i2.ReservaWhereInput, Iterable<_i2.ReservaWhereInput>>?
      AND;

  final Iterable<_i2.ReservaWhereInput>? OR;

  final _i1.PrismaUnion<_i2.ReservaWhereInput, Iterable<_i2.ReservaWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? espacoId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? solicitanteId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? descricao;

  final _i1.PrismaUnion<_i2.StringFilter, String>? status;

  final _i1.PrismaUnion<_i2.EspacoRelationFilter, _i2.EspacoWhereInput>? espaco;

  final _i1.PrismaUnion<_i2.UsuarioRelationFilter, _i2.UsuarioWhereInput>?
      solicitante;

  final _i2.HorarioListRelationFilter? periodo;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
        'espaco': espaco,
        'solicitante': solicitante,
        'periodo': periodo,
      };
}

class ReservaListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.ReservaWhereInput? every;

  final _i2.ReservaWhereInput? some;

  final _i2.ReservaWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class UsuarioWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.departamentoId,
    this.sigla,
    this.isDepartamento,
    this.departamento,
    this.departamentoSetor,
    this.gestorReservaHorarios,
    this.gestorServicoHorarios,
    this.reservas,
    this.servicos,
  });

  final _i1.PrismaUnion<_i2.UsuarioWhereInput, Iterable<_i2.UsuarioWhereInput>>?
      AND;

  final Iterable<_i2.UsuarioWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UsuarioWhereInput, Iterable<_i2.UsuarioWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? nome;

  final _i1.PrismaUnion<_i2.StringFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? telefone;

  final _i1.PrismaUnion<_i2.StringFilter, String>? photoUrl;

  final _i1.PrismaUnion<_i2.StringFilter, String>? tipoUsuario;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? departamentoId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? sigla;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? isDepartamento;

  final _i1.PrismaUnion<_i2.UsuarioNullableRelationFilter,
      _i1.PrismaUnion<_i2.UsuarioWhereInput, _i1.PrismaNull>>? departamento;

  final _i1.PrismaUnion<_i2.UsuarioNullableRelationFilter,
          _i1.PrismaUnion<_i2.UsuarioWhereInput, _i1.PrismaNull>>?
      departamentoSetor;

  final _i2.HorarioListRelationFilter? gestorReservaHorarios;

  final _i2.HorarioListRelationFilter? gestorServicoHorarios;

  final _i2.ReservaListRelationFilter? reservas;

  final _i2.ServicoListRelationFilter? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'departamentoId': departamentoId,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'departamento': departamento,
        'departamentoSetor': departamentoSetor,
        'gestorReservaHorarios': gestorReservaHorarios,
        'gestorServicoHorarios': gestorServicoHorarios,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class UsuarioNullableRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioNullableRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i1.PrismaUnion<_i2.UsuarioWhereInput, _i1.PrismaNull>? $is;

  final _i1.PrismaUnion<_i2.UsuarioWhereInput, _i1.PrismaNull>? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class ReservaRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.ReservaWhereInput? $is;

  final _i2.ReservaWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class ServicoRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.ServicoWhereInput? $is;

  final _i2.ServicoWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class HorarioWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.inicio,
    this.fim,
    this.agendaId,
    this.gestorServicoId,
    this.gestorReservaId,
    this.isReserved,
    this.reservaSolicitadaId,
    this.servicoSolicitadoId,
    this.agenda,
    this.gestorServico,
    this.gestorReserva,
    this.reservaSolicitada,
    this.servicoSolicitado,
  });

  final _i1.PrismaUnion<_i2.HorarioWhereInput, Iterable<_i2.HorarioWhereInput>>?
      AND;

  final Iterable<_i2.HorarioWhereInput>? OR;

  final _i1.PrismaUnion<_i2.HorarioWhereInput, Iterable<_i2.HorarioWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? inicio;

  final _i1.PrismaUnion<_i2.StringFilter, String>? fim;

  final _i1.PrismaUnion<_i2.StringFilter, String>? agendaId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? gestorServicoId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? gestorReservaId;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? isReserved;

  final _i1.PrismaUnion<_i2.StringFilter, String>? reservaSolicitadaId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? servicoSolicitadoId;

  final _i1.PrismaUnion<_i2.AgendaRelationFilter, _i2.AgendaWhereInput>? agenda;

  final _i1.PrismaUnion<_i2.UsuarioNullableRelationFilter,
      _i1.PrismaUnion<_i2.UsuarioWhereInput, _i1.PrismaNull>>? gestorServico;

  final _i1.PrismaUnion<_i2.UsuarioNullableRelationFilter,
      _i1.PrismaUnion<_i2.UsuarioWhereInput, _i1.PrismaNull>>? gestorReserva;

  final _i1.PrismaUnion<_i2.ReservaRelationFilter, _i2.ReservaWhereInput>?
      reservaSolicitada;

  final _i1.PrismaUnion<_i2.ServicoRelationFilter, _i2.ServicoWhereInput>?
      servicoSolicitado;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
        'agenda': agenda,
        'gestorServico': gestorServico,
        'gestorReserva': gestorReserva,
        'reservaSolicitada': reservaSolicitada,
        'servicoSolicitado': servicoSolicitado,
      };
}

class HorarioListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.HorarioWhereInput? every;

  final _i2.HorarioWhereInput? some;

  final _i2.HorarioWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class AgendaWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.observacao,
    this.turnoId,
    this.turno,
    this.horarios,
  });

  final _i1.PrismaUnion<_i2.AgendaWhereInput, Iterable<_i2.AgendaWhereInput>>?
      AND;

  final Iterable<_i2.AgendaWhereInput>? OR;

  final _i1.PrismaUnion<_i2.AgendaWhereInput, Iterable<_i2.AgendaWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? observacao;

  final _i1.PrismaUnion<_i2.StringFilter, String>? turnoId;

  final _i1.PrismaUnion<_i2.TurnoRelationFilter, _i2.TurnoWhereInput>? turno;

  final _i2.HorarioListRelationFilter? horarios;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'observacao': observacao,
        'turnoId': turnoId,
        'turno': turno,
        'horarios': horarios,
      };
}

class AgendaListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.AgendaWhereInput? every;

  final _i2.AgendaWhereInput? some;

  final _i2.AgendaWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class TurnoWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.nome,
    this.espacoId,
    this.agenda,
    this.espaco,
  });

  final _i1.PrismaUnion<_i2.TurnoWhereInput, Iterable<_i2.TurnoWhereInput>>?
      AND;

  final Iterable<_i2.TurnoWhereInput>? OR;

  final _i1.PrismaUnion<_i2.TurnoWhereInput, Iterable<_i2.TurnoWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? nome;

  final _i1.PrismaUnion<_i2.StringFilter, String>? espacoId;

  final _i2.AgendaListRelationFilter? agenda;

  final _i1.PrismaUnion<_i2.EspacoRelationFilter, _i2.EspacoWhereInput>? espaco;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'nome': nome,
        'espacoId': espacoId,
        'agenda': agenda,
        'espaco': espaco,
      };
}

class TurnoWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoWhereUniqueInput({
    this.id,
    this.nome,
    this.AND,
    this.OR,
    this.NOT,
    this.espacoId,
    this.agenda,
    this.espaco,
  });

  final String? id;

  final String? nome;

  final _i1.PrismaUnion<_i2.TurnoWhereInput, Iterable<_i2.TurnoWhereInput>>?
      AND;

  final Iterable<_i2.TurnoWhereInput>? OR;

  final _i1.PrismaUnion<_i2.TurnoWhereInput, Iterable<_i2.TurnoWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? espacoId;

  final _i2.AgendaListRelationFilter? agenda;

  final _i1.PrismaUnion<_i2.EspacoRelationFilter, _i2.EspacoWhereInput>? espaco;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'espacoId': espacoId,
        'agenda': agenda,
        'espaco': espaco,
      };
}

class AgendaTurnoArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaTurnoArgs({
    this.select,
    this.include,
  });

  final _i2.TurnoSelect? select;

  final _i2.TurnoInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class HorarioAgendaArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioAgendaArgs({
    this.select,
    this.include,
  });

  final _i2.AgendaSelect? select;

  final _i2.AgendaInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class UsuarioDepartamentoArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioDepartamentoArgs({
    this.where,
    this.select,
    this.include,
  });

  final _i2.UsuarioWhereInput? where;

  final _i2.UsuarioSelect? select;

  final _i2.UsuarioInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'select': select,
        'include': include,
      };
}

class UsuarioDepartamentoSetorArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioDepartamentoSetorArgs({
    this.where,
    this.select,
    this.include,
  });

  final _i2.UsuarioWhereInput? where;

  final _i2.UsuarioSelect? select;

  final _i2.UsuarioInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'select': select,
        'include': include,
      };
}

class HorarioGestorServicoArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioGestorServicoArgs({
    this.where,
    this.select,
    this.include,
  });

  final _i2.UsuarioWhereInput? where;

  final _i2.UsuarioSelect? select;

  final _i2.UsuarioInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'select': select,
        'include': include,
      };
}

class HorarioGestorReservaArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioGestorReservaArgs({
    this.where,
    this.select,
    this.include,
  });

  final _i2.UsuarioWhereInput? where;

  final _i2.UsuarioSelect? select;

  final _i2.UsuarioInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'select': select,
        'include': include,
      };
}

class LocalizacaoEspacoArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoEspacoArgs({
    this.where,
    this.select,
    this.include,
  });

  final _i2.EspacoWhereInput? where;

  final _i2.EspacoSelect? select;

  final _i2.EspacoInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'select': select,
        'include': include,
      };
}

class LocalizacaoInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoInclude({this.espaco});

  final _i1.PrismaUnion<bool, _i2.LocalizacaoEspacoArgs>? espaco;

  @override
  Map<String, dynamic> toJson() => {'espaco': espaco};
}

class EspacoLocalizacaoArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoLocalizacaoArgs({
    this.select,
    this.include,
  });

  final _i2.LocalizacaoSelect? select;

  final _i2.LocalizacaoInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class EquipamentoEspacoArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoEspacoArgs({
    this.select,
    this.include,
  });

  final _i2.EspacoSelect? select;

  final _i2.EspacoInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class EquipamentoSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoSelect({
    this.id,
    this.nome,
    this.tipo,
    this.numTombo,
    this.espacoId,
    this.espaco,
  });

  final bool? id;

  final bool? nome;

  final bool? tipo;

  final bool? numTombo;

  final bool? espacoId;

  final _i1.PrismaUnion<bool, _i2.EquipamentoEspacoArgs>? espaco;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
        'espacoId': espacoId,
        'espaco': espaco,
      };
}

class EquipamentoInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoInclude({this.espaco});

  final _i1.PrismaUnion<bool, _i2.EquipamentoEspacoArgs>? espaco;

  @override
  Map<String, dynamic> toJson() => {'espaco': espaco};
}

enum SortOrder implements _i1.PrismaEnum {
  asc._('asc'),
  desc._('desc');

  const SortOrder._(this.name);

  @override
  final String name;
}

class LocalizacaoOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoOrderByWithRelationInput({
    this.id,
    this.campus,
    this.pavilhao,
    this.andar,
    this.numero,
    this.espaco,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? campus;

  final _i2.SortOrder? pavilhao;

  final _i2.SortOrder? andar;

  final _i2.SortOrder? numero;

  final _i2.EspacoOrderByWithRelationInput? espaco;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'campus': campus,
        'pavilhao': pavilhao,
        'andar': andar,
        'numero': numero,
        'espaco': espaco,
      };
}

class EquipamentoOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class TurnoOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class ReservaOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class ServicoOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class EspacoOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoOrderByWithRelationInput({
    this.id,
    this.localizacaoId,
    this.capacidadePessoas,
    this.acessibilidade,
    this.localizacao,
    this.equipamentoDisponivel,
    this.turnos,
    this.reservas,
    this.servicos,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? localizacaoId;

  final _i2.SortOrder? capacidadePessoas;

  final _i2.SortOrder? acessibilidade;

  final _i2.LocalizacaoOrderByWithRelationInput? localizacao;

  final _i2.EquipamentoOrderByRelationAggregateInput? equipamentoDisponivel;

  final _i2.TurnoOrderByRelationAggregateInput? turnos;

  final _i2.ReservaOrderByRelationAggregateInput? reservas;

  final _i2.ServicoOrderByRelationAggregateInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'localizacaoId': localizacaoId,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        'localizacao': localizacao,
        'equipamentoDisponivel': equipamentoDisponivel,
        'turnos': turnos,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class EquipamentoOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoOrderByWithRelationInput({
    this.id,
    this.nome,
    this.tipo,
    this.numTombo,
    this.espacoId,
    this.espaco,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? nome;

  final _i2.SortOrder? tipo;

  final _i2.SortOrder? numTombo;

  final _i2.SortOrder? espacoId;

  final _i2.EspacoOrderByWithRelationInput? espaco;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
        'espacoId': espacoId,
        'espaco': espaco,
      };
}

class EquipamentoWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.nome,
    this.tipo,
    this.numTombo,
    this.espacoId,
    this.espaco,
  });

  final String? id;

  final _i1.PrismaUnion<_i2.EquipamentoWhereInput,
      Iterable<_i2.EquipamentoWhereInput>>? AND;

  final Iterable<_i2.EquipamentoWhereInput>? OR;

  final _i1.PrismaUnion<_i2.EquipamentoWhereInput,
      Iterable<_i2.EquipamentoWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? nome;

  final _i1.PrismaUnion<_i2.StringFilter, String>? tipo;

  final _i1.PrismaUnion<_i2.StringFilter, String>? numTombo;

  final _i1.PrismaUnion<_i2.StringFilter, String>? espacoId;

  final _i1.PrismaUnion<_i2.EspacoRelationFilter, _i2.EspacoWhereInput>? espaco;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
        'espacoId': espacoId,
        'espaco': espaco,
      };
}

enum EquipamentoScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'Equipamento'),
  nome<String>('nome', 'Equipamento'),
  tipo<String>('tipo', 'Equipamento'),
  numTombo<String>('numTombo', 'Equipamento'),
  espacoId<String>('espacoId', 'Equipamento');

  const EquipamentoScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class EspacoEquipamentoDisponivelArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoEquipamentoDisponivelArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.EquipamentoWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.EquipamentoOrderByWithRelationInput>,
      _i2.EquipamentoOrderByWithRelationInput>? orderBy;

  final _i2.EquipamentoWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.EquipamentoScalar, Iterable<_i2.EquipamentoScalar>>?
      distinct;

  final _i2.EquipamentoSelect? select;

  final _i2.EquipamentoInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class AgendaOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class TurnoOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoOrderByWithRelationInput({
    this.id,
    this.nome,
    this.espacoId,
    this.agenda,
    this.espaco,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? nome;

  final _i2.SortOrder? espacoId;

  final _i2.AgendaOrderByRelationAggregateInput? agenda;

  final _i2.EspacoOrderByWithRelationInput? espaco;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'espacoId': espacoId,
        'agenda': agenda,
        'espaco': espaco,
      };
}

enum TurnoScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'Turno'),
  nome<String>('nome', 'Turno'),
  espacoId<String>('espacoId', 'Turno');

  const TurnoScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class EspacoTurnosArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoTurnosArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.TurnoWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.TurnoOrderByWithRelationInput>,
      _i2.TurnoOrderByWithRelationInput>? orderBy;

  final _i2.TurnoWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.TurnoScalar, Iterable<_i2.TurnoScalar>>? distinct;

  final _i2.TurnoSelect? select;

  final _i2.TurnoInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class ReservaEspacoArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaEspacoArgs({
    this.select,
    this.include,
  });

  final _i2.EspacoSelect? select;

  final _i2.EspacoInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class ReservaSolicitanteArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaSolicitanteArgs({
    this.select,
    this.include,
  });

  final _i2.UsuarioSelect? select;

  final _i2.UsuarioInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

enum NullsOrder implements _i1.PrismaEnum {
  first._('first'),
  last._('last');

  const NullsOrder._(this.name);

  @override
  final String name;
}

class SortOrderInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const SortOrderInput({
    required this.sort,
    this.nulls,
  });

  final _i2.SortOrder sort;

  final _i2.NullsOrder? nulls;

  @override
  Map<String, dynamic> toJson() => {
        'sort': sort,
        'nulls': nulls,
      };
}

class HorarioOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class AgendaOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaOrderByWithRelationInput({
    this.id,
    this.observacao,
    this.turnoId,
    this.turno,
    this.horarios,
  });

  final _i2.SortOrder? id;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? observacao;

  final _i2.SortOrder? turnoId;

  final _i2.TurnoOrderByWithRelationInput? turno;

  final _i2.HorarioOrderByRelationAggregateInput? horarios;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
        'turnoId': turnoId,
        'turno': turno,
        'horarios': horarios,
      };
}

class UsuarioOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioOrderByWithRelationInput({
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.departamentoId,
    this.sigla,
    this.isDepartamento,
    this.departamento,
    this.departamentoSetor,
    this.gestorReservaHorarios,
    this.gestorServicoHorarios,
    this.reservas,
    this.servicos,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? nome;

  final _i2.SortOrder? email;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? telefone;

  final _i2.SortOrder? photoUrl;

  final _i2.SortOrder? tipoUsuario;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? departamentoId;

  final _i2.SortOrder? sigla;

  final _i2.SortOrder? isDepartamento;

  final _i2.UsuarioOrderByWithRelationInput? departamento;

  final _i2.UsuarioOrderByWithRelationInput? departamentoSetor;

  final _i2.HorarioOrderByRelationAggregateInput? gestorReservaHorarios;

  final _i2.HorarioOrderByRelationAggregateInput? gestorServicoHorarios;

  final _i2.ReservaOrderByRelationAggregateInput? reservas;

  final _i2.ServicoOrderByRelationAggregateInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'departamentoId': departamentoId,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'departamento': departamento,
        'departamentoSetor': departamentoSetor,
        'gestorReservaHorarios': gestorReservaHorarios,
        'gestorServicoHorarios': gestorServicoHorarios,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class ReservaOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaOrderByWithRelationInput({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
    this.espaco,
    this.solicitante,
    this.periodo,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? espacoId;

  final _i2.SortOrder? solicitanteId;

  final _i2.SortOrder? descricao;

  final _i2.SortOrder? status;

  final _i2.EspacoOrderByWithRelationInput? espaco;

  final _i2.UsuarioOrderByWithRelationInput? solicitante;

  final _i2.HorarioOrderByRelationAggregateInput? periodo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
        'espaco': espaco,
        'solicitante': solicitante,
        'periodo': periodo,
      };
}

class ServicoOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoOrderByWithRelationInput({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
    this.espaco,
    this.solicitante,
    this.periodo,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? espacoId;

  final _i2.SortOrder? solicitanteId;

  final _i2.SortOrder? descricao;

  final _i2.SortOrder? status;

  final _i2.EspacoOrderByWithRelationInput? espaco;

  final _i2.UsuarioOrderByWithRelationInput? solicitante;

  final _i2.HorarioOrderByRelationAggregateInput? periodo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
        'espaco': espaco,
        'solicitante': solicitante,
        'periodo': periodo,
      };
}

class HorarioOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioOrderByWithRelationInput({
    this.id,
    this.inicio,
    this.fim,
    this.agendaId,
    this.gestorServicoId,
    this.gestorReservaId,
    this.isReserved,
    this.reservaSolicitadaId,
    this.servicoSolicitadoId,
    this.agenda,
    this.gestorServico,
    this.gestorReserva,
    this.reservaSolicitada,
    this.servicoSolicitado,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? inicio;

  final _i2.SortOrder? fim;

  final _i2.SortOrder? agendaId;

  final _i2.SortOrder? gestorServicoId;

  final _i2.SortOrder? gestorReservaId;

  final _i2.SortOrder? isReserved;

  final _i2.SortOrder? reservaSolicitadaId;

  final _i2.SortOrder? servicoSolicitadoId;

  final _i2.AgendaOrderByWithRelationInput? agenda;

  final _i2.UsuarioOrderByWithRelationInput? gestorServico;

  final _i2.UsuarioOrderByWithRelationInput? gestorReserva;

  final _i2.ReservaOrderByWithRelationInput? reservaSolicitada;

  final _i2.ServicoOrderByWithRelationInput? servicoSolicitado;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
        'agenda': agenda,
        'gestorServico': gestorServico,
        'gestorReserva': gestorReserva,
        'reservaSolicitada': reservaSolicitada,
        'servicoSolicitado': servicoSolicitado,
      };
}

class HorarioWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.inicio,
    this.fim,
    this.agendaId,
    this.gestorServicoId,
    this.gestorReservaId,
    this.isReserved,
    this.reservaSolicitadaId,
    this.servicoSolicitadoId,
    this.agenda,
    this.gestorServico,
    this.gestorReserva,
    this.reservaSolicitada,
    this.servicoSolicitado,
  });

  final String? id;

  final _i1.PrismaUnion<_i2.HorarioWhereInput, Iterable<_i2.HorarioWhereInput>>?
      AND;

  final Iterable<_i2.HorarioWhereInput>? OR;

  final _i1.PrismaUnion<_i2.HorarioWhereInput, Iterable<_i2.HorarioWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? inicio;

  final _i1.PrismaUnion<_i2.StringFilter, String>? fim;

  final _i1.PrismaUnion<_i2.StringFilter, String>? agendaId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? gestorServicoId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? gestorReservaId;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? isReserved;

  final _i1.PrismaUnion<_i2.StringFilter, String>? reservaSolicitadaId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? servicoSolicitadoId;

  final _i1.PrismaUnion<_i2.AgendaRelationFilter, _i2.AgendaWhereInput>? agenda;

  final _i1.PrismaUnion<_i2.UsuarioNullableRelationFilter,
      _i1.PrismaUnion<_i2.UsuarioWhereInput, _i1.PrismaNull>>? gestorServico;

  final _i1.PrismaUnion<_i2.UsuarioNullableRelationFilter,
      _i1.PrismaUnion<_i2.UsuarioWhereInput, _i1.PrismaNull>>? gestorReserva;

  final _i1.PrismaUnion<_i2.ReservaRelationFilter, _i2.ReservaWhereInput>?
      reservaSolicitada;

  final _i1.PrismaUnion<_i2.ServicoRelationFilter, _i2.ServicoWhereInput>?
      servicoSolicitado;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
        'agenda': agenda,
        'gestorServico': gestorServico,
        'gestorReserva': gestorReserva,
        'reservaSolicitada': reservaSolicitada,
        'servicoSolicitado': servicoSolicitado,
      };
}

enum HorarioScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'Horario'),
  inicio<String>('inicio', 'Horario'),
  fim<String>('fim', 'Horario'),
  agendaId<String>('agendaId', 'Horario'),
  gestorServicoId<String>('gestorServicoId', 'Horario'),
  gestorReservaId<String>('gestorReservaId', 'Horario'),
  isReserved<bool>('isReserved', 'Horario'),
  reservaSolicitadaId<String>('reservaSolicitadaId', 'Horario'),
  servicoSolicitadoId<String>('servicoSolicitadoId', 'Horario');

  const HorarioScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class ReservaPeriodoArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaPeriodoArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.HorarioWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.HorarioOrderByWithRelationInput>,
      _i2.HorarioOrderByWithRelationInput>? orderBy;

  final _i2.HorarioWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.HorarioScalar, Iterable<_i2.HorarioScalar>>?
      distinct;

  final _i2.HorarioSelect? select;

  final _i2.HorarioInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class ReservaCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaCountOutputTypeSelect({this.periodo});

  final bool? periodo;

  @override
  Map<String, dynamic> toJson() => {'periodo': periodo};
}

class ReservaCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaCountArgs({this.select});

  final _i2.ReservaCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ReservaInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaInclude({
    this.espaco,
    this.solicitante,
    this.periodo,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.ReservaEspacoArgs>? espaco;

  final _i1.PrismaUnion<bool, _i2.ReservaSolicitanteArgs>? solicitante;

  final _i1.PrismaUnion<bool, _i2.ReservaPeriodoArgs>? periodo;

  final _i1.PrismaUnion<bool, _i2.ReservaCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'espaco': espaco,
        'solicitante': solicitante,
        'periodo': periodo,
        '_count': $count,
      };
}

class ReservaWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
    this.espaco,
    this.solicitante,
    this.periodo,
  });

  final String? id;

  final _i1.PrismaUnion<_i2.ReservaWhereInput, Iterable<_i2.ReservaWhereInput>>?
      AND;

  final Iterable<_i2.ReservaWhereInput>? OR;

  final _i1.PrismaUnion<_i2.ReservaWhereInput, Iterable<_i2.ReservaWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? espacoId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? solicitanteId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? descricao;

  final _i1.PrismaUnion<_i2.StringFilter, String>? status;

  final _i1.PrismaUnion<_i2.EspacoRelationFilter, _i2.EspacoWhereInput>? espaco;

  final _i1.PrismaUnion<_i2.UsuarioRelationFilter, _i2.UsuarioWhereInput>?
      solicitante;

  final _i2.HorarioListRelationFilter? periodo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
        'espaco': espaco,
        'solicitante': solicitante,
        'periodo': periodo,
      };
}

enum ReservaScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'Reserva'),
  espacoId<String>('espacoId', 'Reserva'),
  solicitanteId<String>('solicitanteId', 'Reserva'),
  descricao<String>('descricao', 'Reserva'),
  status<String>('status', 'Reserva');

  const ReservaScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class EspacoReservasArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoReservasArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.ReservaWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.ReservaOrderByWithRelationInput>,
      _i2.ReservaOrderByWithRelationInput>? orderBy;

  final _i2.ReservaWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.ReservaScalar, Iterable<_i2.ReservaScalar>>?
      distinct;

  final _i2.ReservaSelect? select;

  final _i2.ReservaInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class ServicoEspacoArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoEspacoArgs({
    this.select,
    this.include,
  });

  final _i2.EspacoSelect? select;

  final _i2.EspacoInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class ServicoSolicitanteArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoSolicitanteArgs({
    this.select,
    this.include,
  });

  final _i2.UsuarioSelect? select;

  final _i2.UsuarioInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class ServicoPeriodoArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoPeriodoArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.HorarioWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.HorarioOrderByWithRelationInput>,
      _i2.HorarioOrderByWithRelationInput>? orderBy;

  final _i2.HorarioWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.HorarioScalar, Iterable<_i2.HorarioScalar>>?
      distinct;

  final _i2.HorarioSelect? select;

  final _i2.HorarioInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class ServicoCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoCountOutputTypeSelect({this.periodo});

  final bool? periodo;

  @override
  Map<String, dynamic> toJson() => {'periodo': periodo};
}

class ServicoCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoCountArgs({this.select});

  final _i2.ServicoCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ServicoSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoSelect({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
    this.espaco,
    this.solicitante,
    this.periodo,
    this.$count,
  });

  final bool? id;

  final bool? espacoId;

  final bool? solicitanteId;

  final bool? descricao;

  final bool? status;

  final _i1.PrismaUnion<bool, _i2.ServicoEspacoArgs>? espaco;

  final _i1.PrismaUnion<bool, _i2.ServicoSolicitanteArgs>? solicitante;

  final _i1.PrismaUnion<bool, _i2.ServicoPeriodoArgs>? periodo;

  final _i1.PrismaUnion<bool, _i2.ServicoCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
        'espaco': espaco,
        'solicitante': solicitante,
        'periodo': periodo,
        '_count': $count,
      };
}

class ServicoInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoInclude({
    this.espaco,
    this.solicitante,
    this.periodo,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.ServicoEspacoArgs>? espaco;

  final _i1.PrismaUnion<bool, _i2.ServicoSolicitanteArgs>? solicitante;

  final _i1.PrismaUnion<bool, _i2.ServicoPeriodoArgs>? periodo;

  final _i1.PrismaUnion<bool, _i2.ServicoCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'espaco': espaco,
        'solicitante': solicitante,
        'periodo': periodo,
        '_count': $count,
      };
}

class ServicoWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
    this.espaco,
    this.solicitante,
    this.periodo,
  });

  final String? id;

  final _i1.PrismaUnion<_i2.ServicoWhereInput, Iterable<_i2.ServicoWhereInput>>?
      AND;

  final Iterable<_i2.ServicoWhereInput>? OR;

  final _i1.PrismaUnion<_i2.ServicoWhereInput, Iterable<_i2.ServicoWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? espacoId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? solicitanteId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? descricao;

  final _i1.PrismaUnion<_i2.StringFilter, String>? status;

  final _i1.PrismaUnion<_i2.EspacoRelationFilter, _i2.EspacoWhereInput>? espaco;

  final _i1.PrismaUnion<_i2.UsuarioRelationFilter, _i2.UsuarioWhereInput>?
      solicitante;

  final _i2.HorarioListRelationFilter? periodo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
        'espaco': espaco,
        'solicitante': solicitante,
        'periodo': periodo,
      };
}

enum ServicoScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'Servico'),
  espacoId<String>('espacoId', 'Servico'),
  solicitanteId<String>('solicitanteId', 'Servico'),
  descricao<String>('descricao', 'Servico'),
  status<String>('status', 'Servico');

  const ServicoScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class EspacoServicosArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoServicosArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.ServicoWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.ServicoOrderByWithRelationInput>,
      _i2.ServicoOrderByWithRelationInput>? orderBy;

  final _i2.ServicoWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.ServicoScalar, Iterable<_i2.ServicoScalar>>?
      distinct;

  final _i2.ServicoSelect? select;

  final _i2.ServicoInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class EspacoCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoCountOutputTypeSelect({
    this.equipamentoDisponivel,
    this.turnos,
    this.reservas,
    this.servicos,
  });

  final bool? equipamentoDisponivel;

  final bool? turnos;

  final bool? reservas;

  final bool? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'equipamentoDisponivel': equipamentoDisponivel,
        'turnos': turnos,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class EspacoCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoCountArgs({this.select});

  final _i2.EspacoCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class EspacoInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoInclude({
    this.localizacao,
    this.equipamentoDisponivel,
    this.turnos,
    this.reservas,
    this.servicos,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.EspacoLocalizacaoArgs>? localizacao;

  final _i1.PrismaUnion<bool, _i2.EspacoEquipamentoDisponivelArgs>?
      equipamentoDisponivel;

  final _i1.PrismaUnion<bool, _i2.EspacoTurnosArgs>? turnos;

  final _i1.PrismaUnion<bool, _i2.EspacoReservasArgs>? reservas;

  final _i1.PrismaUnion<bool, _i2.EspacoServicosArgs>? servicos;

  final _i1.PrismaUnion<bool, _i2.EspacoCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'localizacao': localizacao,
        'equipamentoDisponivel': equipamentoDisponivel,
        'turnos': turnos,
        'reservas': reservas,
        'servicos': servicos,
        '_count': $count,
      };
}

class LocalizacaoSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoSelect({
    this.id,
    this.campus,
    this.pavilhao,
    this.andar,
    this.numero,
    this.espaco,
  });

  final bool? id;

  final bool? campus;

  final bool? pavilhao;

  final bool? andar;

  final bool? numero;

  final _i1.PrismaUnion<bool, _i2.LocalizacaoEspacoArgs>? espaco;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'campus': campus,
        'pavilhao': pavilhao,
        'andar': andar,
        'numero': numero,
        'espaco': espaco,
      };
}

class EspacoSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoSelect({
    this.id,
    this.localizacaoId,
    this.capacidadePessoas,
    this.acessibilidade,
    this.localizacao,
    this.equipamentoDisponivel,
    this.turnos,
    this.reservas,
    this.servicos,
    this.$count,
  });

  final bool? id;

  final bool? localizacaoId;

  final bool? capacidadePessoas;

  final bool? acessibilidade;

  final _i1.PrismaUnion<bool, _i2.EspacoLocalizacaoArgs>? localizacao;

  final _i1.PrismaUnion<bool, _i2.EspacoEquipamentoDisponivelArgs>?
      equipamentoDisponivel;

  final _i1.PrismaUnion<bool, _i2.EspacoTurnosArgs>? turnos;

  final _i1.PrismaUnion<bool, _i2.EspacoReservasArgs>? reservas;

  final _i1.PrismaUnion<bool, _i2.EspacoServicosArgs>? servicos;

  final _i1.PrismaUnion<bool, _i2.EspacoCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'localizacaoId': localizacaoId,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        'localizacao': localizacao,
        'equipamentoDisponivel': equipamentoDisponivel,
        'turnos': turnos,
        'reservas': reservas,
        'servicos': servicos,
        '_count': $count,
      };
}

class ReservaSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaSelect({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
    this.espaco,
    this.solicitante,
    this.periodo,
    this.$count,
  });

  final bool? id;

  final bool? espacoId;

  final bool? solicitanteId;

  final bool? descricao;

  final bool? status;

  final _i1.PrismaUnion<bool, _i2.ReservaEspacoArgs>? espaco;

  final _i1.PrismaUnion<bool, _i2.ReservaSolicitanteArgs>? solicitante;

  final _i1.PrismaUnion<bool, _i2.ReservaPeriodoArgs>? periodo;

  final _i1.PrismaUnion<bool, _i2.ReservaCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
        'espaco': espaco,
        'solicitante': solicitante,
        'periodo': periodo,
        '_count': $count,
      };
}

class HorarioReservaSolicitadaArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioReservaSolicitadaArgs({
    this.select,
    this.include,
  });

  final _i2.ReservaSelect? select;

  final _i2.ReservaInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class HorarioServicoSolicitadoArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioServicoSolicitadoArgs({
    this.select,
    this.include,
  });

  final _i2.ServicoSelect? select;

  final _i2.ServicoInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class HorarioInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioInclude({
    this.agenda,
    this.gestorServico,
    this.gestorReserva,
    this.reservaSolicitada,
    this.servicoSolicitado,
  });

  final _i1.PrismaUnion<bool, _i2.HorarioAgendaArgs>? agenda;

  final _i1.PrismaUnion<bool, _i2.HorarioGestorServicoArgs>? gestorServico;

  final _i1.PrismaUnion<bool, _i2.HorarioGestorReservaArgs>? gestorReserva;

  final _i1.PrismaUnion<bool, _i2.HorarioReservaSolicitadaArgs>?
      reservaSolicitada;

  final _i1.PrismaUnion<bool, _i2.HorarioServicoSolicitadoArgs>?
      servicoSolicitado;

  @override
  Map<String, dynamic> toJson() => {
        'agenda': agenda,
        'gestorServico': gestorServico,
        'gestorReserva': gestorReserva,
        'reservaSolicitada': reservaSolicitada,
        'servicoSolicitado': servicoSolicitado,
      };
}

class UsuarioGestorReservaHorariosArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioGestorReservaHorariosArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.HorarioWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.HorarioOrderByWithRelationInput>,
      _i2.HorarioOrderByWithRelationInput>? orderBy;

  final _i2.HorarioWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.HorarioScalar, Iterable<_i2.HorarioScalar>>?
      distinct;

  final _i2.HorarioSelect? select;

  final _i2.HorarioInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class UsuarioGestorServicoHorariosArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioGestorServicoHorariosArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.HorarioWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.HorarioOrderByWithRelationInput>,
      _i2.HorarioOrderByWithRelationInput>? orderBy;

  final _i2.HorarioWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.HorarioScalar, Iterable<_i2.HorarioScalar>>?
      distinct;

  final _i2.HorarioSelect? select;

  final _i2.HorarioInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class UsuarioReservasArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioReservasArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.ReservaWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.ReservaOrderByWithRelationInput>,
      _i2.ReservaOrderByWithRelationInput>? orderBy;

  final _i2.ReservaWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.ReservaScalar, Iterable<_i2.ReservaScalar>>?
      distinct;

  final _i2.ReservaSelect? select;

  final _i2.ReservaInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class UsuarioServicosArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioServicosArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.ServicoWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.ServicoOrderByWithRelationInput>,
      _i2.ServicoOrderByWithRelationInput>? orderBy;

  final _i2.ServicoWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.ServicoScalar, Iterable<_i2.ServicoScalar>>?
      distinct;

  final _i2.ServicoSelect? select;

  final _i2.ServicoInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class UsuarioCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioCountOutputTypeSelect({
    this.gestorReservaHorarios,
    this.gestorServicoHorarios,
    this.reservas,
    this.servicos,
  });

  final bool? gestorReservaHorarios;

  final bool? gestorServicoHorarios;

  final bool? reservas;

  final bool? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'gestorReservaHorarios': gestorReservaHorarios,
        'gestorServicoHorarios': gestorServicoHorarios,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class UsuarioCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioCountArgs({this.select});

  final _i2.UsuarioCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UsuarioInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioInclude({
    this.departamento,
    this.departamentoSetor,
    this.gestorReservaHorarios,
    this.gestorServicoHorarios,
    this.reservas,
    this.servicos,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.UsuarioDepartamentoArgs>? departamento;

  final _i1.PrismaUnion<bool, _i2.UsuarioDepartamentoSetorArgs>?
      departamentoSetor;

  final _i1.PrismaUnion<bool, _i2.UsuarioGestorReservaHorariosArgs>?
      gestorReservaHorarios;

  final _i1.PrismaUnion<bool, _i2.UsuarioGestorServicoHorariosArgs>?
      gestorServicoHorarios;

  final _i1.PrismaUnion<bool, _i2.UsuarioReservasArgs>? reservas;

  final _i1.PrismaUnion<bool, _i2.UsuarioServicosArgs>? servicos;

  final _i1.PrismaUnion<bool, _i2.UsuarioCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'departamento': departamento,
        'departamentoSetor': departamentoSetor,
        'gestorReservaHorarios': gestorReservaHorarios,
        'gestorServicoHorarios': gestorServicoHorarios,
        'reservas': reservas,
        'servicos': servicos,
        '_count': $count,
      };
}

class UsuarioSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioSelect({
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.departamentoId,
    this.sigla,
    this.isDepartamento,
    this.departamento,
    this.departamentoSetor,
    this.gestorReservaHorarios,
    this.gestorServicoHorarios,
    this.reservas,
    this.servicos,
    this.$count,
  });

  final bool? id;

  final bool? nome;

  final bool? email;

  final bool? telefone;

  final bool? photoUrl;

  final bool? tipoUsuario;

  final bool? departamentoId;

  final bool? sigla;

  final bool? isDepartamento;

  final _i1.PrismaUnion<bool, _i2.UsuarioDepartamentoArgs>? departamento;

  final _i1.PrismaUnion<bool, _i2.UsuarioDepartamentoSetorArgs>?
      departamentoSetor;

  final _i1.PrismaUnion<bool, _i2.UsuarioGestorReservaHorariosArgs>?
      gestorReservaHorarios;

  final _i1.PrismaUnion<bool, _i2.UsuarioGestorServicoHorariosArgs>?
      gestorServicoHorarios;

  final _i1.PrismaUnion<bool, _i2.UsuarioReservasArgs>? reservas;

  final _i1.PrismaUnion<bool, _i2.UsuarioServicosArgs>? servicos;

  final _i1.PrismaUnion<bool, _i2.UsuarioCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'departamentoId': departamentoId,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'departamento': departamento,
        'departamentoSetor': departamentoSetor,
        'gestorReservaHorarios': gestorReservaHorarios,
        'gestorServicoHorarios': gestorServicoHorarios,
        'reservas': reservas,
        'servicos': servicos,
        '_count': $count,
      };
}

class HorarioSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioSelect({
    this.id,
    this.inicio,
    this.fim,
    this.agendaId,
    this.gestorServicoId,
    this.gestorReservaId,
    this.isReserved,
    this.reservaSolicitadaId,
    this.servicoSolicitadoId,
    this.agenda,
    this.gestorServico,
    this.gestorReserva,
    this.reservaSolicitada,
    this.servicoSolicitado,
  });

  final bool? id;

  final bool? inicio;

  final bool? fim;

  final bool? agendaId;

  final bool? gestorServicoId;

  final bool? gestorReservaId;

  final bool? isReserved;

  final bool? reservaSolicitadaId;

  final bool? servicoSolicitadoId;

  final _i1.PrismaUnion<bool, _i2.HorarioAgendaArgs>? agenda;

  final _i1.PrismaUnion<bool, _i2.HorarioGestorServicoArgs>? gestorServico;

  final _i1.PrismaUnion<bool, _i2.HorarioGestorReservaArgs>? gestorReserva;

  final _i1.PrismaUnion<bool, _i2.HorarioReservaSolicitadaArgs>?
      reservaSolicitada;

  final _i1.PrismaUnion<bool, _i2.HorarioServicoSolicitadoArgs>?
      servicoSolicitado;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
        'agenda': agenda,
        'gestorServico': gestorServico,
        'gestorReserva': gestorReserva,
        'reservaSolicitada': reservaSolicitada,
        'servicoSolicitado': servicoSolicitado,
      };
}

class AgendaHorariosArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaHorariosArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.HorarioWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.HorarioOrderByWithRelationInput>,
      _i2.HorarioOrderByWithRelationInput>? orderBy;

  final _i2.HorarioWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.HorarioScalar, Iterable<_i2.HorarioScalar>>?
      distinct;

  final _i2.HorarioSelect? select;

  final _i2.HorarioInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class AgendaCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaCountOutputTypeSelect({this.horarios});

  final bool? horarios;

  @override
  Map<String, dynamic> toJson() => {'horarios': horarios};
}

class AgendaCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaCountArgs({this.select});

  final _i2.AgendaCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AgendaInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaInclude({
    this.turno,
    this.horarios,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.AgendaTurnoArgs>? turno;

  final _i1.PrismaUnion<bool, _i2.AgendaHorariosArgs>? horarios;

  final _i1.PrismaUnion<bool, _i2.AgendaCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'turno': turno,
        'horarios': horarios,
        '_count': $count,
      };
}

class AgendaWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.observacao,
    this.turnoId,
    this.turno,
    this.horarios,
  });

  final String? id;

  final _i1.PrismaUnion<_i2.AgendaWhereInput, Iterable<_i2.AgendaWhereInput>>?
      AND;

  final Iterable<_i2.AgendaWhereInput>? OR;

  final _i1.PrismaUnion<_i2.AgendaWhereInput, Iterable<_i2.AgendaWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? observacao;

  final _i1.PrismaUnion<_i2.StringFilter, String>? turnoId;

  final _i1.PrismaUnion<_i2.TurnoRelationFilter, _i2.TurnoWhereInput>? turno;

  final _i2.HorarioListRelationFilter? horarios;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'observacao': observacao,
        'turnoId': turnoId,
        'turno': turno,
        'horarios': horarios,
      };
}

enum AgendaScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'Agenda'),
  observacao<String>('observacao', 'Agenda'),
  turnoId<String>('turnoId', 'Agenda');

  const AgendaScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class TurnoAgendaArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoAgendaArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.AgendaWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.AgendaOrderByWithRelationInput>,
      _i2.AgendaOrderByWithRelationInput>? orderBy;

  final _i2.AgendaWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.AgendaScalar, Iterable<_i2.AgendaScalar>>? distinct;

  final _i2.AgendaSelect? select;

  final _i2.AgendaInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class TurnoEspacoArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoEspacoArgs({
    this.select,
    this.include,
  });

  final _i2.EspacoSelect? select;

  final _i2.EspacoInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class TurnoCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoCountOutputTypeSelect({this.agenda});

  final bool? agenda;

  @override
  Map<String, dynamic> toJson() => {'agenda': agenda};
}

class TurnoCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoCountArgs({this.select});

  final _i2.TurnoCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TurnoInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoInclude({
    this.agenda,
    this.espaco,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.TurnoAgendaArgs>? agenda;

  final _i1.PrismaUnion<bool, _i2.TurnoEspacoArgs>? espaco;

  final _i1.PrismaUnion<bool, _i2.TurnoCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'agenda': agenda,
        'espaco': espaco,
        '_count': $count,
      };
}

class AgendaSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaSelect({
    this.id,
    this.observacao,
    this.turnoId,
    this.turno,
    this.horarios,
    this.$count,
  });

  final bool? id;

  final bool? observacao;

  final bool? turnoId;

  final _i1.PrismaUnion<bool, _i2.AgendaTurnoArgs>? turno;

  final _i1.PrismaUnion<bool, _i2.AgendaHorariosArgs>? horarios;

  final _i1.PrismaUnion<bool, _i2.AgendaCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
        'turnoId': turnoId,
        'turno': turno,
        'horarios': horarios,
        '_count': $count,
      };
}

class TurnoSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoSelect({
    this.id,
    this.nome,
    this.espacoId,
    this.agenda,
    this.espaco,
    this.$count,
  });

  final bool? id;

  final bool? nome;

  final bool? espacoId;

  final _i1.PrismaUnion<bool, _i2.TurnoAgendaArgs>? agenda;

  final _i1.PrismaUnion<bool, _i2.TurnoEspacoArgs>? espaco;

  final _i1.PrismaUnion<bool, _i2.TurnoCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'espacoId': espacoId,
        'agenda': agenda,
        'espaco': espaco,
        '_count': $count,
      };
}

class LocalizacaoCreateWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoCreateWithoutEspacoInput({
    this.id,
    required this.campus,
    required this.pavilhao,
    required this.andar,
    required this.numero,
  });

  final String? id;

  final String campus;

  final String pavilhao;

  final int andar;

  final int numero;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'campus': campus,
        'pavilhao': pavilhao,
        'andar': andar,
        'numero': numero,
      };
}

class LocalizacaoUncheckedCreateWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoUncheckedCreateWithoutEspacoInput({
    this.id,
    required this.campus,
    required this.pavilhao,
    required this.andar,
    required this.numero,
  });

  final String? id;

  final String campus;

  final String pavilhao;

  final int andar;

  final int numero;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'campus': campus,
        'pavilhao': pavilhao,
        'andar': andar,
        'numero': numero,
      };
}

class LocalizacaoWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.campus,
    this.pavilhao,
    this.andar,
    this.numero,
    this.espaco,
  });

  final String? id;

  final _i1.PrismaUnion<_i2.LocalizacaoWhereInput,
      Iterable<_i2.LocalizacaoWhereInput>>? AND;

  final Iterable<_i2.LocalizacaoWhereInput>? OR;

  final _i1.PrismaUnion<_i2.LocalizacaoWhereInput,
      Iterable<_i2.LocalizacaoWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? campus;

  final _i1.PrismaUnion<_i2.StringFilter, String>? pavilhao;

  final _i1.PrismaUnion<_i2.IntFilter, int>? andar;

  final _i1.PrismaUnion<_i2.IntFilter, int>? numero;

  final _i1.PrismaUnion<_i2.EspacoNullableRelationFilter,
      _i1.PrismaUnion<_i2.EspacoWhereInput, _i1.PrismaNull>>? espaco;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'campus': campus,
        'pavilhao': pavilhao,
        'andar': andar,
        'numero': numero,
        'espaco': espaco,
      };
}

class LocalizacaoCreateOrConnectWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoCreateOrConnectWithoutEspacoInput({
    required this.where,
    required this.create,
  });

  final _i2.LocalizacaoWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.LocalizacaoCreateWithoutEspacoInput,
      _i2.LocalizacaoUncheckedCreateWithoutEspacoInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class LocalizacaoCreateNestedOneWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoCreateNestedOneWithoutEspacoInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.LocalizacaoCreateWithoutEspacoInput,
      _i2.LocalizacaoUncheckedCreateWithoutEspacoInput>? create;

  final _i2.LocalizacaoCreateOrConnectWithoutEspacoInput? connectOrCreate;

  final _i2.LocalizacaoWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class EquipamentoCreateWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoCreateWithoutEspacoInput({
    this.id,
    required this.nome,
    required this.tipo,
    required this.numTombo,
  });

  final String? id;

  final String nome;

  final String tipo;

  final String numTombo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
      };
}

class EquipamentoUncheckedCreateWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoUncheckedCreateWithoutEspacoInput({
    this.id,
    required this.nome,
    required this.tipo,
    required this.numTombo,
  });

  final String? id;

  final String nome;

  final String tipo;

  final String numTombo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
      };
}

class EquipamentoCreateOrConnectWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoCreateOrConnectWithoutEspacoInput({
    required this.where,
    required this.create,
  });

  final _i2.EquipamentoWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.EquipamentoCreateWithoutEspacoInput,
      _i2.EquipamentoUncheckedCreateWithoutEspacoInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class EquipamentoCreateManyEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoCreateManyEspacoInput({
    this.id,
    required this.nome,
    required this.tipo,
    required this.numTombo,
  });

  final String? id;

  final String nome;

  final String tipo;

  final String numTombo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
      };
}

class EquipamentoCreateManyEspacoInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoCreateManyEspacoInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.EquipamentoCreateManyEspacoInput,
      Iterable<_i2.EquipamentoCreateManyEspacoInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class EquipamentoCreateNestedManyWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoCreateNestedManyWithoutEspacoInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.EquipamentoCreateWithoutEspacoInput,
          _i1.PrismaUnion<
              Iterable<_i2.EquipamentoCreateWithoutEspacoInput>,
              _i1.PrismaUnion<_i2.EquipamentoUncheckedCreateWithoutEspacoInput,
                  Iterable<_i2.EquipamentoUncheckedCreateWithoutEspacoInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.EquipamentoCreateOrConnectWithoutEspacoInput,
          Iterable<_i2.EquipamentoCreateOrConnectWithoutEspacoInput>>?
      connectOrCreate;

  final _i2.EquipamentoCreateManyEspacoInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.EquipamentoWhereUniqueInput,
      Iterable<_i2.EquipamentoWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class TurnoCreateWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoCreateWithoutEspacoInput({
    this.id,
    required this.nome,
    this.agenda,
  });

  final String? id;

  final String nome;

  final _i2.AgendaCreateNestedManyWithoutTurnoInput? agenda;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'agenda': agenda,
      };
}

class HorarioUncheckedCreateWithoutAgendaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUncheckedCreateWithoutAgendaInput({
    this.id,
    required this.inicio,
    required this.fim,
    required this.gestorServicoId,
    required this.gestorReservaId,
    required this.isReserved,
    required this.reservaSolicitadaId,
    required this.servicoSolicitadoId,
  });

  final String? id;

  final String inicio;

  final String fim;

  final String gestorServicoId;

  final String gestorReservaId;

  final bool isReserved;

  final String reservaSolicitadaId;

  final String servicoSolicitadoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
      };
}

class HorarioCreateOrConnectWithoutAgendaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioCreateOrConnectWithoutAgendaInput({
    required this.where,
    required this.create,
  });

  final _i2.HorarioWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.HorarioCreateWithoutAgendaInput,
      _i2.HorarioUncheckedCreateWithoutAgendaInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class HorarioCreateManyAgendaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioCreateManyAgendaInput({
    this.id,
    required this.inicio,
    required this.fim,
    required this.gestorServicoId,
    required this.gestorReservaId,
    required this.isReserved,
    required this.reservaSolicitadaId,
    required this.servicoSolicitadoId,
  });

  final String? id;

  final String inicio;

  final String fim;

  final String gestorServicoId;

  final String gestorReservaId;

  final bool isReserved;

  final String reservaSolicitadaId;

  final String servicoSolicitadoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
      };
}

class HorarioCreateManyAgendaInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioCreateManyAgendaInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.HorarioCreateManyAgendaInput,
      Iterable<_i2.HorarioCreateManyAgendaInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class HorarioUncheckedCreateNestedManyWithoutAgendaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUncheckedCreateNestedManyWithoutAgendaInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.HorarioCreateWithoutAgendaInput,
      _i1.PrismaUnion<
          Iterable<_i2.HorarioCreateWithoutAgendaInput>,
          _i1.PrismaUnion<_i2.HorarioUncheckedCreateWithoutAgendaInput,
              Iterable<_i2.HorarioUncheckedCreateWithoutAgendaInput>>>>? create;

  final _i1.PrismaUnion<_i2.HorarioCreateOrConnectWithoutAgendaInput,
      Iterable<_i2.HorarioCreateOrConnectWithoutAgendaInput>>? connectOrCreate;

  final _i2.HorarioCreateManyAgendaInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class AgendaUncheckedCreateWithoutTurnoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaUncheckedCreateWithoutTurnoInput({
    this.id,
    this.observacao,
    this.horarios,
  });

  final String? id;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? observacao;

  final _i2.HorarioUncheckedCreateNestedManyWithoutAgendaInput? horarios;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
        'horarios': horarios,
      };
}

class AgendaCreateOrConnectWithoutTurnoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaCreateOrConnectWithoutTurnoInput({
    required this.where,
    required this.create,
  });

  final _i2.AgendaWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.AgendaCreateWithoutTurnoInput,
      _i2.AgendaUncheckedCreateWithoutTurnoInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class AgendaCreateManyTurnoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaCreateManyTurnoInput({
    this.id,
    this.observacao,
  });

  final String? id;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? observacao;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
      };
}

class AgendaCreateManyTurnoInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaCreateManyTurnoInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.AgendaCreateManyTurnoInput,
      Iterable<_i2.AgendaCreateManyTurnoInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class AgendaUncheckedCreateNestedManyWithoutTurnoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaUncheckedCreateNestedManyWithoutTurnoInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.AgendaCreateWithoutTurnoInput,
      _i1.PrismaUnion<
          Iterable<_i2.AgendaCreateWithoutTurnoInput>,
          _i1.PrismaUnion<_i2.AgendaUncheckedCreateWithoutTurnoInput,
              Iterable<_i2.AgendaUncheckedCreateWithoutTurnoInput>>>>? create;

  final _i1.PrismaUnion<_i2.AgendaCreateOrConnectWithoutTurnoInput,
      Iterable<_i2.AgendaCreateOrConnectWithoutTurnoInput>>? connectOrCreate;

  final _i2.AgendaCreateManyTurnoInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.AgendaWhereUniqueInput,
      Iterable<_i2.AgendaWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class TurnoUncheckedCreateWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoUncheckedCreateWithoutEspacoInput({
    this.id,
    required this.nome,
    this.agenda,
  });

  final String? id;

  final String nome;

  final _i2.AgendaUncheckedCreateNestedManyWithoutTurnoInput? agenda;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'agenda': agenda,
      };
}

class TurnoCreateOrConnectWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoCreateOrConnectWithoutEspacoInput({
    required this.where,
    required this.create,
  });

  final _i2.TurnoWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.TurnoCreateWithoutEspacoInput,
      _i2.TurnoUncheckedCreateWithoutEspacoInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class TurnoCreateManyEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoCreateManyEspacoInput({
    this.id,
    required this.nome,
  });

  final String? id;

  final String nome;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
      };
}

class TurnoCreateManyEspacoInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoCreateManyEspacoInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.TurnoCreateManyEspacoInput,
      Iterable<_i2.TurnoCreateManyEspacoInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class TurnoCreateNestedManyWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoCreateNestedManyWithoutEspacoInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.TurnoCreateWithoutEspacoInput,
      _i1.PrismaUnion<
          Iterable<_i2.TurnoCreateWithoutEspacoInput>,
          _i1.PrismaUnion<_i2.TurnoUncheckedCreateWithoutEspacoInput,
              Iterable<_i2.TurnoUncheckedCreateWithoutEspacoInput>>>>? create;

  final _i1.PrismaUnion<_i2.TurnoCreateOrConnectWithoutEspacoInput,
      Iterable<_i2.TurnoCreateOrConnectWithoutEspacoInput>>? connectOrCreate;

  final _i2.TurnoCreateManyEspacoInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.TurnoWhereUniqueInput,
      Iterable<_i2.TurnoWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class UsuarioCreateWithoutServicosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioCreateWithoutServicosInput({
    this.id,
    required this.nome,
    required this.email,
    this.telefone,
    required this.photoUrl,
    required this.tipoUsuario,
    required this.sigla,
    required this.isDepartamento,
    this.departamento,
    this.departamentoSetor,
    this.gestorReservaHorarios,
    this.gestorServicoHorarios,
    this.reservas,
  });

  final String? id;

  final String nome;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? telefone;

  final String photoUrl;

  final String tipoUsuario;

  final String sigla;

  final bool isDepartamento;

  final _i2.UsuarioCreateNestedOneWithoutDepartamentoSetorInput? departamento;

  final _i2.UsuarioCreateNestedOneWithoutDepartamentoInput? departamentoSetor;

  final _i2.HorarioCreateNestedManyWithoutGestorReservaInput?
      gestorReservaHorarios;

  final _i2.HorarioCreateNestedManyWithoutGestorServicoInput?
      gestorServicoHorarios;

  final _i2.ReservaCreateNestedManyWithoutSolicitanteInput? reservas;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'departamento': departamento,
        'departamentoSetor': departamentoSetor,
        'gestorReservaHorarios': gestorReservaHorarios,
        'gestorServicoHorarios': gestorServicoHorarios,
        'reservas': reservas,
      };
}

class HorarioUncheckedCreateWithoutGestorReservaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUncheckedCreateWithoutGestorReservaInput({
    this.id,
    required this.inicio,
    required this.fim,
    required this.agendaId,
    required this.gestorServicoId,
    required this.isReserved,
    required this.reservaSolicitadaId,
    required this.servicoSolicitadoId,
  });

  final String? id;

  final String inicio;

  final String fim;

  final String agendaId;

  final String gestorServicoId;

  final bool isReserved;

  final String reservaSolicitadaId;

  final String servicoSolicitadoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
      };
}

class HorarioCreateOrConnectWithoutGestorReservaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioCreateOrConnectWithoutGestorReservaInput({
    required this.where,
    required this.create,
  });

  final _i2.HorarioWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.HorarioCreateWithoutGestorReservaInput,
      _i2.HorarioUncheckedCreateWithoutGestorReservaInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class HorarioCreateManyGestorReservaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioCreateManyGestorReservaInput({
    this.id,
    required this.inicio,
    required this.fim,
    required this.agendaId,
    required this.gestorServicoId,
    required this.isReserved,
    required this.reservaSolicitadaId,
    required this.servicoSolicitadoId,
  });

  final String? id;

  final String inicio;

  final String fim;

  final String agendaId;

  final String gestorServicoId;

  final bool isReserved;

  final String reservaSolicitadaId;

  final String servicoSolicitadoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
      };
}

class HorarioCreateManyGestorReservaInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioCreateManyGestorReservaInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.HorarioCreateManyGestorReservaInput,
      Iterable<_i2.HorarioCreateManyGestorReservaInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class HorarioUncheckedCreateNestedManyWithoutGestorReservaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUncheckedCreateNestedManyWithoutGestorReservaInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.HorarioCreateWithoutGestorReservaInput,
          _i1.PrismaUnion<
              Iterable<_i2.HorarioCreateWithoutGestorReservaInput>,
              _i1.PrismaUnion<
                  _i2.HorarioUncheckedCreateWithoutGestorReservaInput,
                  Iterable<
                      _i2.HorarioUncheckedCreateWithoutGestorReservaInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.HorarioCreateOrConnectWithoutGestorReservaInput,
          Iterable<_i2.HorarioCreateOrConnectWithoutGestorReservaInput>>?
      connectOrCreate;

  final _i2.HorarioCreateManyGestorReservaInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class HorarioUncheckedCreateWithoutGestorServicoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUncheckedCreateWithoutGestorServicoInput({
    this.id,
    required this.inicio,
    required this.fim,
    required this.agendaId,
    required this.gestorReservaId,
    required this.isReserved,
    required this.reservaSolicitadaId,
    required this.servicoSolicitadoId,
  });

  final String? id;

  final String inicio;

  final String fim;

  final String agendaId;

  final String gestorReservaId;

  final bool isReserved;

  final String reservaSolicitadaId;

  final String servicoSolicitadoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
      };
}

class HorarioCreateOrConnectWithoutGestorServicoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioCreateOrConnectWithoutGestorServicoInput({
    required this.where,
    required this.create,
  });

  final _i2.HorarioWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.HorarioCreateWithoutGestorServicoInput,
      _i2.HorarioUncheckedCreateWithoutGestorServicoInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class HorarioCreateManyGestorServicoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioCreateManyGestorServicoInput({
    this.id,
    required this.inicio,
    required this.fim,
    required this.agendaId,
    required this.gestorReservaId,
    required this.isReserved,
    required this.reservaSolicitadaId,
    required this.servicoSolicitadoId,
  });

  final String? id;

  final String inicio;

  final String fim;

  final String agendaId;

  final String gestorReservaId;

  final bool isReserved;

  final String reservaSolicitadaId;

  final String servicoSolicitadoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
      };
}

class HorarioCreateManyGestorServicoInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioCreateManyGestorServicoInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.HorarioCreateManyGestorServicoInput,
      Iterable<_i2.HorarioCreateManyGestorServicoInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class HorarioUncheckedCreateNestedManyWithoutGestorServicoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUncheckedCreateNestedManyWithoutGestorServicoInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.HorarioCreateWithoutGestorServicoInput,
          _i1.PrismaUnion<
              Iterable<_i2.HorarioCreateWithoutGestorServicoInput>,
              _i1.PrismaUnion<
                  _i2.HorarioUncheckedCreateWithoutGestorServicoInput,
                  Iterable<
                      _i2.HorarioUncheckedCreateWithoutGestorServicoInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.HorarioCreateOrConnectWithoutGestorServicoInput,
          Iterable<_i2.HorarioCreateOrConnectWithoutGestorServicoInput>>?
      connectOrCreate;

  final _i2.HorarioCreateManyGestorServicoInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class EspacoCreateWithoutServicosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoCreateWithoutServicosInput({
    this.id,
    required this.capacidadePessoas,
    required this.acessibilidade,
    required this.localizacao,
    this.equipamentoDisponivel,
    this.turnos,
    this.reservas,
  });

  final String? id;

  final int capacidadePessoas;

  final bool acessibilidade;

  final _i2.LocalizacaoCreateNestedOneWithoutEspacoInput localizacao;

  final _i2.EquipamentoCreateNestedManyWithoutEspacoInput?
      equipamentoDisponivel;

  final _i2.TurnoCreateNestedManyWithoutEspacoInput? turnos;

  final _i2.ReservaCreateNestedManyWithoutEspacoInput? reservas;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        'localizacao': localizacao,
        'equipamentoDisponivel': equipamentoDisponivel,
        'turnos': turnos,
        'reservas': reservas,
      };
}

class EquipamentoUncheckedCreateNestedManyWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoUncheckedCreateNestedManyWithoutEspacoInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.EquipamentoCreateWithoutEspacoInput,
          _i1.PrismaUnion<
              Iterable<_i2.EquipamentoCreateWithoutEspacoInput>,
              _i1.PrismaUnion<_i2.EquipamentoUncheckedCreateWithoutEspacoInput,
                  Iterable<_i2.EquipamentoUncheckedCreateWithoutEspacoInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.EquipamentoCreateOrConnectWithoutEspacoInput,
          Iterable<_i2.EquipamentoCreateOrConnectWithoutEspacoInput>>?
      connectOrCreate;

  final _i2.EquipamentoCreateManyEspacoInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.EquipamentoWhereUniqueInput,
      Iterable<_i2.EquipamentoWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class TurnoUncheckedCreateNestedManyWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoUncheckedCreateNestedManyWithoutEspacoInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.TurnoCreateWithoutEspacoInput,
      _i1.PrismaUnion<
          Iterable<_i2.TurnoCreateWithoutEspacoInput>,
          _i1.PrismaUnion<_i2.TurnoUncheckedCreateWithoutEspacoInput,
              Iterable<_i2.TurnoUncheckedCreateWithoutEspacoInput>>>>? create;

  final _i1.PrismaUnion<_i2.TurnoCreateOrConnectWithoutEspacoInput,
      Iterable<_i2.TurnoCreateOrConnectWithoutEspacoInput>>? connectOrCreate;

  final _i2.TurnoCreateManyEspacoInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.TurnoWhereUniqueInput,
      Iterable<_i2.TurnoWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ReservaUncheckedCreateWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaUncheckedCreateWithoutEspacoInput({
    this.id,
    required this.solicitanteId,
    required this.descricao,
    required this.status,
    this.periodo,
  });

  final String? id;

  final String solicitanteId;

  final String descricao;

  final String status;

  final _i2.HorarioUncheckedCreateNestedManyWithoutReservaSolicitadaInput?
      periodo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
        'periodo': periodo,
      };
}

class ReservaCreateOrConnectWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaCreateOrConnectWithoutEspacoInput({
    required this.where,
    required this.create,
  });

  final _i2.ReservaWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ReservaCreateWithoutEspacoInput,
      _i2.ReservaUncheckedCreateWithoutEspacoInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ReservaCreateManyEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaCreateManyEspacoInput({
    this.id,
    required this.solicitanteId,
    required this.descricao,
    required this.status,
  });

  final String? id;

  final String solicitanteId;

  final String descricao;

  final String status;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
      };
}

class ReservaCreateManyEspacoInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaCreateManyEspacoInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.ReservaCreateManyEspacoInput,
      Iterable<_i2.ReservaCreateManyEspacoInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class ReservaUncheckedCreateNestedManyWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaUncheckedCreateNestedManyWithoutEspacoInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.ReservaCreateWithoutEspacoInput,
      _i1.PrismaUnion<
          Iterable<_i2.ReservaCreateWithoutEspacoInput>,
          _i1.PrismaUnion<_i2.ReservaUncheckedCreateWithoutEspacoInput,
              Iterable<_i2.ReservaUncheckedCreateWithoutEspacoInput>>>>? create;

  final _i1.PrismaUnion<_i2.ReservaCreateOrConnectWithoutEspacoInput,
      Iterable<_i2.ReservaCreateOrConnectWithoutEspacoInput>>? connectOrCreate;

  final _i2.ReservaCreateManyEspacoInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ReservaWhereUniqueInput,
      Iterable<_i2.ReservaWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class EspacoUncheckedCreateWithoutServicosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUncheckedCreateWithoutServicosInput({
    this.id,
    required this.localizacaoId,
    required this.capacidadePessoas,
    required this.acessibilidade,
    this.equipamentoDisponivel,
    this.turnos,
    this.reservas,
  });

  final String? id;

  final String localizacaoId;

  final int capacidadePessoas;

  final bool acessibilidade;

  final _i2.EquipamentoUncheckedCreateNestedManyWithoutEspacoInput?
      equipamentoDisponivel;

  final _i2.TurnoUncheckedCreateNestedManyWithoutEspacoInput? turnos;

  final _i2.ReservaUncheckedCreateNestedManyWithoutEspacoInput? reservas;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'localizacaoId': localizacaoId,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        'equipamentoDisponivel': equipamentoDisponivel,
        'turnos': turnos,
        'reservas': reservas,
      };
}

class EspacoWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoWhereUniqueInput({
    this.id,
    this.localizacaoId,
    this.AND,
    this.OR,
    this.NOT,
    this.capacidadePessoas,
    this.acessibilidade,
    this.localizacao,
    this.equipamentoDisponivel,
    this.turnos,
    this.reservas,
    this.servicos,
  });

  final String? id;

  final String? localizacaoId;

  final _i1.PrismaUnion<_i2.EspacoWhereInput, Iterable<_i2.EspacoWhereInput>>?
      AND;

  final Iterable<_i2.EspacoWhereInput>? OR;

  final _i1.PrismaUnion<_i2.EspacoWhereInput, Iterable<_i2.EspacoWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? capacidadePessoas;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? acessibilidade;

  final _i1
      .PrismaUnion<_i2.LocalizacaoRelationFilter, _i2.LocalizacaoWhereInput>?
      localizacao;

  final _i2.EquipamentoListRelationFilter? equipamentoDisponivel;

  final _i2.TurnoListRelationFilter? turnos;

  final _i2.ReservaListRelationFilter? reservas;

  final _i2.ServicoListRelationFilter? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'localizacaoId': localizacaoId,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        'localizacao': localizacao,
        'equipamentoDisponivel': equipamentoDisponivel,
        'turnos': turnos,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class EspacoCreateOrConnectWithoutServicosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoCreateOrConnectWithoutServicosInput({
    required this.where,
    required this.create,
  });

  final _i2.EspacoWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.EspacoCreateWithoutServicosInput,
      _i2.EspacoUncheckedCreateWithoutServicosInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class EspacoCreateNestedOneWithoutServicosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoCreateNestedOneWithoutServicosInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.EspacoCreateWithoutServicosInput,
      _i2.EspacoUncheckedCreateWithoutServicosInput>? create;

  final _i2.EspacoCreateOrConnectWithoutServicosInput? connectOrCreate;

  final _i2.EspacoWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class ServicoCreateWithoutPeriodoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoCreateWithoutPeriodoInput({
    this.id,
    required this.descricao,
    required this.status,
    required this.espaco,
    required this.solicitante,
  });

  final String? id;

  final String descricao;

  final String status;

  final _i2.EspacoCreateNestedOneWithoutServicosInput espaco;

  final _i2.UsuarioCreateNestedOneWithoutServicosInput solicitante;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'descricao': descricao,
        'status': status,
        'espaco': espaco,
        'solicitante': solicitante,
      };
}

class ServicoUncheckedCreateWithoutPeriodoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoUncheckedCreateWithoutPeriodoInput({
    this.id,
    required this.espacoId,
    required this.solicitanteId,
    required this.descricao,
    required this.status,
  });

  final String? id;

  final String espacoId;

  final String solicitanteId;

  final String descricao;

  final String status;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
      };
}

class ServicoCreateOrConnectWithoutPeriodoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoCreateOrConnectWithoutPeriodoInput({
    required this.where,
    required this.create,
  });

  final _i2.ServicoWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ServicoCreateWithoutPeriodoInput,
      _i2.ServicoUncheckedCreateWithoutPeriodoInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ServicoCreateNestedOneWithoutPeriodoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoCreateNestedOneWithoutPeriodoInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ServicoCreateWithoutPeriodoInput,
      _i2.ServicoUncheckedCreateWithoutPeriodoInput>? create;

  final _i2.ServicoCreateOrConnectWithoutPeriodoInput? connectOrCreate;

  final _i2.ServicoWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class HorarioCreateWithoutReservaSolicitadaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioCreateWithoutReservaSolicitadaInput({
    this.id,
    required this.inicio,
    required this.fim,
    required this.isReserved,
    required this.agenda,
    this.gestorServico,
    this.gestorReserva,
    required this.servicoSolicitado,
  });

  final String? id;

  final String inicio;

  final String fim;

  final bool isReserved;

  final _i2.AgendaCreateNestedOneWithoutHorariosInput agenda;

  final _i2.UsuarioCreateNestedOneWithoutGestorServicoHorariosInput?
      gestorServico;

  final _i2.UsuarioCreateNestedOneWithoutGestorReservaHorariosInput?
      gestorReserva;

  final _i2.ServicoCreateNestedOneWithoutPeriodoInput servicoSolicitado;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'isReserved': isReserved,
        'agenda': agenda,
        'gestorServico': gestorServico,
        'gestorReserva': gestorReserva,
        'servicoSolicitado': servicoSolicitado,
      };
}

class HorarioUncheckedCreateWithoutReservaSolicitadaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUncheckedCreateWithoutReservaSolicitadaInput({
    this.id,
    required this.inicio,
    required this.fim,
    required this.agendaId,
    required this.gestorServicoId,
    required this.gestorReservaId,
    required this.isReserved,
    required this.servicoSolicitadoId,
  });

  final String? id;

  final String inicio;

  final String fim;

  final String agendaId;

  final String gestorServicoId;

  final String gestorReservaId;

  final bool isReserved;

  final String servicoSolicitadoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'servicoSolicitadoId': servicoSolicitadoId,
      };
}

class HorarioCreateOrConnectWithoutReservaSolicitadaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioCreateOrConnectWithoutReservaSolicitadaInput({
    required this.where,
    required this.create,
  });

  final _i2.HorarioWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.HorarioCreateWithoutReservaSolicitadaInput,
      _i2.HorarioUncheckedCreateWithoutReservaSolicitadaInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class HorarioCreateManyReservaSolicitadaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioCreateManyReservaSolicitadaInput({
    this.id,
    required this.inicio,
    required this.fim,
    required this.agendaId,
    required this.gestorServicoId,
    required this.gestorReservaId,
    required this.isReserved,
    required this.servicoSolicitadoId,
  });

  final String? id;

  final String inicio;

  final String fim;

  final String agendaId;

  final String gestorServicoId;

  final String gestorReservaId;

  final bool isReserved;

  final String servicoSolicitadoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'servicoSolicitadoId': servicoSolicitadoId,
      };
}

class HorarioCreateManyReservaSolicitadaInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioCreateManyReservaSolicitadaInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.HorarioCreateManyReservaSolicitadaInput,
      Iterable<_i2.HorarioCreateManyReservaSolicitadaInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class HorarioUncheckedCreateNestedManyWithoutReservaSolicitadaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUncheckedCreateNestedManyWithoutReservaSolicitadaInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.HorarioCreateWithoutReservaSolicitadaInput,
          _i1.PrismaUnion<
              Iterable<_i2.HorarioCreateWithoutReservaSolicitadaInput>,
              _i1.PrismaUnion<
                  _i2.HorarioUncheckedCreateWithoutReservaSolicitadaInput,
                  Iterable<
                      _i2
                      .HorarioUncheckedCreateWithoutReservaSolicitadaInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.HorarioCreateOrConnectWithoutReservaSolicitadaInput,
          Iterable<_i2.HorarioCreateOrConnectWithoutReservaSolicitadaInput>>?
      connectOrCreate;

  final _i2.HorarioCreateManyReservaSolicitadaInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ReservaUncheckedCreateWithoutSolicitanteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaUncheckedCreateWithoutSolicitanteInput({
    this.id,
    required this.espacoId,
    required this.descricao,
    required this.status,
    this.periodo,
  });

  final String? id;

  final String espacoId;

  final String descricao;

  final String status;

  final _i2.HorarioUncheckedCreateNestedManyWithoutReservaSolicitadaInput?
      periodo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'descricao': descricao,
        'status': status,
        'periodo': periodo,
      };
}

class ReservaCreateOrConnectWithoutSolicitanteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaCreateOrConnectWithoutSolicitanteInput({
    required this.where,
    required this.create,
  });

  final _i2.ReservaWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ReservaCreateWithoutSolicitanteInput,
      _i2.ReservaUncheckedCreateWithoutSolicitanteInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ReservaCreateManySolicitanteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaCreateManySolicitanteInput({
    this.id,
    required this.espacoId,
    required this.descricao,
    required this.status,
  });

  final String? id;

  final String espacoId;

  final String descricao;

  final String status;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'descricao': descricao,
        'status': status,
      };
}

class ReservaCreateManySolicitanteInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaCreateManySolicitanteInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.ReservaCreateManySolicitanteInput,
      Iterable<_i2.ReservaCreateManySolicitanteInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class ReservaUncheckedCreateNestedManyWithoutSolicitanteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaUncheckedCreateNestedManyWithoutSolicitanteInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.ReservaCreateWithoutSolicitanteInput,
      _i1.PrismaUnion<
          Iterable<_i2.ReservaCreateWithoutSolicitanteInput>,
          _i1.PrismaUnion<
              _i2.ReservaUncheckedCreateWithoutSolicitanteInput,
              Iterable<
                  _i2.ReservaUncheckedCreateWithoutSolicitanteInput>>>>? create;

  final _i1.PrismaUnion<_i2.ReservaCreateOrConnectWithoutSolicitanteInput,
          Iterable<_i2.ReservaCreateOrConnectWithoutSolicitanteInput>>?
      connectOrCreate;

  final _i2.ReservaCreateManySolicitanteInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ReservaWhereUniqueInput,
      Iterable<_i2.ReservaWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ReservaCreateWithoutPeriodoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaCreateWithoutPeriodoInput({
    this.id,
    required this.descricao,
    required this.status,
    required this.espaco,
    required this.solicitante,
  });

  final String? id;

  final String descricao;

  final String status;

  final _i2.EspacoCreateNestedOneWithoutReservasInput espaco;

  final _i2.UsuarioCreateNestedOneWithoutReservasInput solicitante;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'descricao': descricao,
        'status': status,
        'espaco': espaco,
        'solicitante': solicitante,
      };
}

class ReservaUncheckedCreateWithoutPeriodoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaUncheckedCreateWithoutPeriodoInput({
    this.id,
    required this.espacoId,
    required this.solicitanteId,
    required this.descricao,
    required this.status,
  });

  final String? id;

  final String espacoId;

  final String solicitanteId;

  final String descricao;

  final String status;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
      };
}

class ReservaCreateOrConnectWithoutPeriodoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaCreateOrConnectWithoutPeriodoInput({
    required this.where,
    required this.create,
  });

  final _i2.ReservaWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ReservaCreateWithoutPeriodoInput,
      _i2.ReservaUncheckedCreateWithoutPeriodoInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ReservaCreateNestedOneWithoutPeriodoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaCreateNestedOneWithoutPeriodoInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ReservaCreateWithoutPeriodoInput,
      _i2.ReservaUncheckedCreateWithoutPeriodoInput>? create;

  final _i2.ReservaCreateOrConnectWithoutPeriodoInput? connectOrCreate;

  final _i2.ReservaWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class HorarioCreateWithoutServicoSolicitadoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioCreateWithoutServicoSolicitadoInput({
    this.id,
    required this.inicio,
    required this.fim,
    required this.isReserved,
    required this.agenda,
    this.gestorServico,
    this.gestorReserva,
    required this.reservaSolicitada,
  });

  final String? id;

  final String inicio;

  final String fim;

  final bool isReserved;

  final _i2.AgendaCreateNestedOneWithoutHorariosInput agenda;

  final _i2.UsuarioCreateNestedOneWithoutGestorServicoHorariosInput?
      gestorServico;

  final _i2.UsuarioCreateNestedOneWithoutGestorReservaHorariosInput?
      gestorReserva;

  final _i2.ReservaCreateNestedOneWithoutPeriodoInput reservaSolicitada;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'isReserved': isReserved,
        'agenda': agenda,
        'gestorServico': gestorServico,
        'gestorReserva': gestorReserva,
        'reservaSolicitada': reservaSolicitada,
      };
}

class HorarioUncheckedCreateWithoutServicoSolicitadoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUncheckedCreateWithoutServicoSolicitadoInput({
    this.id,
    required this.inicio,
    required this.fim,
    required this.agendaId,
    required this.gestorServicoId,
    required this.gestorReservaId,
    required this.isReserved,
    required this.reservaSolicitadaId,
  });

  final String? id;

  final String inicio;

  final String fim;

  final String agendaId;

  final String gestorServicoId;

  final String gestorReservaId;

  final bool isReserved;

  final String reservaSolicitadaId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
      };
}

class HorarioCreateOrConnectWithoutServicoSolicitadoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioCreateOrConnectWithoutServicoSolicitadoInput({
    required this.where,
    required this.create,
  });

  final _i2.HorarioWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.HorarioCreateWithoutServicoSolicitadoInput,
      _i2.HorarioUncheckedCreateWithoutServicoSolicitadoInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class HorarioCreateManyServicoSolicitadoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioCreateManyServicoSolicitadoInput({
    this.id,
    required this.inicio,
    required this.fim,
    required this.agendaId,
    required this.gestorServicoId,
    required this.gestorReservaId,
    required this.isReserved,
    required this.reservaSolicitadaId,
  });

  final String? id;

  final String inicio;

  final String fim;

  final String agendaId;

  final String gestorServicoId;

  final String gestorReservaId;

  final bool isReserved;

  final String reservaSolicitadaId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
      };
}

class HorarioCreateManyServicoSolicitadoInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioCreateManyServicoSolicitadoInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.HorarioCreateManyServicoSolicitadoInput,
      Iterable<_i2.HorarioCreateManyServicoSolicitadoInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class HorarioCreateNestedManyWithoutServicoSolicitadoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioCreateNestedManyWithoutServicoSolicitadoInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.HorarioCreateWithoutServicoSolicitadoInput,
          _i1.PrismaUnion<
              Iterable<_i2.HorarioCreateWithoutServicoSolicitadoInput>,
              _i1.PrismaUnion<
                  _i2.HorarioUncheckedCreateWithoutServicoSolicitadoInput,
                  Iterable<
                      _i2
                      .HorarioUncheckedCreateWithoutServicoSolicitadoInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.HorarioCreateOrConnectWithoutServicoSolicitadoInput,
          Iterable<_i2.HorarioCreateOrConnectWithoutServicoSolicitadoInput>>?
      connectOrCreate;

  final _i2.HorarioCreateManyServicoSolicitadoInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ServicoCreateWithoutSolicitanteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoCreateWithoutSolicitanteInput({
    this.id,
    required this.descricao,
    required this.status,
    required this.espaco,
    this.periodo,
  });

  final String? id;

  final String descricao;

  final String status;

  final _i2.EspacoCreateNestedOneWithoutServicosInput espaco;

  final _i2.HorarioCreateNestedManyWithoutServicoSolicitadoInput? periodo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'descricao': descricao,
        'status': status,
        'espaco': espaco,
        'periodo': periodo,
      };
}

class HorarioUncheckedCreateNestedManyWithoutServicoSolicitadoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUncheckedCreateNestedManyWithoutServicoSolicitadoInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.HorarioCreateWithoutServicoSolicitadoInput,
          _i1.PrismaUnion<
              Iterable<_i2.HorarioCreateWithoutServicoSolicitadoInput>,
              _i1.PrismaUnion<
                  _i2.HorarioUncheckedCreateWithoutServicoSolicitadoInput,
                  Iterable<
                      _i2
                      .HorarioUncheckedCreateWithoutServicoSolicitadoInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.HorarioCreateOrConnectWithoutServicoSolicitadoInput,
          Iterable<_i2.HorarioCreateOrConnectWithoutServicoSolicitadoInput>>?
      connectOrCreate;

  final _i2.HorarioCreateManyServicoSolicitadoInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ServicoUncheckedCreateWithoutSolicitanteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoUncheckedCreateWithoutSolicitanteInput({
    this.id,
    required this.espacoId,
    required this.descricao,
    required this.status,
    this.periodo,
  });

  final String? id;

  final String espacoId;

  final String descricao;

  final String status;

  final _i2.HorarioUncheckedCreateNestedManyWithoutServicoSolicitadoInput?
      periodo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'descricao': descricao,
        'status': status,
        'periodo': periodo,
      };
}

class ServicoCreateOrConnectWithoutSolicitanteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoCreateOrConnectWithoutSolicitanteInput({
    required this.where,
    required this.create,
  });

  final _i2.ServicoWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ServicoCreateWithoutSolicitanteInput,
      _i2.ServicoUncheckedCreateWithoutSolicitanteInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ServicoCreateManySolicitanteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoCreateManySolicitanteInput({
    this.id,
    required this.espacoId,
    required this.descricao,
    required this.status,
  });

  final String? id;

  final String espacoId;

  final String descricao;

  final String status;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'descricao': descricao,
        'status': status,
      };
}

class ServicoCreateManySolicitanteInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoCreateManySolicitanteInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.ServicoCreateManySolicitanteInput,
      Iterable<_i2.ServicoCreateManySolicitanteInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class ServicoUncheckedCreateNestedManyWithoutSolicitanteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoUncheckedCreateNestedManyWithoutSolicitanteInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.ServicoCreateWithoutSolicitanteInput,
      _i1.PrismaUnion<
          Iterable<_i2.ServicoCreateWithoutSolicitanteInput>,
          _i1.PrismaUnion<
              _i2.ServicoUncheckedCreateWithoutSolicitanteInput,
              Iterable<
                  _i2.ServicoUncheckedCreateWithoutSolicitanteInput>>>>? create;

  final _i1.PrismaUnion<_i2.ServicoCreateOrConnectWithoutSolicitanteInput,
          Iterable<_i2.ServicoCreateOrConnectWithoutSolicitanteInput>>?
      connectOrCreate;

  final _i2.ServicoCreateManySolicitanteInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ServicoWhereUniqueInput,
      Iterable<_i2.ServicoWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class UsuarioUncheckedCreateWithoutDepartamentoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUncheckedCreateWithoutDepartamentoInput({
    this.id,
    required this.nome,
    required this.email,
    this.telefone,
    required this.photoUrl,
    required this.tipoUsuario,
    required this.sigla,
    required this.isDepartamento,
    this.departamentoSetor,
    this.gestorReservaHorarios,
    this.gestorServicoHorarios,
    this.reservas,
    this.servicos,
  });

  final String? id;

  final String nome;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? telefone;

  final String photoUrl;

  final String tipoUsuario;

  final String sigla;

  final bool isDepartamento;

  final _i2.UsuarioUncheckedCreateNestedOneWithoutDepartamentoInput?
      departamentoSetor;

  final _i2.HorarioUncheckedCreateNestedManyWithoutGestorReservaInput?
      gestorReservaHorarios;

  final _i2.HorarioUncheckedCreateNestedManyWithoutGestorServicoInput?
      gestorServicoHorarios;

  final _i2.ReservaUncheckedCreateNestedManyWithoutSolicitanteInput? reservas;

  final _i2.ServicoUncheckedCreateNestedManyWithoutSolicitanteInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'departamentoSetor': departamentoSetor,
        'gestorReservaHorarios': gestorReservaHorarios,
        'gestorServicoHorarios': gestorServicoHorarios,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class UsuarioWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioWhereUniqueInput({
    this.id,
    this.email,
    this.departamentoId,
    this.AND,
    this.OR,
    this.NOT,
    this.nome,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.sigla,
    this.isDepartamento,
    this.departamento,
    this.departamentoSetor,
    this.gestorReservaHorarios,
    this.gestorServicoHorarios,
    this.reservas,
    this.servicos,
  });

  final String? id;

  final String? email;

  final String? departamentoId;

  final _i1.PrismaUnion<_i2.UsuarioWhereInput, Iterable<_i2.UsuarioWhereInput>>?
      AND;

  final Iterable<_i2.UsuarioWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UsuarioWhereInput, Iterable<_i2.UsuarioWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? nome;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? telefone;

  final _i1.PrismaUnion<_i2.StringFilter, String>? photoUrl;

  final _i1.PrismaUnion<_i2.StringFilter, String>? tipoUsuario;

  final _i1.PrismaUnion<_i2.StringFilter, String>? sigla;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? isDepartamento;

  final _i1.PrismaUnion<_i2.UsuarioNullableRelationFilter,
      _i1.PrismaUnion<_i2.UsuarioWhereInput, _i1.PrismaNull>>? departamento;

  final _i1.PrismaUnion<_i2.UsuarioNullableRelationFilter,
          _i1.PrismaUnion<_i2.UsuarioWhereInput, _i1.PrismaNull>>?
      departamentoSetor;

  final _i2.HorarioListRelationFilter? gestorReservaHorarios;

  final _i2.HorarioListRelationFilter? gestorServicoHorarios;

  final _i2.ReservaListRelationFilter? reservas;

  final _i2.ServicoListRelationFilter? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'departamentoId': departamentoId,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'nome': nome,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'departamento': departamento,
        'departamentoSetor': departamentoSetor,
        'gestorReservaHorarios': gestorReservaHorarios,
        'gestorServicoHorarios': gestorServicoHorarios,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class UsuarioCreateOrConnectWithoutDepartamentoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioCreateOrConnectWithoutDepartamentoInput({
    required this.where,
    required this.create,
  });

  final _i2.UsuarioWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.UsuarioCreateWithoutDepartamentoInput,
      _i2.UsuarioUncheckedCreateWithoutDepartamentoInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class UsuarioUncheckedCreateNestedOneWithoutDepartamentoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUncheckedCreateNestedOneWithoutDepartamentoInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.UsuarioCreateWithoutDepartamentoInput,
      _i2.UsuarioUncheckedCreateWithoutDepartamentoInput>? create;

  final _i2.UsuarioCreateOrConnectWithoutDepartamentoInput? connectOrCreate;

  final _i2.UsuarioWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class UsuarioUncheckedCreateWithoutServicosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUncheckedCreateWithoutServicosInput({
    this.id,
    required this.nome,
    required this.email,
    this.telefone,
    required this.photoUrl,
    required this.tipoUsuario,
    this.departamentoId,
    required this.sigla,
    required this.isDepartamento,
    this.departamentoSetor,
    this.gestorReservaHorarios,
    this.gestorServicoHorarios,
    this.reservas,
  });

  final String? id;

  final String nome;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? telefone;

  final String photoUrl;

  final String tipoUsuario;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? departamentoId;

  final String sigla;

  final bool isDepartamento;

  final _i2.UsuarioUncheckedCreateNestedOneWithoutDepartamentoInput?
      departamentoSetor;

  final _i2.HorarioUncheckedCreateNestedManyWithoutGestorReservaInput?
      gestorReservaHorarios;

  final _i2.HorarioUncheckedCreateNestedManyWithoutGestorServicoInput?
      gestorServicoHorarios;

  final _i2.ReservaUncheckedCreateNestedManyWithoutSolicitanteInput? reservas;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'departamentoId': departamentoId,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'departamentoSetor': departamentoSetor,
        'gestorReservaHorarios': gestorReservaHorarios,
        'gestorServicoHorarios': gestorServicoHorarios,
        'reservas': reservas,
      };
}

class UsuarioCreateOrConnectWithoutServicosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioCreateOrConnectWithoutServicosInput({
    required this.where,
    required this.create,
  });

  final _i2.UsuarioWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.UsuarioCreateWithoutServicosInput,
      _i2.UsuarioUncheckedCreateWithoutServicosInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class UsuarioCreateNestedOneWithoutServicosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioCreateNestedOneWithoutServicosInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.UsuarioCreateWithoutServicosInput,
      _i2.UsuarioUncheckedCreateWithoutServicosInput>? create;

  final _i2.UsuarioCreateOrConnectWithoutServicosInput? connectOrCreate;

  final _i2.UsuarioWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class ServicoCreateWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoCreateWithoutEspacoInput({
    this.id,
    required this.descricao,
    required this.status,
    required this.solicitante,
    this.periodo,
  });

  final String? id;

  final String descricao;

  final String status;

  final _i2.UsuarioCreateNestedOneWithoutServicosInput solicitante;

  final _i2.HorarioCreateNestedManyWithoutServicoSolicitadoInput? periodo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'descricao': descricao,
        'status': status,
        'solicitante': solicitante,
        'periodo': periodo,
      };
}

class ServicoUncheckedCreateWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoUncheckedCreateWithoutEspacoInput({
    this.id,
    required this.solicitanteId,
    required this.descricao,
    required this.status,
    this.periodo,
  });

  final String? id;

  final String solicitanteId;

  final String descricao;

  final String status;

  final _i2.HorarioUncheckedCreateNestedManyWithoutServicoSolicitadoInput?
      periodo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
        'periodo': periodo,
      };
}

class ServicoCreateOrConnectWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoCreateOrConnectWithoutEspacoInput({
    required this.where,
    required this.create,
  });

  final _i2.ServicoWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ServicoCreateWithoutEspacoInput,
      _i2.ServicoUncheckedCreateWithoutEspacoInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ServicoCreateManyEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoCreateManyEspacoInput({
    this.id,
    required this.solicitanteId,
    required this.descricao,
    required this.status,
  });

  final String? id;

  final String solicitanteId;

  final String descricao;

  final String status;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
      };
}

class ServicoCreateManyEspacoInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoCreateManyEspacoInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.ServicoCreateManyEspacoInput,
      Iterable<_i2.ServicoCreateManyEspacoInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class ServicoCreateNestedManyWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoCreateNestedManyWithoutEspacoInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.ServicoCreateWithoutEspacoInput,
      _i1.PrismaUnion<
          Iterable<_i2.ServicoCreateWithoutEspacoInput>,
          _i1.PrismaUnion<_i2.ServicoUncheckedCreateWithoutEspacoInput,
              Iterable<_i2.ServicoUncheckedCreateWithoutEspacoInput>>>>? create;

  final _i1.PrismaUnion<_i2.ServicoCreateOrConnectWithoutEspacoInput,
      Iterable<_i2.ServicoCreateOrConnectWithoutEspacoInput>>? connectOrCreate;

  final _i2.ServicoCreateManyEspacoInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ServicoWhereUniqueInput,
      Iterable<_i2.ServicoWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class EspacoCreateWithoutReservasInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoCreateWithoutReservasInput({
    this.id,
    required this.capacidadePessoas,
    required this.acessibilidade,
    required this.localizacao,
    this.equipamentoDisponivel,
    this.turnos,
    this.servicos,
  });

  final String? id;

  final int capacidadePessoas;

  final bool acessibilidade;

  final _i2.LocalizacaoCreateNestedOneWithoutEspacoInput localizacao;

  final _i2.EquipamentoCreateNestedManyWithoutEspacoInput?
      equipamentoDisponivel;

  final _i2.TurnoCreateNestedManyWithoutEspacoInput? turnos;

  final _i2.ServicoCreateNestedManyWithoutEspacoInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        'localizacao': localizacao,
        'equipamentoDisponivel': equipamentoDisponivel,
        'turnos': turnos,
        'servicos': servicos,
      };
}

class ServicoUncheckedCreateNestedManyWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoUncheckedCreateNestedManyWithoutEspacoInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.ServicoCreateWithoutEspacoInput,
      _i1.PrismaUnion<
          Iterable<_i2.ServicoCreateWithoutEspacoInput>,
          _i1.PrismaUnion<_i2.ServicoUncheckedCreateWithoutEspacoInput,
              Iterable<_i2.ServicoUncheckedCreateWithoutEspacoInput>>>>? create;

  final _i1.PrismaUnion<_i2.ServicoCreateOrConnectWithoutEspacoInput,
      Iterable<_i2.ServicoCreateOrConnectWithoutEspacoInput>>? connectOrCreate;

  final _i2.ServicoCreateManyEspacoInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ServicoWhereUniqueInput,
      Iterable<_i2.ServicoWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class EspacoUncheckedCreateWithoutReservasInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUncheckedCreateWithoutReservasInput({
    this.id,
    required this.localizacaoId,
    required this.capacidadePessoas,
    required this.acessibilidade,
    this.equipamentoDisponivel,
    this.turnos,
    this.servicos,
  });

  final String? id;

  final String localizacaoId;

  final int capacidadePessoas;

  final bool acessibilidade;

  final _i2.EquipamentoUncheckedCreateNestedManyWithoutEspacoInput?
      equipamentoDisponivel;

  final _i2.TurnoUncheckedCreateNestedManyWithoutEspacoInput? turnos;

  final _i2.ServicoUncheckedCreateNestedManyWithoutEspacoInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'localizacaoId': localizacaoId,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        'equipamentoDisponivel': equipamentoDisponivel,
        'turnos': turnos,
        'servicos': servicos,
      };
}

class EspacoCreateOrConnectWithoutReservasInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoCreateOrConnectWithoutReservasInput({
    required this.where,
    required this.create,
  });

  final _i2.EspacoWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.EspacoCreateWithoutReservasInput,
      _i2.EspacoUncheckedCreateWithoutReservasInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class EspacoCreateNestedOneWithoutReservasInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoCreateNestedOneWithoutReservasInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.EspacoCreateWithoutReservasInput,
      _i2.EspacoUncheckedCreateWithoutReservasInput>? create;

  final _i2.EspacoCreateOrConnectWithoutReservasInput? connectOrCreate;

  final _i2.EspacoWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class HorarioCreateNestedManyWithoutReservaSolicitadaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioCreateNestedManyWithoutReservaSolicitadaInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.HorarioCreateWithoutReservaSolicitadaInput,
          _i1.PrismaUnion<
              Iterable<_i2.HorarioCreateWithoutReservaSolicitadaInput>,
              _i1.PrismaUnion<
                  _i2.HorarioUncheckedCreateWithoutReservaSolicitadaInput,
                  Iterable<
                      _i2
                      .HorarioUncheckedCreateWithoutReservaSolicitadaInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.HorarioCreateOrConnectWithoutReservaSolicitadaInput,
          Iterable<_i2.HorarioCreateOrConnectWithoutReservaSolicitadaInput>>?
      connectOrCreate;

  final _i2.HorarioCreateManyReservaSolicitadaInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ReservaCreateWithoutSolicitanteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaCreateWithoutSolicitanteInput({
    this.id,
    required this.descricao,
    required this.status,
    required this.espaco,
    this.periodo,
  });

  final String? id;

  final String descricao;

  final String status;

  final _i2.EspacoCreateNestedOneWithoutReservasInput espaco;

  final _i2.HorarioCreateNestedManyWithoutReservaSolicitadaInput? periodo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'descricao': descricao,
        'status': status,
        'espaco': espaco,
        'periodo': periodo,
      };
}

class ReservaCreateNestedManyWithoutSolicitanteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaCreateNestedManyWithoutSolicitanteInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.ReservaCreateWithoutSolicitanteInput,
      _i1.PrismaUnion<
          Iterable<_i2.ReservaCreateWithoutSolicitanteInput>,
          _i1.PrismaUnion<
              _i2.ReservaUncheckedCreateWithoutSolicitanteInput,
              Iterable<
                  _i2.ReservaUncheckedCreateWithoutSolicitanteInput>>>>? create;

  final _i1.PrismaUnion<_i2.ReservaCreateOrConnectWithoutSolicitanteInput,
          Iterable<_i2.ReservaCreateOrConnectWithoutSolicitanteInput>>?
      connectOrCreate;

  final _i2.ReservaCreateManySolicitanteInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ReservaWhereUniqueInput,
      Iterable<_i2.ReservaWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ServicoCreateNestedManyWithoutSolicitanteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoCreateNestedManyWithoutSolicitanteInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.ServicoCreateWithoutSolicitanteInput,
      _i1.PrismaUnion<
          Iterable<_i2.ServicoCreateWithoutSolicitanteInput>,
          _i1.PrismaUnion<
              _i2.ServicoUncheckedCreateWithoutSolicitanteInput,
              Iterable<
                  _i2.ServicoUncheckedCreateWithoutSolicitanteInput>>>>? create;

  final _i1.PrismaUnion<_i2.ServicoCreateOrConnectWithoutSolicitanteInput,
          Iterable<_i2.ServicoCreateOrConnectWithoutSolicitanteInput>>?
      connectOrCreate;

  final _i2.ServicoCreateManySolicitanteInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ServicoWhereUniqueInput,
      Iterable<_i2.ServicoWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class UsuarioCreateWithoutGestorReservaHorariosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioCreateWithoutGestorReservaHorariosInput({
    this.id,
    required this.nome,
    required this.email,
    this.telefone,
    required this.photoUrl,
    required this.tipoUsuario,
    required this.sigla,
    required this.isDepartamento,
    this.departamento,
    this.departamentoSetor,
    this.gestorServicoHorarios,
    this.reservas,
    this.servicos,
  });

  final String? id;

  final String nome;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? telefone;

  final String photoUrl;

  final String tipoUsuario;

  final String sigla;

  final bool isDepartamento;

  final _i2.UsuarioCreateNestedOneWithoutDepartamentoSetorInput? departamento;

  final _i2.UsuarioCreateNestedOneWithoutDepartamentoInput? departamentoSetor;

  final _i2.HorarioCreateNestedManyWithoutGestorServicoInput?
      gestorServicoHorarios;

  final _i2.ReservaCreateNestedManyWithoutSolicitanteInput? reservas;

  final _i2.ServicoCreateNestedManyWithoutSolicitanteInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'departamento': departamento,
        'departamentoSetor': departamentoSetor,
        'gestorServicoHorarios': gestorServicoHorarios,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class UsuarioUncheckedCreateWithoutGestorReservaHorariosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUncheckedCreateWithoutGestorReservaHorariosInput({
    this.id,
    required this.nome,
    required this.email,
    this.telefone,
    required this.photoUrl,
    required this.tipoUsuario,
    this.departamentoId,
    required this.sigla,
    required this.isDepartamento,
    this.departamentoSetor,
    this.gestorServicoHorarios,
    this.reservas,
    this.servicos,
  });

  final String? id;

  final String nome;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? telefone;

  final String photoUrl;

  final String tipoUsuario;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? departamentoId;

  final String sigla;

  final bool isDepartamento;

  final _i2.UsuarioUncheckedCreateNestedOneWithoutDepartamentoInput?
      departamentoSetor;

  final _i2.HorarioUncheckedCreateNestedManyWithoutGestorServicoInput?
      gestorServicoHorarios;

  final _i2.ReservaUncheckedCreateNestedManyWithoutSolicitanteInput? reservas;

  final _i2.ServicoUncheckedCreateNestedManyWithoutSolicitanteInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'departamentoId': departamentoId,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'departamentoSetor': departamentoSetor,
        'gestorServicoHorarios': gestorServicoHorarios,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class UsuarioCreateOrConnectWithoutGestorReservaHorariosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioCreateOrConnectWithoutGestorReservaHorariosInput({
    required this.where,
    required this.create,
  });

  final _i2.UsuarioWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.UsuarioCreateWithoutGestorReservaHorariosInput,
      _i2.UsuarioUncheckedCreateWithoutGestorReservaHorariosInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class UsuarioCreateNestedOneWithoutGestorReservaHorariosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioCreateNestedOneWithoutGestorReservaHorariosInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.UsuarioCreateWithoutGestorReservaHorariosInput,
      _i2.UsuarioUncheckedCreateWithoutGestorReservaHorariosInput>? create;

  final _i2.UsuarioCreateOrConnectWithoutGestorReservaHorariosInput?
      connectOrCreate;

  final _i2.UsuarioWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class HorarioCreateWithoutGestorServicoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioCreateWithoutGestorServicoInput({
    this.id,
    required this.inicio,
    required this.fim,
    required this.isReserved,
    required this.agenda,
    this.gestorReserva,
    required this.reservaSolicitada,
    required this.servicoSolicitado,
  });

  final String? id;

  final String inicio;

  final String fim;

  final bool isReserved;

  final _i2.AgendaCreateNestedOneWithoutHorariosInput agenda;

  final _i2.UsuarioCreateNestedOneWithoutGestorReservaHorariosInput?
      gestorReserva;

  final _i2.ReservaCreateNestedOneWithoutPeriodoInput reservaSolicitada;

  final _i2.ServicoCreateNestedOneWithoutPeriodoInput servicoSolicitado;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'isReserved': isReserved,
        'agenda': agenda,
        'gestorReserva': gestorReserva,
        'reservaSolicitada': reservaSolicitada,
        'servicoSolicitado': servicoSolicitado,
      };
}

class HorarioCreateNestedManyWithoutGestorServicoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioCreateNestedManyWithoutGestorServicoInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.HorarioCreateWithoutGestorServicoInput,
          _i1.PrismaUnion<
              Iterable<_i2.HorarioCreateWithoutGestorServicoInput>,
              _i1.PrismaUnion<
                  _i2.HorarioUncheckedCreateWithoutGestorServicoInput,
                  Iterable<
                      _i2.HorarioUncheckedCreateWithoutGestorServicoInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.HorarioCreateOrConnectWithoutGestorServicoInput,
          Iterable<_i2.HorarioCreateOrConnectWithoutGestorServicoInput>>?
      connectOrCreate;

  final _i2.HorarioCreateManyGestorServicoInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class UsuarioCreateWithoutDepartamentoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioCreateWithoutDepartamentoInput({
    this.id,
    required this.nome,
    required this.email,
    this.telefone,
    required this.photoUrl,
    required this.tipoUsuario,
    required this.sigla,
    required this.isDepartamento,
    this.departamentoSetor,
    this.gestorReservaHorarios,
    this.gestorServicoHorarios,
    this.reservas,
    this.servicos,
  });

  final String? id;

  final String nome;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? telefone;

  final String photoUrl;

  final String tipoUsuario;

  final String sigla;

  final bool isDepartamento;

  final _i2.UsuarioCreateNestedOneWithoutDepartamentoInput? departamentoSetor;

  final _i2.HorarioCreateNestedManyWithoutGestorReservaInput?
      gestorReservaHorarios;

  final _i2.HorarioCreateNestedManyWithoutGestorServicoInput?
      gestorServicoHorarios;

  final _i2.ReservaCreateNestedManyWithoutSolicitanteInput? reservas;

  final _i2.ServicoCreateNestedManyWithoutSolicitanteInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'departamentoSetor': departamentoSetor,
        'gestorReservaHorarios': gestorReservaHorarios,
        'gestorServicoHorarios': gestorServicoHorarios,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class UsuarioCreateNestedOneWithoutDepartamentoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioCreateNestedOneWithoutDepartamentoInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.UsuarioCreateWithoutDepartamentoInput,
      _i2.UsuarioUncheckedCreateWithoutDepartamentoInput>? create;

  final _i2.UsuarioCreateOrConnectWithoutDepartamentoInput? connectOrCreate;

  final _i2.UsuarioWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class UsuarioCreateWithoutReservasInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioCreateWithoutReservasInput({
    this.id,
    required this.nome,
    required this.email,
    this.telefone,
    required this.photoUrl,
    required this.tipoUsuario,
    required this.sigla,
    required this.isDepartamento,
    this.departamento,
    this.departamentoSetor,
    this.gestorReservaHorarios,
    this.gestorServicoHorarios,
    this.servicos,
  });

  final String? id;

  final String nome;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? telefone;

  final String photoUrl;

  final String tipoUsuario;

  final String sigla;

  final bool isDepartamento;

  final _i2.UsuarioCreateNestedOneWithoutDepartamentoSetorInput? departamento;

  final _i2.UsuarioCreateNestedOneWithoutDepartamentoInput? departamentoSetor;

  final _i2.HorarioCreateNestedManyWithoutGestorReservaInput?
      gestorReservaHorarios;

  final _i2.HorarioCreateNestedManyWithoutGestorServicoInput?
      gestorServicoHorarios;

  final _i2.ServicoCreateNestedManyWithoutSolicitanteInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'departamento': departamento,
        'departamentoSetor': departamentoSetor,
        'gestorReservaHorarios': gestorReservaHorarios,
        'gestorServicoHorarios': gestorServicoHorarios,
        'servicos': servicos,
      };
}

class UsuarioUncheckedCreateWithoutReservasInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUncheckedCreateWithoutReservasInput({
    this.id,
    required this.nome,
    required this.email,
    this.telefone,
    required this.photoUrl,
    required this.tipoUsuario,
    this.departamentoId,
    required this.sigla,
    required this.isDepartamento,
    this.departamentoSetor,
    this.gestorReservaHorarios,
    this.gestorServicoHorarios,
    this.servicos,
  });

  final String? id;

  final String nome;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? telefone;

  final String photoUrl;

  final String tipoUsuario;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? departamentoId;

  final String sigla;

  final bool isDepartamento;

  final _i2.UsuarioUncheckedCreateNestedOneWithoutDepartamentoInput?
      departamentoSetor;

  final _i2.HorarioUncheckedCreateNestedManyWithoutGestorReservaInput?
      gestorReservaHorarios;

  final _i2.HorarioUncheckedCreateNestedManyWithoutGestorServicoInput?
      gestorServicoHorarios;

  final _i2.ServicoUncheckedCreateNestedManyWithoutSolicitanteInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'departamentoId': departamentoId,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'departamentoSetor': departamentoSetor,
        'gestorReservaHorarios': gestorReservaHorarios,
        'gestorServicoHorarios': gestorServicoHorarios,
        'servicos': servicos,
      };
}

class UsuarioCreateOrConnectWithoutReservasInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioCreateOrConnectWithoutReservasInput({
    required this.where,
    required this.create,
  });

  final _i2.UsuarioWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.UsuarioCreateWithoutReservasInput,
      _i2.UsuarioUncheckedCreateWithoutReservasInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class UsuarioCreateNestedOneWithoutReservasInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioCreateNestedOneWithoutReservasInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.UsuarioCreateWithoutReservasInput,
      _i2.UsuarioUncheckedCreateWithoutReservasInput>? create;

  final _i2.UsuarioCreateOrConnectWithoutReservasInput? connectOrCreate;

  final _i2.UsuarioWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class ReservaCreateWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaCreateWithoutEspacoInput({
    this.id,
    required this.descricao,
    required this.status,
    required this.solicitante,
    this.periodo,
  });

  final String? id;

  final String descricao;

  final String status;

  final _i2.UsuarioCreateNestedOneWithoutReservasInput solicitante;

  final _i2.HorarioCreateNestedManyWithoutReservaSolicitadaInput? periodo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'descricao': descricao,
        'status': status,
        'solicitante': solicitante,
        'periodo': periodo,
      };
}

class ReservaCreateNestedManyWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaCreateNestedManyWithoutEspacoInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.ReservaCreateWithoutEspacoInput,
      _i1.PrismaUnion<
          Iterable<_i2.ReservaCreateWithoutEspacoInput>,
          _i1.PrismaUnion<_i2.ReservaUncheckedCreateWithoutEspacoInput,
              Iterable<_i2.ReservaUncheckedCreateWithoutEspacoInput>>>>? create;

  final _i1.PrismaUnion<_i2.ReservaCreateOrConnectWithoutEspacoInput,
      Iterable<_i2.ReservaCreateOrConnectWithoutEspacoInput>>? connectOrCreate;

  final _i2.ReservaCreateManyEspacoInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ReservaWhereUniqueInput,
      Iterable<_i2.ReservaWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class EspacoCreateWithoutTurnosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoCreateWithoutTurnosInput({
    this.id,
    required this.capacidadePessoas,
    required this.acessibilidade,
    required this.localizacao,
    this.equipamentoDisponivel,
    this.reservas,
    this.servicos,
  });

  final String? id;

  final int capacidadePessoas;

  final bool acessibilidade;

  final _i2.LocalizacaoCreateNestedOneWithoutEspacoInput localizacao;

  final _i2.EquipamentoCreateNestedManyWithoutEspacoInput?
      equipamentoDisponivel;

  final _i2.ReservaCreateNestedManyWithoutEspacoInput? reservas;

  final _i2.ServicoCreateNestedManyWithoutEspacoInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        'localizacao': localizacao,
        'equipamentoDisponivel': equipamentoDisponivel,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class EspacoUncheckedCreateWithoutTurnosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUncheckedCreateWithoutTurnosInput({
    this.id,
    required this.localizacaoId,
    required this.capacidadePessoas,
    required this.acessibilidade,
    this.equipamentoDisponivel,
    this.reservas,
    this.servicos,
  });

  final String? id;

  final String localizacaoId;

  final int capacidadePessoas;

  final bool acessibilidade;

  final _i2.EquipamentoUncheckedCreateNestedManyWithoutEspacoInput?
      equipamentoDisponivel;

  final _i2.ReservaUncheckedCreateNestedManyWithoutEspacoInput? reservas;

  final _i2.ServicoUncheckedCreateNestedManyWithoutEspacoInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'localizacaoId': localizacaoId,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        'equipamentoDisponivel': equipamentoDisponivel,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class EspacoCreateOrConnectWithoutTurnosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoCreateOrConnectWithoutTurnosInput({
    required this.where,
    required this.create,
  });

  final _i2.EspacoWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.EspacoCreateWithoutTurnosInput,
      _i2.EspacoUncheckedCreateWithoutTurnosInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class EspacoCreateNestedOneWithoutTurnosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoCreateNestedOneWithoutTurnosInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.EspacoCreateWithoutTurnosInput,
      _i2.EspacoUncheckedCreateWithoutTurnosInput>? create;

  final _i2.EspacoCreateOrConnectWithoutTurnosInput? connectOrCreate;

  final _i2.EspacoWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class TurnoCreateWithoutAgendaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoCreateWithoutAgendaInput({
    this.id,
    required this.nome,
    required this.espaco,
  });

  final String? id;

  final String nome;

  final _i2.EspacoCreateNestedOneWithoutTurnosInput espaco;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'espaco': espaco,
      };
}

class TurnoUncheckedCreateWithoutAgendaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoUncheckedCreateWithoutAgendaInput({
    this.id,
    required this.nome,
    required this.espacoId,
  });

  final String? id;

  final String nome;

  final String espacoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'espacoId': espacoId,
      };
}

class TurnoCreateOrConnectWithoutAgendaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoCreateOrConnectWithoutAgendaInput({
    required this.where,
    required this.create,
  });

  final _i2.TurnoWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.TurnoCreateWithoutAgendaInput,
      _i2.TurnoUncheckedCreateWithoutAgendaInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class TurnoCreateNestedOneWithoutAgendaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoCreateNestedOneWithoutAgendaInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.TurnoCreateWithoutAgendaInput,
      _i2.TurnoUncheckedCreateWithoutAgendaInput>? create;

  final _i2.TurnoCreateOrConnectWithoutAgendaInput? connectOrCreate;

  final _i2.TurnoWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class AgendaCreateWithoutHorariosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaCreateWithoutHorariosInput({
    this.id,
    this.observacao,
    required this.turno,
  });

  final String? id;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? observacao;

  final _i2.TurnoCreateNestedOneWithoutAgendaInput turno;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
        'turno': turno,
      };
}

class AgendaUncheckedCreateWithoutHorariosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaUncheckedCreateWithoutHorariosInput({
    this.id,
    this.observacao,
    required this.turnoId,
  });

  final String? id;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? observacao;

  final String turnoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
        'turnoId': turnoId,
      };
}

class AgendaCreateOrConnectWithoutHorariosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaCreateOrConnectWithoutHorariosInput({
    required this.where,
    required this.create,
  });

  final _i2.AgendaWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.AgendaCreateWithoutHorariosInput,
      _i2.AgendaUncheckedCreateWithoutHorariosInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class AgendaCreateNestedOneWithoutHorariosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaCreateNestedOneWithoutHorariosInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.AgendaCreateWithoutHorariosInput,
      _i2.AgendaUncheckedCreateWithoutHorariosInput>? create;

  final _i2.AgendaCreateOrConnectWithoutHorariosInput? connectOrCreate;

  final _i2.AgendaWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class HorarioCreateWithoutGestorReservaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioCreateWithoutGestorReservaInput({
    this.id,
    required this.inicio,
    required this.fim,
    required this.isReserved,
    required this.agenda,
    this.gestorServico,
    required this.reservaSolicitada,
    required this.servicoSolicitado,
  });

  final String? id;

  final String inicio;

  final String fim;

  final bool isReserved;

  final _i2.AgendaCreateNestedOneWithoutHorariosInput agenda;

  final _i2.UsuarioCreateNestedOneWithoutGestorServicoHorariosInput?
      gestorServico;

  final _i2.ReservaCreateNestedOneWithoutPeriodoInput reservaSolicitada;

  final _i2.ServicoCreateNestedOneWithoutPeriodoInput servicoSolicitado;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'isReserved': isReserved,
        'agenda': agenda,
        'gestorServico': gestorServico,
        'reservaSolicitada': reservaSolicitada,
        'servicoSolicitado': servicoSolicitado,
      };
}

class HorarioCreateNestedManyWithoutGestorReservaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioCreateNestedManyWithoutGestorReservaInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.HorarioCreateWithoutGestorReservaInput,
          _i1.PrismaUnion<
              Iterable<_i2.HorarioCreateWithoutGestorReservaInput>,
              _i1.PrismaUnion<
                  _i2.HorarioUncheckedCreateWithoutGestorReservaInput,
                  Iterable<
                      _i2.HorarioUncheckedCreateWithoutGestorReservaInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.HorarioCreateOrConnectWithoutGestorReservaInput,
          Iterable<_i2.HorarioCreateOrConnectWithoutGestorReservaInput>>?
      connectOrCreate;

  final _i2.HorarioCreateManyGestorReservaInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class UsuarioCreateWithoutDepartamentoSetorInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioCreateWithoutDepartamentoSetorInput({
    this.id,
    required this.nome,
    required this.email,
    this.telefone,
    required this.photoUrl,
    required this.tipoUsuario,
    required this.sigla,
    required this.isDepartamento,
    this.departamento,
    this.gestorReservaHorarios,
    this.gestorServicoHorarios,
    this.reservas,
    this.servicos,
  });

  final String? id;

  final String nome;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? telefone;

  final String photoUrl;

  final String tipoUsuario;

  final String sigla;

  final bool isDepartamento;

  final _i2.UsuarioCreateNestedOneWithoutDepartamentoSetorInput? departamento;

  final _i2.HorarioCreateNestedManyWithoutGestorReservaInput?
      gestorReservaHorarios;

  final _i2.HorarioCreateNestedManyWithoutGestorServicoInput?
      gestorServicoHorarios;

  final _i2.ReservaCreateNestedManyWithoutSolicitanteInput? reservas;

  final _i2.ServicoCreateNestedManyWithoutSolicitanteInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'departamento': departamento,
        'gestorReservaHorarios': gestorReservaHorarios,
        'gestorServicoHorarios': gestorServicoHorarios,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class UsuarioUncheckedCreateWithoutDepartamentoSetorInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUncheckedCreateWithoutDepartamentoSetorInput({
    this.id,
    required this.nome,
    required this.email,
    this.telefone,
    required this.photoUrl,
    required this.tipoUsuario,
    this.departamentoId,
    required this.sigla,
    required this.isDepartamento,
    this.gestorReservaHorarios,
    this.gestorServicoHorarios,
    this.reservas,
    this.servicos,
  });

  final String? id;

  final String nome;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? telefone;

  final String photoUrl;

  final String tipoUsuario;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? departamentoId;

  final String sigla;

  final bool isDepartamento;

  final _i2.HorarioUncheckedCreateNestedManyWithoutGestorReservaInput?
      gestorReservaHorarios;

  final _i2.HorarioUncheckedCreateNestedManyWithoutGestorServicoInput?
      gestorServicoHorarios;

  final _i2.ReservaUncheckedCreateNestedManyWithoutSolicitanteInput? reservas;

  final _i2.ServicoUncheckedCreateNestedManyWithoutSolicitanteInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'departamentoId': departamentoId,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'gestorReservaHorarios': gestorReservaHorarios,
        'gestorServicoHorarios': gestorServicoHorarios,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class UsuarioCreateOrConnectWithoutDepartamentoSetorInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioCreateOrConnectWithoutDepartamentoSetorInput({
    required this.where,
    required this.create,
  });

  final _i2.UsuarioWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.UsuarioCreateWithoutDepartamentoSetorInput,
      _i2.UsuarioUncheckedCreateWithoutDepartamentoSetorInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class UsuarioCreateNestedOneWithoutDepartamentoSetorInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioCreateNestedOneWithoutDepartamentoSetorInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.UsuarioCreateWithoutDepartamentoSetorInput,
      _i2.UsuarioUncheckedCreateWithoutDepartamentoSetorInput>? create;

  final _i2.UsuarioCreateOrConnectWithoutDepartamentoSetorInput?
      connectOrCreate;

  final _i2.UsuarioWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class UsuarioCreateWithoutGestorServicoHorariosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioCreateWithoutGestorServicoHorariosInput({
    this.id,
    required this.nome,
    required this.email,
    this.telefone,
    required this.photoUrl,
    required this.tipoUsuario,
    required this.sigla,
    required this.isDepartamento,
    this.departamento,
    this.departamentoSetor,
    this.gestorReservaHorarios,
    this.reservas,
    this.servicos,
  });

  final String? id;

  final String nome;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? telefone;

  final String photoUrl;

  final String tipoUsuario;

  final String sigla;

  final bool isDepartamento;

  final _i2.UsuarioCreateNestedOneWithoutDepartamentoSetorInput? departamento;

  final _i2.UsuarioCreateNestedOneWithoutDepartamentoInput? departamentoSetor;

  final _i2.HorarioCreateNestedManyWithoutGestorReservaInput?
      gestorReservaHorarios;

  final _i2.ReservaCreateNestedManyWithoutSolicitanteInput? reservas;

  final _i2.ServicoCreateNestedManyWithoutSolicitanteInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'departamento': departamento,
        'departamentoSetor': departamentoSetor,
        'gestorReservaHorarios': gestorReservaHorarios,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class UsuarioUncheckedCreateWithoutGestorServicoHorariosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUncheckedCreateWithoutGestorServicoHorariosInput({
    this.id,
    required this.nome,
    required this.email,
    this.telefone,
    required this.photoUrl,
    required this.tipoUsuario,
    this.departamentoId,
    required this.sigla,
    required this.isDepartamento,
    this.departamentoSetor,
    this.gestorReservaHorarios,
    this.reservas,
    this.servicos,
  });

  final String? id;

  final String nome;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? telefone;

  final String photoUrl;

  final String tipoUsuario;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? departamentoId;

  final String sigla;

  final bool isDepartamento;

  final _i2.UsuarioUncheckedCreateNestedOneWithoutDepartamentoInput?
      departamentoSetor;

  final _i2.HorarioUncheckedCreateNestedManyWithoutGestorReservaInput?
      gestorReservaHorarios;

  final _i2.ReservaUncheckedCreateNestedManyWithoutSolicitanteInput? reservas;

  final _i2.ServicoUncheckedCreateNestedManyWithoutSolicitanteInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'departamentoId': departamentoId,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'departamentoSetor': departamentoSetor,
        'gestorReservaHorarios': gestorReservaHorarios,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class UsuarioCreateOrConnectWithoutGestorServicoHorariosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioCreateOrConnectWithoutGestorServicoHorariosInput({
    required this.where,
    required this.create,
  });

  final _i2.UsuarioWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.UsuarioCreateWithoutGestorServicoHorariosInput,
      _i2.UsuarioUncheckedCreateWithoutGestorServicoHorariosInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class UsuarioCreateNestedOneWithoutGestorServicoHorariosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioCreateNestedOneWithoutGestorServicoHorariosInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.UsuarioCreateWithoutGestorServicoHorariosInput,
      _i2.UsuarioUncheckedCreateWithoutGestorServicoHorariosInput>? create;

  final _i2.UsuarioCreateOrConnectWithoutGestorServicoHorariosInput?
      connectOrCreate;

  final _i2.UsuarioWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class HorarioCreateWithoutAgendaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioCreateWithoutAgendaInput({
    this.id,
    required this.inicio,
    required this.fim,
    required this.isReserved,
    this.gestorServico,
    this.gestorReserva,
    required this.reservaSolicitada,
    required this.servicoSolicitado,
  });

  final String? id;

  final String inicio;

  final String fim;

  final bool isReserved;

  final _i2.UsuarioCreateNestedOneWithoutGestorServicoHorariosInput?
      gestorServico;

  final _i2.UsuarioCreateNestedOneWithoutGestorReservaHorariosInput?
      gestorReserva;

  final _i2.ReservaCreateNestedOneWithoutPeriodoInput reservaSolicitada;

  final _i2.ServicoCreateNestedOneWithoutPeriodoInput servicoSolicitado;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'isReserved': isReserved,
        'gestorServico': gestorServico,
        'gestorReserva': gestorReserva,
        'reservaSolicitada': reservaSolicitada,
        'servicoSolicitado': servicoSolicitado,
      };
}

class HorarioCreateNestedManyWithoutAgendaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioCreateNestedManyWithoutAgendaInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.HorarioCreateWithoutAgendaInput,
      _i1.PrismaUnion<
          Iterable<_i2.HorarioCreateWithoutAgendaInput>,
          _i1.PrismaUnion<_i2.HorarioUncheckedCreateWithoutAgendaInput,
              Iterable<_i2.HorarioUncheckedCreateWithoutAgendaInput>>>>? create;

  final _i1.PrismaUnion<_i2.HorarioCreateOrConnectWithoutAgendaInput,
      Iterable<_i2.HorarioCreateOrConnectWithoutAgendaInput>>? connectOrCreate;

  final _i2.HorarioCreateManyAgendaInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class AgendaCreateWithoutTurnoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaCreateWithoutTurnoInput({
    this.id,
    this.observacao,
    this.horarios,
  });

  final String? id;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? observacao;

  final _i2.HorarioCreateNestedManyWithoutAgendaInput? horarios;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
        'horarios': horarios,
      };
}

class AgendaCreateNestedManyWithoutTurnoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaCreateNestedManyWithoutTurnoInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.AgendaCreateWithoutTurnoInput,
      _i1.PrismaUnion<
          Iterable<_i2.AgendaCreateWithoutTurnoInput>,
          _i1.PrismaUnion<_i2.AgendaUncheckedCreateWithoutTurnoInput,
              Iterable<_i2.AgendaUncheckedCreateWithoutTurnoInput>>>>? create;

  final _i1.PrismaUnion<_i2.AgendaCreateOrConnectWithoutTurnoInput,
      Iterable<_i2.AgendaCreateOrConnectWithoutTurnoInput>>? connectOrCreate;

  final _i2.AgendaCreateManyTurnoInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.AgendaWhereUniqueInput,
      Iterable<_i2.AgendaWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class TurnoCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoCreateInput({
    this.id,
    required this.nome,
    this.agenda,
    required this.espaco,
  });

  final String? id;

  final String nome;

  final _i2.AgendaCreateNestedManyWithoutTurnoInput? agenda;

  final _i2.EspacoCreateNestedOneWithoutTurnosInput espaco;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'agenda': agenda,
        'espaco': espaco,
      };
}

class TurnoUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoUncheckedCreateInput({
    this.id,
    required this.nome,
    required this.espacoId,
    this.agenda,
  });

  final String? id;

  final String nome;

  final String espacoId;

  final _i2.AgendaUncheckedCreateNestedManyWithoutTurnoInput? agenda;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'espacoId': espacoId,
        'agenda': agenda,
      };
}

class AffectedRowsOutput {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map json) =>
      AffectedRowsOutput(count: json['count']);

  final int? count;

  Map<String, dynamic> toJson() => {'count': count};
}

class TurnoCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoCreateManyInput({
    this.id,
    required this.nome,
    required this.espacoId,
  });

  final String? id;

  final String nome;

  final String espacoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'espacoId': espacoId,
      };
}

class StringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFieldUpdateOperationsInput({this.set});

  final String? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class NullableStringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NullableStringFieldUpdateOperationsInput({this.set});

  final _i1.PrismaUnion<String, _i1.PrismaNull>? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class BoolFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BoolFieldUpdateOperationsInput({this.set});

  final bool? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class IntFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() => {
        'set': set,
        'increment': increment,
        'decrement': decrement,
        'multiply': multiply,
        'divide': divide,
      };
}

class LocalizacaoUpdateWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoUpdateWithoutEspacoInput({
    this.id,
    this.campus,
    this.pavilhao,
    this.andar,
    this.numero,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? campus;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? pavilhao;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? andar;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? numero;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'campus': campus,
        'pavilhao': pavilhao,
        'andar': andar,
        'numero': numero,
      };
}

class LocalizacaoUncheckedUpdateWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoUncheckedUpdateWithoutEspacoInput({
    this.id,
    this.campus,
    this.pavilhao,
    this.andar,
    this.numero,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? campus;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? pavilhao;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? andar;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? numero;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'campus': campus,
        'pavilhao': pavilhao,
        'andar': andar,
        'numero': numero,
      };
}

class LocalizacaoUpsertWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoUpsertWithoutEspacoInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.LocalizacaoUpdateWithoutEspacoInput,
      _i2.LocalizacaoUncheckedUpdateWithoutEspacoInput> update;

  final _i1.PrismaUnion<_i2.LocalizacaoCreateWithoutEspacoInput,
      _i2.LocalizacaoUncheckedCreateWithoutEspacoInput> create;

  final _i2.LocalizacaoWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class LocalizacaoUpdateToOneWithWhereWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoUpdateToOneWithWhereWithoutEspacoInput({
    this.where,
    required this.data,
  });

  final _i2.LocalizacaoWhereInput? where;

  final _i1.PrismaUnion<_i2.LocalizacaoUpdateWithoutEspacoInput,
      _i2.LocalizacaoUncheckedUpdateWithoutEspacoInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class LocalizacaoUpdateOneRequiredWithoutEspacoNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoUpdateOneRequiredWithoutEspacoNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.LocalizacaoCreateWithoutEspacoInput,
      _i2.LocalizacaoUncheckedCreateWithoutEspacoInput>? create;

  final _i2.LocalizacaoCreateOrConnectWithoutEspacoInput? connectOrCreate;

  final _i2.LocalizacaoUpsertWithoutEspacoInput? upsert;

  final _i2.LocalizacaoWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.LocalizacaoUpdateToOneWithWhereWithoutEspacoInput,
      _i1.PrismaUnion<_i2.LocalizacaoUpdateWithoutEspacoInput,
          _i2.LocalizacaoUncheckedUpdateWithoutEspacoInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class EquipamentoUpdateWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoUpdateWithoutEspacoInput({
    this.id,
    this.nome,
    this.tipo,
    this.numTombo,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tipo;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? numTombo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
      };
}

class EquipamentoUncheckedUpdateWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoUncheckedUpdateWithoutEspacoInput({
    this.id,
    this.nome,
    this.tipo,
    this.numTombo,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tipo;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? numTombo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
      };
}

class EquipamentoUpsertWithWhereUniqueWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoUpsertWithWhereUniqueWithoutEspacoInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.EquipamentoWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.EquipamentoUpdateWithoutEspacoInput,
      _i2.EquipamentoUncheckedUpdateWithoutEspacoInput> update;

  final _i1.PrismaUnion<_i2.EquipamentoCreateWithoutEspacoInput,
      _i2.EquipamentoUncheckedCreateWithoutEspacoInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class EquipamentoUpdateWithWhereUniqueWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoUpdateWithWhereUniqueWithoutEspacoInput({
    required this.where,
    required this.data,
  });

  final _i2.EquipamentoWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.EquipamentoUpdateWithoutEspacoInput,
      _i2.EquipamentoUncheckedUpdateWithoutEspacoInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class EquipamentoScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.nome,
    this.tipo,
    this.numTombo,
    this.espacoId,
  });

  final _i1.PrismaUnion<_i2.EquipamentoScalarWhereInput,
      Iterable<_i2.EquipamentoScalarWhereInput>>? AND;

  final Iterable<_i2.EquipamentoScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.EquipamentoScalarWhereInput,
      Iterable<_i2.EquipamentoScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? nome;

  final _i1.PrismaUnion<_i2.StringFilter, String>? tipo;

  final _i1.PrismaUnion<_i2.StringFilter, String>? numTombo;

  final _i1.PrismaUnion<_i2.StringFilter, String>? espacoId;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
        'espacoId': espacoId,
      };
}

class EquipamentoUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoUpdateManyMutationInput({
    this.id,
    this.nome,
    this.tipo,
    this.numTombo,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tipo;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? numTombo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
      };
}

class EquipamentoUncheckedUpdateManyWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoUncheckedUpdateManyWithoutEspacoInput({
    this.id,
    this.nome,
    this.tipo,
    this.numTombo,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tipo;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? numTombo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
      };
}

class EquipamentoUpdateManyWithWhereWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoUpdateManyWithWhereWithoutEspacoInput({
    required this.where,
    required this.data,
  });

  final _i2.EquipamentoScalarWhereInput where;

  final _i1.PrismaUnion<_i2.EquipamentoUpdateManyMutationInput,
      _i2.EquipamentoUncheckedUpdateManyWithoutEspacoInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class EquipamentoUpdateManyWithoutEspacoNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoUpdateManyWithoutEspacoNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.EquipamentoCreateWithoutEspacoInput,
          _i1.PrismaUnion<
              Iterable<_i2.EquipamentoCreateWithoutEspacoInput>,
              _i1.PrismaUnion<_i2.EquipamentoUncheckedCreateWithoutEspacoInput,
                  Iterable<_i2.EquipamentoUncheckedCreateWithoutEspacoInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.EquipamentoCreateOrConnectWithoutEspacoInput,
          Iterable<_i2.EquipamentoCreateOrConnectWithoutEspacoInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.EquipamentoUpsertWithWhereUniqueWithoutEspacoInput,
      Iterable<_i2.EquipamentoUpsertWithWhereUniqueWithoutEspacoInput>>? upsert;

  final _i2.EquipamentoCreateManyEspacoInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.EquipamentoWhereUniqueInput,
      Iterable<_i2.EquipamentoWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.EquipamentoWhereUniqueInput,
      Iterable<_i2.EquipamentoWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.EquipamentoWhereUniqueInput,
      Iterable<_i2.EquipamentoWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.EquipamentoWhereUniqueInput,
      Iterable<_i2.EquipamentoWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.EquipamentoUpdateWithWhereUniqueWithoutEspacoInput,
      Iterable<_i2.EquipamentoUpdateWithWhereUniqueWithoutEspacoInput>>? update;

  final _i1.PrismaUnion<_i2.EquipamentoUpdateManyWithWhereWithoutEspacoInput,
          Iterable<_i2.EquipamentoUpdateManyWithWhereWithoutEspacoInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.EquipamentoScalarWhereInput,
      Iterable<_i2.EquipamentoScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class TurnoUpdateWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoUpdateWithoutEspacoInput({
    this.id,
    this.nome,
    this.agenda,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  final _i2.AgendaUpdateManyWithoutTurnoNestedInput? agenda;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'agenda': agenda,
      };
}

class HorarioUncheckedUpdateWithoutAgendaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUncheckedUpdateWithoutAgendaInput({
    this.id,
    this.inicio,
    this.fim,
    this.gestorServicoId,
    this.gestorReservaId,
    this.isReserved,
    this.reservaSolicitadaId,
    this.servicoSolicitadoId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? inicio;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? fim;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      gestorServicoId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      gestorReservaId;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isReserved;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      reservaSolicitadaId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      servicoSolicitadoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
      };
}

class HorarioUpdateWithWhereUniqueWithoutAgendaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUpdateWithWhereUniqueWithoutAgendaInput({
    required this.where,
    required this.data,
  });

  final _i2.HorarioWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.HorarioUpdateWithoutAgendaInput,
      _i2.HorarioUncheckedUpdateWithoutAgendaInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class HorarioScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.inicio,
    this.fim,
    this.agendaId,
    this.gestorServicoId,
    this.gestorReservaId,
    this.isReserved,
    this.reservaSolicitadaId,
    this.servicoSolicitadoId,
  });

  final _i1.PrismaUnion<_i2.HorarioScalarWhereInput,
      Iterable<_i2.HorarioScalarWhereInput>>? AND;

  final Iterable<_i2.HorarioScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.HorarioScalarWhereInput,
      Iterable<_i2.HorarioScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? inicio;

  final _i1.PrismaUnion<_i2.StringFilter, String>? fim;

  final _i1.PrismaUnion<_i2.StringFilter, String>? agendaId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? gestorServicoId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? gestorReservaId;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? isReserved;

  final _i1.PrismaUnion<_i2.StringFilter, String>? reservaSolicitadaId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? servicoSolicitadoId;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
      };
}

class HorarioUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUpdateManyMutationInput({
    this.id,
    this.inicio,
    this.fim,
    this.isReserved,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? inicio;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? fim;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isReserved;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'isReserved': isReserved,
      };
}

class HorarioUncheckedUpdateManyWithoutAgendaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUncheckedUpdateManyWithoutAgendaInput({
    this.id,
    this.inicio,
    this.fim,
    this.gestorServicoId,
    this.gestorReservaId,
    this.isReserved,
    this.reservaSolicitadaId,
    this.servicoSolicitadoId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? inicio;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? fim;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      gestorServicoId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      gestorReservaId;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isReserved;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      reservaSolicitadaId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      servicoSolicitadoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
      };
}

class HorarioUpdateManyWithWhereWithoutAgendaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUpdateManyWithWhereWithoutAgendaInput({
    required this.where,
    required this.data,
  });

  final _i2.HorarioScalarWhereInput where;

  final _i1.PrismaUnion<_i2.HorarioUpdateManyMutationInput,
      _i2.HorarioUncheckedUpdateManyWithoutAgendaInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class HorarioUncheckedUpdateManyWithoutAgendaNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUncheckedUpdateManyWithoutAgendaNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.HorarioCreateWithoutAgendaInput,
      _i1.PrismaUnion<
          Iterable<_i2.HorarioCreateWithoutAgendaInput>,
          _i1.PrismaUnion<_i2.HorarioUncheckedCreateWithoutAgendaInput,
              Iterable<_i2.HorarioUncheckedCreateWithoutAgendaInput>>>>? create;

  final _i1.PrismaUnion<_i2.HorarioCreateOrConnectWithoutAgendaInput,
      Iterable<_i2.HorarioCreateOrConnectWithoutAgendaInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.HorarioUpsertWithWhereUniqueWithoutAgendaInput,
      Iterable<_i2.HorarioUpsertWithWhereUniqueWithoutAgendaInput>>? upsert;

  final _i2.HorarioCreateManyAgendaInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.HorarioUpdateWithWhereUniqueWithoutAgendaInput,
      Iterable<_i2.HorarioUpdateWithWhereUniqueWithoutAgendaInput>>? update;

  final _i1.PrismaUnion<_i2.HorarioUpdateManyWithWhereWithoutAgendaInput,
      Iterable<_i2.HorarioUpdateManyWithWhereWithoutAgendaInput>>? updateMany;

  final _i1.PrismaUnion<_i2.HorarioScalarWhereInput,
      Iterable<_i2.HorarioScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class AgendaUncheckedUpdateWithoutTurnoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaUncheckedUpdateWithoutTurnoInput({
    this.id,
    this.observacao,
    this.horarios,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? observacao;

  final _i2.HorarioUncheckedUpdateManyWithoutAgendaNestedInput? horarios;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
        'horarios': horarios,
      };
}

class AgendaUpdateWithWhereUniqueWithoutTurnoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaUpdateWithWhereUniqueWithoutTurnoInput({
    required this.where,
    required this.data,
  });

  final _i2.AgendaWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.AgendaUpdateWithoutTurnoInput,
      _i2.AgendaUncheckedUpdateWithoutTurnoInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class AgendaScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.observacao,
    this.turnoId,
  });

  final _i1.PrismaUnion<_i2.AgendaScalarWhereInput,
      Iterable<_i2.AgendaScalarWhereInput>>? AND;

  final Iterable<_i2.AgendaScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.AgendaScalarWhereInput,
      Iterable<_i2.AgendaScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? observacao;

  final _i1.PrismaUnion<_i2.StringFilter, String>? turnoId;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'observacao': observacao,
        'turnoId': turnoId,
      };
}

class AgendaUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaUpdateManyMutationInput({
    this.id,
    this.observacao,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? observacao;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
      };
}

class AgendaUncheckedUpdateManyWithoutTurnoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaUncheckedUpdateManyWithoutTurnoInput({
    this.id,
    this.observacao,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? observacao;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
      };
}

class AgendaUpdateManyWithWhereWithoutTurnoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaUpdateManyWithWhereWithoutTurnoInput({
    required this.where,
    required this.data,
  });

  final _i2.AgendaScalarWhereInput where;

  final _i1.PrismaUnion<_i2.AgendaUpdateManyMutationInput,
      _i2.AgendaUncheckedUpdateManyWithoutTurnoInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class AgendaUncheckedUpdateManyWithoutTurnoNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaUncheckedUpdateManyWithoutTurnoNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.AgendaCreateWithoutTurnoInput,
      _i1.PrismaUnion<
          Iterable<_i2.AgendaCreateWithoutTurnoInput>,
          _i1.PrismaUnion<_i2.AgendaUncheckedCreateWithoutTurnoInput,
              Iterable<_i2.AgendaUncheckedCreateWithoutTurnoInput>>>>? create;

  final _i1.PrismaUnion<_i2.AgendaCreateOrConnectWithoutTurnoInput,
      Iterable<_i2.AgendaCreateOrConnectWithoutTurnoInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.AgendaUpsertWithWhereUniqueWithoutTurnoInput,
      Iterable<_i2.AgendaUpsertWithWhereUniqueWithoutTurnoInput>>? upsert;

  final _i2.AgendaCreateManyTurnoInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.AgendaWhereUniqueInput,
      Iterable<_i2.AgendaWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.AgendaWhereUniqueInput,
      Iterable<_i2.AgendaWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.AgendaWhereUniqueInput,
      Iterable<_i2.AgendaWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.AgendaWhereUniqueInput,
      Iterable<_i2.AgendaWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.AgendaUpdateWithWhereUniqueWithoutTurnoInput,
      Iterable<_i2.AgendaUpdateWithWhereUniqueWithoutTurnoInput>>? update;

  final _i1.PrismaUnion<_i2.AgendaUpdateManyWithWhereWithoutTurnoInput,
      Iterable<_i2.AgendaUpdateManyWithWhereWithoutTurnoInput>>? updateMany;

  final _i1.PrismaUnion<_i2.AgendaScalarWhereInput,
      Iterable<_i2.AgendaScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class TurnoUncheckedUpdateWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoUncheckedUpdateWithoutEspacoInput({
    this.id,
    this.nome,
    this.agenda,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  final _i2.AgendaUncheckedUpdateManyWithoutTurnoNestedInput? agenda;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'agenda': agenda,
      };
}

class TurnoUpsertWithWhereUniqueWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoUpsertWithWhereUniqueWithoutEspacoInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.TurnoWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.TurnoUpdateWithoutEspacoInput,
      _i2.TurnoUncheckedUpdateWithoutEspacoInput> update;

  final _i1.PrismaUnion<_i2.TurnoCreateWithoutEspacoInput,
      _i2.TurnoUncheckedCreateWithoutEspacoInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class TurnoUpdateWithWhereUniqueWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoUpdateWithWhereUniqueWithoutEspacoInput({
    required this.where,
    required this.data,
  });

  final _i2.TurnoWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.TurnoUpdateWithoutEspacoInput,
      _i2.TurnoUncheckedUpdateWithoutEspacoInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class TurnoScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.nome,
    this.espacoId,
  });

  final _i1.PrismaUnion<_i2.TurnoScalarWhereInput,
      Iterable<_i2.TurnoScalarWhereInput>>? AND;

  final Iterable<_i2.TurnoScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.TurnoScalarWhereInput,
      Iterable<_i2.TurnoScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? nome;

  final _i1.PrismaUnion<_i2.StringFilter, String>? espacoId;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'nome': nome,
        'espacoId': espacoId,
      };
}

class TurnoUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoUpdateManyMutationInput({
    this.id,
    this.nome,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
      };
}

class TurnoUncheckedUpdateManyWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoUncheckedUpdateManyWithoutEspacoInput({
    this.id,
    this.nome,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
      };
}

class TurnoUpdateManyWithWhereWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoUpdateManyWithWhereWithoutEspacoInput({
    required this.where,
    required this.data,
  });

  final _i2.TurnoScalarWhereInput where;

  final _i1.PrismaUnion<_i2.TurnoUpdateManyMutationInput,
      _i2.TurnoUncheckedUpdateManyWithoutEspacoInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class TurnoUpdateManyWithoutEspacoNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoUpdateManyWithoutEspacoNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.TurnoCreateWithoutEspacoInput,
      _i1.PrismaUnion<
          Iterable<_i2.TurnoCreateWithoutEspacoInput>,
          _i1.PrismaUnion<_i2.TurnoUncheckedCreateWithoutEspacoInput,
              Iterable<_i2.TurnoUncheckedCreateWithoutEspacoInput>>>>? create;

  final _i1.PrismaUnion<_i2.TurnoCreateOrConnectWithoutEspacoInput,
      Iterable<_i2.TurnoCreateOrConnectWithoutEspacoInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.TurnoUpsertWithWhereUniqueWithoutEspacoInput,
      Iterable<_i2.TurnoUpsertWithWhereUniqueWithoutEspacoInput>>? upsert;

  final _i2.TurnoCreateManyEspacoInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.TurnoWhereUniqueInput,
      Iterable<_i2.TurnoWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.TurnoWhereUniqueInput,
      Iterable<_i2.TurnoWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.TurnoWhereUniqueInput,
      Iterable<_i2.TurnoWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.TurnoWhereUniqueInput,
      Iterable<_i2.TurnoWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.TurnoUpdateWithWhereUniqueWithoutEspacoInput,
      Iterable<_i2.TurnoUpdateWithWhereUniqueWithoutEspacoInput>>? update;

  final _i1.PrismaUnion<_i2.TurnoUpdateManyWithWhereWithoutEspacoInput,
      Iterable<_i2.TurnoUpdateManyWithWhereWithoutEspacoInput>>? updateMany;

  final _i1.PrismaUnion<_i2.TurnoScalarWhereInput,
      Iterable<_i2.TurnoScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class UsuarioUpdateWithoutServicosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUpdateWithoutServicosInput({
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.sigla,
    this.isDepartamento,
    this.departamento,
    this.departamentoSetor,
    this.gestorReservaHorarios,
    this.gestorServicoHorarios,
    this.reservas,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? telefone;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? photoUrl;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      tipoUsuario;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? sigla;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>?
      isDepartamento;

  final _i2.UsuarioUpdateOneWithoutDepartamentoSetorNestedInput? departamento;

  final _i2.UsuarioUpdateOneWithoutDepartamentoNestedInput? departamentoSetor;

  final _i2.HorarioUpdateManyWithoutGestorReservaNestedInput?
      gestorReservaHorarios;

  final _i2.HorarioUpdateManyWithoutGestorServicoNestedInput?
      gestorServicoHorarios;

  final _i2.ReservaUpdateManyWithoutSolicitanteNestedInput? reservas;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'departamento': departamento,
        'departamentoSetor': departamentoSetor,
        'gestorReservaHorarios': gestorReservaHorarios,
        'gestorServicoHorarios': gestorServicoHorarios,
        'reservas': reservas,
      };
}

class HorarioUncheckedUpdateWithoutGestorReservaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUncheckedUpdateWithoutGestorReservaInput({
    this.id,
    this.inicio,
    this.fim,
    this.agendaId,
    this.gestorServicoId,
    this.isReserved,
    this.reservaSolicitadaId,
    this.servicoSolicitadoId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? inicio;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? fim;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? agendaId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      gestorServicoId;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isReserved;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      reservaSolicitadaId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      servicoSolicitadoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
      };
}

class HorarioUpdateWithWhereUniqueWithoutGestorReservaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUpdateWithWhereUniqueWithoutGestorReservaInput({
    required this.where,
    required this.data,
  });

  final _i2.HorarioWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.HorarioUpdateWithoutGestorReservaInput,
      _i2.HorarioUncheckedUpdateWithoutGestorReservaInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class HorarioUncheckedUpdateManyWithoutGestorReservaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUncheckedUpdateManyWithoutGestorReservaInput({
    this.id,
    this.inicio,
    this.fim,
    this.agendaId,
    this.gestorServicoId,
    this.isReserved,
    this.reservaSolicitadaId,
    this.servicoSolicitadoId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? inicio;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? fim;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? agendaId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      gestorServicoId;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isReserved;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      reservaSolicitadaId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      servicoSolicitadoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
      };
}

class HorarioUpdateManyWithWhereWithoutGestorReservaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUpdateManyWithWhereWithoutGestorReservaInput({
    required this.where,
    required this.data,
  });

  final _i2.HorarioScalarWhereInput where;

  final _i1.PrismaUnion<_i2.HorarioUpdateManyMutationInput,
      _i2.HorarioUncheckedUpdateManyWithoutGestorReservaInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class HorarioUncheckedUpdateManyWithoutGestorReservaNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUncheckedUpdateManyWithoutGestorReservaNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.HorarioCreateWithoutGestorReservaInput,
          _i1.PrismaUnion<
              Iterable<_i2.HorarioCreateWithoutGestorReservaInput>,
              _i1.PrismaUnion<
                  _i2.HorarioUncheckedCreateWithoutGestorReservaInput,
                  Iterable<
                      _i2.HorarioUncheckedCreateWithoutGestorReservaInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.HorarioCreateOrConnectWithoutGestorReservaInput,
          Iterable<_i2.HorarioCreateOrConnectWithoutGestorReservaInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<
          _i2.HorarioUpsertWithWhereUniqueWithoutGestorReservaInput,
          Iterable<_i2.HorarioUpsertWithWhereUniqueWithoutGestorReservaInput>>?
      upsert;

  final _i2.HorarioCreateManyGestorReservaInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<
          _i2.HorarioUpdateWithWhereUniqueWithoutGestorReservaInput,
          Iterable<_i2.HorarioUpdateWithWhereUniqueWithoutGestorReservaInput>>?
      update;

  final _i1.PrismaUnion<_i2.HorarioUpdateManyWithWhereWithoutGestorReservaInput,
          Iterable<_i2.HorarioUpdateManyWithWhereWithoutGestorReservaInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.HorarioScalarWhereInput,
      Iterable<_i2.HorarioScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class HorarioUncheckedUpdateWithoutGestorServicoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUncheckedUpdateWithoutGestorServicoInput({
    this.id,
    this.inicio,
    this.fim,
    this.agendaId,
    this.gestorReservaId,
    this.isReserved,
    this.reservaSolicitadaId,
    this.servicoSolicitadoId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? inicio;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? fim;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? agendaId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      gestorReservaId;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isReserved;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      reservaSolicitadaId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      servicoSolicitadoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
      };
}

class HorarioUpdateWithWhereUniqueWithoutGestorServicoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUpdateWithWhereUniqueWithoutGestorServicoInput({
    required this.where,
    required this.data,
  });

  final _i2.HorarioWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.HorarioUpdateWithoutGestorServicoInput,
      _i2.HorarioUncheckedUpdateWithoutGestorServicoInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class HorarioUncheckedUpdateManyWithoutGestorServicoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUncheckedUpdateManyWithoutGestorServicoInput({
    this.id,
    this.inicio,
    this.fim,
    this.agendaId,
    this.gestorReservaId,
    this.isReserved,
    this.reservaSolicitadaId,
    this.servicoSolicitadoId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? inicio;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? fim;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? agendaId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      gestorReservaId;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isReserved;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      reservaSolicitadaId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      servicoSolicitadoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
      };
}

class HorarioUpdateManyWithWhereWithoutGestorServicoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUpdateManyWithWhereWithoutGestorServicoInput({
    required this.where,
    required this.data,
  });

  final _i2.HorarioScalarWhereInput where;

  final _i1.PrismaUnion<_i2.HorarioUpdateManyMutationInput,
      _i2.HorarioUncheckedUpdateManyWithoutGestorServicoInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class HorarioUncheckedUpdateManyWithoutGestorServicoNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUncheckedUpdateManyWithoutGestorServicoNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.HorarioCreateWithoutGestorServicoInput,
          _i1.PrismaUnion<
              Iterable<_i2.HorarioCreateWithoutGestorServicoInput>,
              _i1.PrismaUnion<
                  _i2.HorarioUncheckedCreateWithoutGestorServicoInput,
                  Iterable<
                      _i2.HorarioUncheckedCreateWithoutGestorServicoInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.HorarioCreateOrConnectWithoutGestorServicoInput,
          Iterable<_i2.HorarioCreateOrConnectWithoutGestorServicoInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<
          _i2.HorarioUpsertWithWhereUniqueWithoutGestorServicoInput,
          Iterable<_i2.HorarioUpsertWithWhereUniqueWithoutGestorServicoInput>>?
      upsert;

  final _i2.HorarioCreateManyGestorServicoInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<
          _i2.HorarioUpdateWithWhereUniqueWithoutGestorServicoInput,
          Iterable<_i2.HorarioUpdateWithWhereUniqueWithoutGestorServicoInput>>?
      update;

  final _i1.PrismaUnion<_i2.HorarioUpdateManyWithWhereWithoutGestorServicoInput,
          Iterable<_i2.HorarioUpdateManyWithWhereWithoutGestorServicoInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.HorarioScalarWhereInput,
      Iterable<_i2.HorarioScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class EspacoUpdateWithoutServicosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUpdateWithoutServicosInput({
    this.id,
    this.capacidadePessoas,
    this.acessibilidade,
    this.localizacao,
    this.equipamentoDisponivel,
    this.turnos,
    this.reservas,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      capacidadePessoas;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>?
      acessibilidade;

  final _i2.LocalizacaoUpdateOneRequiredWithoutEspacoNestedInput? localizacao;

  final _i2.EquipamentoUpdateManyWithoutEspacoNestedInput?
      equipamentoDisponivel;

  final _i2.TurnoUpdateManyWithoutEspacoNestedInput? turnos;

  final _i2.ReservaUpdateManyWithoutEspacoNestedInput? reservas;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        'localizacao': localizacao,
        'equipamentoDisponivel': equipamentoDisponivel,
        'turnos': turnos,
        'reservas': reservas,
      };
}

class EquipamentoUncheckedUpdateManyWithoutEspacoNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoUncheckedUpdateManyWithoutEspacoNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.EquipamentoCreateWithoutEspacoInput,
          _i1.PrismaUnion<
              Iterable<_i2.EquipamentoCreateWithoutEspacoInput>,
              _i1.PrismaUnion<_i2.EquipamentoUncheckedCreateWithoutEspacoInput,
                  Iterable<_i2.EquipamentoUncheckedCreateWithoutEspacoInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.EquipamentoCreateOrConnectWithoutEspacoInput,
          Iterable<_i2.EquipamentoCreateOrConnectWithoutEspacoInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.EquipamentoUpsertWithWhereUniqueWithoutEspacoInput,
      Iterable<_i2.EquipamentoUpsertWithWhereUniqueWithoutEspacoInput>>? upsert;

  final _i2.EquipamentoCreateManyEspacoInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.EquipamentoWhereUniqueInput,
      Iterable<_i2.EquipamentoWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.EquipamentoWhereUniqueInput,
      Iterable<_i2.EquipamentoWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.EquipamentoWhereUniqueInput,
      Iterable<_i2.EquipamentoWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.EquipamentoWhereUniqueInput,
      Iterable<_i2.EquipamentoWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.EquipamentoUpdateWithWhereUniqueWithoutEspacoInput,
      Iterable<_i2.EquipamentoUpdateWithWhereUniqueWithoutEspacoInput>>? update;

  final _i1.PrismaUnion<_i2.EquipamentoUpdateManyWithWhereWithoutEspacoInput,
          Iterable<_i2.EquipamentoUpdateManyWithWhereWithoutEspacoInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.EquipamentoScalarWhereInput,
      Iterable<_i2.EquipamentoScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class TurnoUncheckedUpdateManyWithoutEspacoNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoUncheckedUpdateManyWithoutEspacoNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.TurnoCreateWithoutEspacoInput,
      _i1.PrismaUnion<
          Iterable<_i2.TurnoCreateWithoutEspacoInput>,
          _i1.PrismaUnion<_i2.TurnoUncheckedCreateWithoutEspacoInput,
              Iterable<_i2.TurnoUncheckedCreateWithoutEspacoInput>>>>? create;

  final _i1.PrismaUnion<_i2.TurnoCreateOrConnectWithoutEspacoInput,
      Iterable<_i2.TurnoCreateOrConnectWithoutEspacoInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.TurnoUpsertWithWhereUniqueWithoutEspacoInput,
      Iterable<_i2.TurnoUpsertWithWhereUniqueWithoutEspacoInput>>? upsert;

  final _i2.TurnoCreateManyEspacoInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.TurnoWhereUniqueInput,
      Iterable<_i2.TurnoWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.TurnoWhereUniqueInput,
      Iterable<_i2.TurnoWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.TurnoWhereUniqueInput,
      Iterable<_i2.TurnoWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.TurnoWhereUniqueInput,
      Iterable<_i2.TurnoWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.TurnoUpdateWithWhereUniqueWithoutEspacoInput,
      Iterable<_i2.TurnoUpdateWithWhereUniqueWithoutEspacoInput>>? update;

  final _i1.PrismaUnion<_i2.TurnoUpdateManyWithWhereWithoutEspacoInput,
      Iterable<_i2.TurnoUpdateManyWithWhereWithoutEspacoInput>>? updateMany;

  final _i1.PrismaUnion<_i2.TurnoScalarWhereInput,
      Iterable<_i2.TurnoScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ReservaUncheckedUpdateWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaUncheckedUpdateWithoutEspacoInput({
    this.id,
    this.solicitanteId,
    this.descricao,
    this.status,
    this.periodo,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      solicitanteId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      descricao;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? status;

  final _i2.HorarioUncheckedUpdateManyWithoutReservaSolicitadaNestedInput?
      periodo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
        'periodo': periodo,
      };
}

class ReservaUpdateWithWhereUniqueWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaUpdateWithWhereUniqueWithoutEspacoInput({
    required this.where,
    required this.data,
  });

  final _i2.ReservaWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ReservaUpdateWithoutEspacoInput,
      _i2.ReservaUncheckedUpdateWithoutEspacoInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ReservaScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
  });

  final _i1.PrismaUnion<_i2.ReservaScalarWhereInput,
      Iterable<_i2.ReservaScalarWhereInput>>? AND;

  final Iterable<_i2.ReservaScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.ReservaScalarWhereInput,
      Iterable<_i2.ReservaScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? espacoId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? solicitanteId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? descricao;

  final _i1.PrismaUnion<_i2.StringFilter, String>? status;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
      };
}

class ReservaUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaUpdateManyMutationInput({
    this.id,
    this.descricao,
    this.status,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      descricao;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? status;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'descricao': descricao,
        'status': status,
      };
}

class ReservaUncheckedUpdateManyWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaUncheckedUpdateManyWithoutEspacoInput({
    this.id,
    this.solicitanteId,
    this.descricao,
    this.status,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      solicitanteId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      descricao;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? status;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
      };
}

class ReservaUpdateManyWithWhereWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaUpdateManyWithWhereWithoutEspacoInput({
    required this.where,
    required this.data,
  });

  final _i2.ReservaScalarWhereInput where;

  final _i1.PrismaUnion<_i2.ReservaUpdateManyMutationInput,
      _i2.ReservaUncheckedUpdateManyWithoutEspacoInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ReservaUncheckedUpdateManyWithoutEspacoNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaUncheckedUpdateManyWithoutEspacoNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.ReservaCreateWithoutEspacoInput,
      _i1.PrismaUnion<
          Iterable<_i2.ReservaCreateWithoutEspacoInput>,
          _i1.PrismaUnion<_i2.ReservaUncheckedCreateWithoutEspacoInput,
              Iterable<_i2.ReservaUncheckedCreateWithoutEspacoInput>>>>? create;

  final _i1.PrismaUnion<_i2.ReservaCreateOrConnectWithoutEspacoInput,
      Iterable<_i2.ReservaCreateOrConnectWithoutEspacoInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.ReservaUpsertWithWhereUniqueWithoutEspacoInput,
      Iterable<_i2.ReservaUpsertWithWhereUniqueWithoutEspacoInput>>? upsert;

  final _i2.ReservaCreateManyEspacoInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ReservaWhereUniqueInput,
      Iterable<_i2.ReservaWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.ReservaWhereUniqueInput,
      Iterable<_i2.ReservaWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.ReservaWhereUniqueInput,
      Iterable<_i2.ReservaWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.ReservaWhereUniqueInput,
      Iterable<_i2.ReservaWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.ReservaUpdateWithWhereUniqueWithoutEspacoInput,
      Iterable<_i2.ReservaUpdateWithWhereUniqueWithoutEspacoInput>>? update;

  final _i1.PrismaUnion<_i2.ReservaUpdateManyWithWhereWithoutEspacoInput,
      Iterable<_i2.ReservaUpdateManyWithWhereWithoutEspacoInput>>? updateMany;

  final _i1.PrismaUnion<_i2.ReservaScalarWhereInput,
      Iterable<_i2.ReservaScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class EspacoUncheckedUpdateWithoutServicosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUncheckedUpdateWithoutServicosInput({
    this.id,
    this.localizacaoId,
    this.capacidadePessoas,
    this.acessibilidade,
    this.equipamentoDisponivel,
    this.turnos,
    this.reservas,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      localizacaoId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      capacidadePessoas;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>?
      acessibilidade;

  final _i2.EquipamentoUncheckedUpdateManyWithoutEspacoNestedInput?
      equipamentoDisponivel;

  final _i2.TurnoUncheckedUpdateManyWithoutEspacoNestedInput? turnos;

  final _i2.ReservaUncheckedUpdateManyWithoutEspacoNestedInput? reservas;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'localizacaoId': localizacaoId,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        'equipamentoDisponivel': equipamentoDisponivel,
        'turnos': turnos,
        'reservas': reservas,
      };
}

class EspacoUpsertWithoutServicosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUpsertWithoutServicosInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.EspacoUpdateWithoutServicosInput,
      _i2.EspacoUncheckedUpdateWithoutServicosInput> update;

  final _i1.PrismaUnion<_i2.EspacoCreateWithoutServicosInput,
      _i2.EspacoUncheckedCreateWithoutServicosInput> create;

  final _i2.EspacoWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class EspacoUpdateToOneWithWhereWithoutServicosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUpdateToOneWithWhereWithoutServicosInput({
    this.where,
    required this.data,
  });

  final _i2.EspacoWhereInput? where;

  final _i1.PrismaUnion<_i2.EspacoUpdateWithoutServicosInput,
      _i2.EspacoUncheckedUpdateWithoutServicosInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class EspacoUpdateOneRequiredWithoutServicosNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUpdateOneRequiredWithoutServicosNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.EspacoCreateWithoutServicosInput,
      _i2.EspacoUncheckedCreateWithoutServicosInput>? create;

  final _i2.EspacoCreateOrConnectWithoutServicosInput? connectOrCreate;

  final _i2.EspacoUpsertWithoutServicosInput? upsert;

  final _i2.EspacoWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.EspacoUpdateToOneWithWhereWithoutServicosInput,
      _i1.PrismaUnion<_i2.EspacoUpdateWithoutServicosInput,
          _i2.EspacoUncheckedUpdateWithoutServicosInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class ServicoUpdateWithoutPeriodoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoUpdateWithoutPeriodoInput({
    this.id,
    this.descricao,
    this.status,
    this.espaco,
    this.solicitante,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      descricao;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? status;

  final _i2.EspacoUpdateOneRequiredWithoutServicosNestedInput? espaco;

  final _i2.UsuarioUpdateOneRequiredWithoutServicosNestedInput? solicitante;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'descricao': descricao,
        'status': status,
        'espaco': espaco,
        'solicitante': solicitante,
      };
}

class ServicoUncheckedUpdateWithoutPeriodoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoUncheckedUpdateWithoutPeriodoInput({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? espacoId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      solicitanteId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      descricao;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? status;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
      };
}

class ServicoUpsertWithoutPeriodoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoUpsertWithoutPeriodoInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.ServicoUpdateWithoutPeriodoInput,
      _i2.ServicoUncheckedUpdateWithoutPeriodoInput> update;

  final _i1.PrismaUnion<_i2.ServicoCreateWithoutPeriodoInput,
      _i2.ServicoUncheckedCreateWithoutPeriodoInput> create;

  final _i2.ServicoWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class ServicoUpdateToOneWithWhereWithoutPeriodoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoUpdateToOneWithWhereWithoutPeriodoInput({
    this.where,
    required this.data,
  });

  final _i2.ServicoWhereInput? where;

  final _i1.PrismaUnion<_i2.ServicoUpdateWithoutPeriodoInput,
      _i2.ServicoUncheckedUpdateWithoutPeriodoInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ServicoUpdateOneRequiredWithoutPeriodoNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoUpdateOneRequiredWithoutPeriodoNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ServicoCreateWithoutPeriodoInput,
      _i2.ServicoUncheckedCreateWithoutPeriodoInput>? create;

  final _i2.ServicoCreateOrConnectWithoutPeriodoInput? connectOrCreate;

  final _i2.ServicoUpsertWithoutPeriodoInput? upsert;

  final _i2.ServicoWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ServicoUpdateToOneWithWhereWithoutPeriodoInput,
      _i1.PrismaUnion<_i2.ServicoUpdateWithoutPeriodoInput,
          _i2.ServicoUncheckedUpdateWithoutPeriodoInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class HorarioUpdateWithoutReservaSolicitadaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUpdateWithoutReservaSolicitadaInput({
    this.id,
    this.inicio,
    this.fim,
    this.isReserved,
    this.agenda,
    this.gestorServico,
    this.gestorReserva,
    this.servicoSolicitado,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? inicio;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? fim;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isReserved;

  final _i2.AgendaUpdateOneRequiredWithoutHorariosNestedInput? agenda;

  final _i2.UsuarioUpdateOneWithoutGestorServicoHorariosNestedInput?
      gestorServico;

  final _i2.UsuarioUpdateOneWithoutGestorReservaHorariosNestedInput?
      gestorReserva;

  final _i2.ServicoUpdateOneRequiredWithoutPeriodoNestedInput?
      servicoSolicitado;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'isReserved': isReserved,
        'agenda': agenda,
        'gestorServico': gestorServico,
        'gestorReserva': gestorReserva,
        'servicoSolicitado': servicoSolicitado,
      };
}

class HorarioUncheckedUpdateWithoutReservaSolicitadaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUncheckedUpdateWithoutReservaSolicitadaInput({
    this.id,
    this.inicio,
    this.fim,
    this.agendaId,
    this.gestorServicoId,
    this.gestorReservaId,
    this.isReserved,
    this.servicoSolicitadoId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? inicio;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? fim;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? agendaId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      gestorServicoId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      gestorReservaId;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isReserved;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      servicoSolicitadoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'servicoSolicitadoId': servicoSolicitadoId,
      };
}

class HorarioUpsertWithWhereUniqueWithoutReservaSolicitadaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUpsertWithWhereUniqueWithoutReservaSolicitadaInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.HorarioWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.HorarioUpdateWithoutReservaSolicitadaInput,
      _i2.HorarioUncheckedUpdateWithoutReservaSolicitadaInput> update;

  final _i1.PrismaUnion<_i2.HorarioCreateWithoutReservaSolicitadaInput,
      _i2.HorarioUncheckedCreateWithoutReservaSolicitadaInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class HorarioUpdateWithWhereUniqueWithoutReservaSolicitadaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUpdateWithWhereUniqueWithoutReservaSolicitadaInput({
    required this.where,
    required this.data,
  });

  final _i2.HorarioWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.HorarioUpdateWithoutReservaSolicitadaInput,
      _i2.HorarioUncheckedUpdateWithoutReservaSolicitadaInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class HorarioUncheckedUpdateManyWithoutReservaSolicitadaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUncheckedUpdateManyWithoutReservaSolicitadaInput({
    this.id,
    this.inicio,
    this.fim,
    this.agendaId,
    this.gestorServicoId,
    this.gestorReservaId,
    this.isReserved,
    this.servicoSolicitadoId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? inicio;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? fim;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? agendaId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      gestorServicoId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      gestorReservaId;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isReserved;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      servicoSolicitadoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'servicoSolicitadoId': servicoSolicitadoId,
      };
}

class HorarioUpdateManyWithWhereWithoutReservaSolicitadaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUpdateManyWithWhereWithoutReservaSolicitadaInput({
    required this.where,
    required this.data,
  });

  final _i2.HorarioScalarWhereInput where;

  final _i1.PrismaUnion<_i2.HorarioUpdateManyMutationInput,
      _i2.HorarioUncheckedUpdateManyWithoutReservaSolicitadaInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class HorarioUncheckedUpdateManyWithoutReservaSolicitadaNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUncheckedUpdateManyWithoutReservaSolicitadaNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.HorarioCreateWithoutReservaSolicitadaInput,
          _i1.PrismaUnion<
              Iterable<_i2.HorarioCreateWithoutReservaSolicitadaInput>,
              _i1.PrismaUnion<
                  _i2.HorarioUncheckedCreateWithoutReservaSolicitadaInput,
                  Iterable<
                      _i2
                      .HorarioUncheckedCreateWithoutReservaSolicitadaInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.HorarioCreateOrConnectWithoutReservaSolicitadaInput,
          Iterable<_i2.HorarioCreateOrConnectWithoutReservaSolicitadaInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<
          _i2.HorarioUpsertWithWhereUniqueWithoutReservaSolicitadaInput,
          Iterable<
              _i2.HorarioUpsertWithWhereUniqueWithoutReservaSolicitadaInput>>?
      upsert;

  final _i2.HorarioCreateManyReservaSolicitadaInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<
          _i2.HorarioUpdateWithWhereUniqueWithoutReservaSolicitadaInput,
          Iterable<
              _i2.HorarioUpdateWithWhereUniqueWithoutReservaSolicitadaInput>>?
      update;

  final _i1.PrismaUnion<
          _i2.HorarioUpdateManyWithWhereWithoutReservaSolicitadaInput,
          Iterable<
              _i2.HorarioUpdateManyWithWhereWithoutReservaSolicitadaInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.HorarioScalarWhereInput,
      Iterable<_i2.HorarioScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ReservaUncheckedUpdateWithoutSolicitanteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaUncheckedUpdateWithoutSolicitanteInput({
    this.id,
    this.espacoId,
    this.descricao,
    this.status,
    this.periodo,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? espacoId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      descricao;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? status;

  final _i2.HorarioUncheckedUpdateManyWithoutReservaSolicitadaNestedInput?
      periodo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'descricao': descricao,
        'status': status,
        'periodo': periodo,
      };
}

class ReservaUpdateWithWhereUniqueWithoutSolicitanteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaUpdateWithWhereUniqueWithoutSolicitanteInput({
    required this.where,
    required this.data,
  });

  final _i2.ReservaWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ReservaUpdateWithoutSolicitanteInput,
      _i2.ReservaUncheckedUpdateWithoutSolicitanteInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ReservaUncheckedUpdateManyWithoutSolicitanteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaUncheckedUpdateManyWithoutSolicitanteInput({
    this.id,
    this.espacoId,
    this.descricao,
    this.status,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? espacoId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      descricao;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? status;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'descricao': descricao,
        'status': status,
      };
}

class ReservaUpdateManyWithWhereWithoutSolicitanteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaUpdateManyWithWhereWithoutSolicitanteInput({
    required this.where,
    required this.data,
  });

  final _i2.ReservaScalarWhereInput where;

  final _i1.PrismaUnion<_i2.ReservaUpdateManyMutationInput,
      _i2.ReservaUncheckedUpdateManyWithoutSolicitanteInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ReservaUncheckedUpdateManyWithoutSolicitanteNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaUncheckedUpdateManyWithoutSolicitanteNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.ReservaCreateWithoutSolicitanteInput,
      _i1.PrismaUnion<
          Iterable<_i2.ReservaCreateWithoutSolicitanteInput>,
          _i1.PrismaUnion<
              _i2.ReservaUncheckedCreateWithoutSolicitanteInput,
              Iterable<
                  _i2.ReservaUncheckedCreateWithoutSolicitanteInput>>>>? create;

  final _i1.PrismaUnion<_i2.ReservaCreateOrConnectWithoutSolicitanteInput,
          Iterable<_i2.ReservaCreateOrConnectWithoutSolicitanteInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.ReservaUpsertWithWhereUniqueWithoutSolicitanteInput,
          Iterable<_i2.ReservaUpsertWithWhereUniqueWithoutSolicitanteInput>>?
      upsert;

  final _i2.ReservaCreateManySolicitanteInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ReservaWhereUniqueInput,
      Iterable<_i2.ReservaWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.ReservaWhereUniqueInput,
      Iterable<_i2.ReservaWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.ReservaWhereUniqueInput,
      Iterable<_i2.ReservaWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.ReservaWhereUniqueInput,
      Iterable<_i2.ReservaWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.ReservaUpdateWithWhereUniqueWithoutSolicitanteInput,
          Iterable<_i2.ReservaUpdateWithWhereUniqueWithoutSolicitanteInput>>?
      update;

  final _i1.PrismaUnion<_i2.ReservaUpdateManyWithWhereWithoutSolicitanteInput,
          Iterable<_i2.ReservaUpdateManyWithWhereWithoutSolicitanteInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.ReservaScalarWhereInput,
      Iterable<_i2.ReservaScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ReservaUpdateWithoutPeriodoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaUpdateWithoutPeriodoInput({
    this.id,
    this.descricao,
    this.status,
    this.espaco,
    this.solicitante,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      descricao;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? status;

  final _i2.EspacoUpdateOneRequiredWithoutReservasNestedInput? espaco;

  final _i2.UsuarioUpdateOneRequiredWithoutReservasNestedInput? solicitante;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'descricao': descricao,
        'status': status,
        'espaco': espaco,
        'solicitante': solicitante,
      };
}

class ReservaUncheckedUpdateWithoutPeriodoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaUncheckedUpdateWithoutPeriodoInput({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? espacoId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      solicitanteId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      descricao;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? status;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
      };
}

class ReservaUpsertWithoutPeriodoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaUpsertWithoutPeriodoInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.ReservaUpdateWithoutPeriodoInput,
      _i2.ReservaUncheckedUpdateWithoutPeriodoInput> update;

  final _i1.PrismaUnion<_i2.ReservaCreateWithoutPeriodoInput,
      _i2.ReservaUncheckedCreateWithoutPeriodoInput> create;

  final _i2.ReservaWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class ReservaUpdateToOneWithWhereWithoutPeriodoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaUpdateToOneWithWhereWithoutPeriodoInput({
    this.where,
    required this.data,
  });

  final _i2.ReservaWhereInput? where;

  final _i1.PrismaUnion<_i2.ReservaUpdateWithoutPeriodoInput,
      _i2.ReservaUncheckedUpdateWithoutPeriodoInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ReservaUpdateOneRequiredWithoutPeriodoNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaUpdateOneRequiredWithoutPeriodoNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ReservaCreateWithoutPeriodoInput,
      _i2.ReservaUncheckedCreateWithoutPeriodoInput>? create;

  final _i2.ReservaCreateOrConnectWithoutPeriodoInput? connectOrCreate;

  final _i2.ReservaUpsertWithoutPeriodoInput? upsert;

  final _i2.ReservaWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ReservaUpdateToOneWithWhereWithoutPeriodoInput,
      _i1.PrismaUnion<_i2.ReservaUpdateWithoutPeriodoInput,
          _i2.ReservaUncheckedUpdateWithoutPeriodoInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class HorarioUpdateWithoutServicoSolicitadoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUpdateWithoutServicoSolicitadoInput({
    this.id,
    this.inicio,
    this.fim,
    this.isReserved,
    this.agenda,
    this.gestorServico,
    this.gestorReserva,
    this.reservaSolicitada,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? inicio;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? fim;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isReserved;

  final _i2.AgendaUpdateOneRequiredWithoutHorariosNestedInput? agenda;

  final _i2.UsuarioUpdateOneWithoutGestorServicoHorariosNestedInput?
      gestorServico;

  final _i2.UsuarioUpdateOneWithoutGestorReservaHorariosNestedInput?
      gestorReserva;

  final _i2.ReservaUpdateOneRequiredWithoutPeriodoNestedInput?
      reservaSolicitada;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'isReserved': isReserved,
        'agenda': agenda,
        'gestorServico': gestorServico,
        'gestorReserva': gestorReserva,
        'reservaSolicitada': reservaSolicitada,
      };
}

class HorarioUncheckedUpdateWithoutServicoSolicitadoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUncheckedUpdateWithoutServicoSolicitadoInput({
    this.id,
    this.inicio,
    this.fim,
    this.agendaId,
    this.gestorServicoId,
    this.gestorReservaId,
    this.isReserved,
    this.reservaSolicitadaId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? inicio;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? fim;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? agendaId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      gestorServicoId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      gestorReservaId;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isReserved;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      reservaSolicitadaId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
      };
}

class HorarioUpsertWithWhereUniqueWithoutServicoSolicitadoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUpsertWithWhereUniqueWithoutServicoSolicitadoInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.HorarioWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.HorarioUpdateWithoutServicoSolicitadoInput,
      _i2.HorarioUncheckedUpdateWithoutServicoSolicitadoInput> update;

  final _i1.PrismaUnion<_i2.HorarioCreateWithoutServicoSolicitadoInput,
      _i2.HorarioUncheckedCreateWithoutServicoSolicitadoInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class HorarioUpdateWithWhereUniqueWithoutServicoSolicitadoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUpdateWithWhereUniqueWithoutServicoSolicitadoInput({
    required this.where,
    required this.data,
  });

  final _i2.HorarioWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.HorarioUpdateWithoutServicoSolicitadoInput,
      _i2.HorarioUncheckedUpdateWithoutServicoSolicitadoInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class HorarioUncheckedUpdateManyWithoutServicoSolicitadoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUncheckedUpdateManyWithoutServicoSolicitadoInput({
    this.id,
    this.inicio,
    this.fim,
    this.agendaId,
    this.gestorServicoId,
    this.gestorReservaId,
    this.isReserved,
    this.reservaSolicitadaId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? inicio;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? fim;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? agendaId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      gestorServicoId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      gestorReservaId;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isReserved;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      reservaSolicitadaId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
      };
}

class HorarioUpdateManyWithWhereWithoutServicoSolicitadoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUpdateManyWithWhereWithoutServicoSolicitadoInput({
    required this.where,
    required this.data,
  });

  final _i2.HorarioScalarWhereInput where;

  final _i1.PrismaUnion<_i2.HorarioUpdateManyMutationInput,
      _i2.HorarioUncheckedUpdateManyWithoutServicoSolicitadoInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class HorarioUpdateManyWithoutServicoSolicitadoNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUpdateManyWithoutServicoSolicitadoNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.HorarioCreateWithoutServicoSolicitadoInput,
          _i1.PrismaUnion<
              Iterable<_i2.HorarioCreateWithoutServicoSolicitadoInput>,
              _i1.PrismaUnion<
                  _i2.HorarioUncheckedCreateWithoutServicoSolicitadoInput,
                  Iterable<
                      _i2
                      .HorarioUncheckedCreateWithoutServicoSolicitadoInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.HorarioCreateOrConnectWithoutServicoSolicitadoInput,
          Iterable<_i2.HorarioCreateOrConnectWithoutServicoSolicitadoInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<
          _i2.HorarioUpsertWithWhereUniqueWithoutServicoSolicitadoInput,
          Iterable<
              _i2.HorarioUpsertWithWhereUniqueWithoutServicoSolicitadoInput>>?
      upsert;

  final _i2.HorarioCreateManyServicoSolicitadoInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<
          _i2.HorarioUpdateWithWhereUniqueWithoutServicoSolicitadoInput,
          Iterable<
              _i2.HorarioUpdateWithWhereUniqueWithoutServicoSolicitadoInput>>?
      update;

  final _i1.PrismaUnion<
          _i2.HorarioUpdateManyWithWhereWithoutServicoSolicitadoInput,
          Iterable<
              _i2.HorarioUpdateManyWithWhereWithoutServicoSolicitadoInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.HorarioScalarWhereInput,
      Iterable<_i2.HorarioScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ServicoUpdateWithoutSolicitanteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoUpdateWithoutSolicitanteInput({
    this.id,
    this.descricao,
    this.status,
    this.espaco,
    this.periodo,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      descricao;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? status;

  final _i2.EspacoUpdateOneRequiredWithoutServicosNestedInput? espaco;

  final _i2.HorarioUpdateManyWithoutServicoSolicitadoNestedInput? periodo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'descricao': descricao,
        'status': status,
        'espaco': espaco,
        'periodo': periodo,
      };
}

class HorarioUncheckedUpdateManyWithoutServicoSolicitadoNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUncheckedUpdateManyWithoutServicoSolicitadoNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.HorarioCreateWithoutServicoSolicitadoInput,
          _i1.PrismaUnion<
              Iterable<_i2.HorarioCreateWithoutServicoSolicitadoInput>,
              _i1.PrismaUnion<
                  _i2.HorarioUncheckedCreateWithoutServicoSolicitadoInput,
                  Iterable<
                      _i2
                      .HorarioUncheckedCreateWithoutServicoSolicitadoInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.HorarioCreateOrConnectWithoutServicoSolicitadoInput,
          Iterable<_i2.HorarioCreateOrConnectWithoutServicoSolicitadoInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<
          _i2.HorarioUpsertWithWhereUniqueWithoutServicoSolicitadoInput,
          Iterable<
              _i2.HorarioUpsertWithWhereUniqueWithoutServicoSolicitadoInput>>?
      upsert;

  final _i2.HorarioCreateManyServicoSolicitadoInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<
          _i2.HorarioUpdateWithWhereUniqueWithoutServicoSolicitadoInput,
          Iterable<
              _i2.HorarioUpdateWithWhereUniqueWithoutServicoSolicitadoInput>>?
      update;

  final _i1.PrismaUnion<
          _i2.HorarioUpdateManyWithWhereWithoutServicoSolicitadoInput,
          Iterable<
              _i2.HorarioUpdateManyWithWhereWithoutServicoSolicitadoInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.HorarioScalarWhereInput,
      Iterable<_i2.HorarioScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ServicoUncheckedUpdateWithoutSolicitanteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoUncheckedUpdateWithoutSolicitanteInput({
    this.id,
    this.espacoId,
    this.descricao,
    this.status,
    this.periodo,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? espacoId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      descricao;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? status;

  final _i2.HorarioUncheckedUpdateManyWithoutServicoSolicitadoNestedInput?
      periodo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'descricao': descricao,
        'status': status,
        'periodo': periodo,
      };
}

class ServicoUpsertWithWhereUniqueWithoutSolicitanteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoUpsertWithWhereUniqueWithoutSolicitanteInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.ServicoWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ServicoUpdateWithoutSolicitanteInput,
      _i2.ServicoUncheckedUpdateWithoutSolicitanteInput> update;

  final _i1.PrismaUnion<_i2.ServicoCreateWithoutSolicitanteInput,
      _i2.ServicoUncheckedCreateWithoutSolicitanteInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class ServicoUpdateWithWhereUniqueWithoutSolicitanteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoUpdateWithWhereUniqueWithoutSolicitanteInput({
    required this.where,
    required this.data,
  });

  final _i2.ServicoWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ServicoUpdateWithoutSolicitanteInput,
      _i2.ServicoUncheckedUpdateWithoutSolicitanteInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ServicoScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
  });

  final _i1.PrismaUnion<_i2.ServicoScalarWhereInput,
      Iterable<_i2.ServicoScalarWhereInput>>? AND;

  final Iterable<_i2.ServicoScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.ServicoScalarWhereInput,
      Iterable<_i2.ServicoScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? espacoId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? solicitanteId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? descricao;

  final _i1.PrismaUnion<_i2.StringFilter, String>? status;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
      };
}

class ServicoUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoUpdateManyMutationInput({
    this.id,
    this.descricao,
    this.status,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      descricao;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? status;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'descricao': descricao,
        'status': status,
      };
}

class ServicoUncheckedUpdateManyWithoutSolicitanteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoUncheckedUpdateManyWithoutSolicitanteInput({
    this.id,
    this.espacoId,
    this.descricao,
    this.status,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? espacoId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      descricao;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? status;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'descricao': descricao,
        'status': status,
      };
}

class ServicoUpdateManyWithWhereWithoutSolicitanteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoUpdateManyWithWhereWithoutSolicitanteInput({
    required this.where,
    required this.data,
  });

  final _i2.ServicoScalarWhereInput where;

  final _i1.PrismaUnion<_i2.ServicoUpdateManyMutationInput,
      _i2.ServicoUncheckedUpdateManyWithoutSolicitanteInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ServicoUncheckedUpdateManyWithoutSolicitanteNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoUncheckedUpdateManyWithoutSolicitanteNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.ServicoCreateWithoutSolicitanteInput,
      _i1.PrismaUnion<
          Iterable<_i2.ServicoCreateWithoutSolicitanteInput>,
          _i1.PrismaUnion<
              _i2.ServicoUncheckedCreateWithoutSolicitanteInput,
              Iterable<
                  _i2.ServicoUncheckedCreateWithoutSolicitanteInput>>>>? create;

  final _i1.PrismaUnion<_i2.ServicoCreateOrConnectWithoutSolicitanteInput,
          Iterable<_i2.ServicoCreateOrConnectWithoutSolicitanteInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.ServicoUpsertWithWhereUniqueWithoutSolicitanteInput,
          Iterable<_i2.ServicoUpsertWithWhereUniqueWithoutSolicitanteInput>>?
      upsert;

  final _i2.ServicoCreateManySolicitanteInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ServicoWhereUniqueInput,
      Iterable<_i2.ServicoWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.ServicoWhereUniqueInput,
      Iterable<_i2.ServicoWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.ServicoWhereUniqueInput,
      Iterable<_i2.ServicoWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.ServicoWhereUniqueInput,
      Iterable<_i2.ServicoWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.ServicoUpdateWithWhereUniqueWithoutSolicitanteInput,
          Iterable<_i2.ServicoUpdateWithWhereUniqueWithoutSolicitanteInput>>?
      update;

  final _i1.PrismaUnion<_i2.ServicoUpdateManyWithWhereWithoutSolicitanteInput,
          Iterable<_i2.ServicoUpdateManyWithWhereWithoutSolicitanteInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.ServicoScalarWhereInput,
      Iterable<_i2.ServicoScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class UsuarioUncheckedUpdateWithoutDepartamentoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUncheckedUpdateWithoutDepartamentoInput({
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.sigla,
    this.isDepartamento,
    this.departamentoSetor,
    this.gestorReservaHorarios,
    this.gestorServicoHorarios,
    this.reservas,
    this.servicos,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? telefone;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? photoUrl;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      tipoUsuario;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? sigla;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>?
      isDepartamento;

  final _i2.UsuarioUncheckedUpdateOneWithoutDepartamentoNestedInput?
      departamentoSetor;

  final _i2.HorarioUncheckedUpdateManyWithoutGestorReservaNestedInput?
      gestorReservaHorarios;

  final _i2.HorarioUncheckedUpdateManyWithoutGestorServicoNestedInput?
      gestorServicoHorarios;

  final _i2.ReservaUncheckedUpdateManyWithoutSolicitanteNestedInput? reservas;

  final _i2.ServicoUncheckedUpdateManyWithoutSolicitanteNestedInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'departamentoSetor': departamentoSetor,
        'gestorReservaHorarios': gestorReservaHorarios,
        'gestorServicoHorarios': gestorServicoHorarios,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class UsuarioUpdateToOneWithWhereWithoutDepartamentoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUpdateToOneWithWhereWithoutDepartamentoInput({
    this.where,
    required this.data,
  });

  final _i2.UsuarioWhereInput? where;

  final _i1.PrismaUnion<_i2.UsuarioUpdateWithoutDepartamentoInput,
      _i2.UsuarioUncheckedUpdateWithoutDepartamentoInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class UsuarioUncheckedUpdateOneWithoutDepartamentoNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUncheckedUpdateOneWithoutDepartamentoNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.UsuarioCreateWithoutDepartamentoInput,
      _i2.UsuarioUncheckedCreateWithoutDepartamentoInput>? create;

  final _i2.UsuarioCreateOrConnectWithoutDepartamentoInput? connectOrCreate;

  final _i2.UsuarioUpsertWithoutDepartamentoInput? upsert;

  final _i1.PrismaUnion<bool, _i2.UsuarioWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.UsuarioWhereInput>? delete;

  final _i2.UsuarioWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.UsuarioUpdateToOneWithWhereWithoutDepartamentoInput,
      _i1.PrismaUnion<_i2.UsuarioUpdateWithoutDepartamentoInput,
          _i2.UsuarioUncheckedUpdateWithoutDepartamentoInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class UsuarioUncheckedUpdateWithoutServicosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUncheckedUpdateWithoutServicosInput({
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.departamentoId,
    this.sigla,
    this.isDepartamento,
    this.departamentoSetor,
    this.gestorReservaHorarios,
    this.gestorServicoHorarios,
    this.reservas,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? telefone;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? photoUrl;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      tipoUsuario;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? departamentoId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? sigla;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>?
      isDepartamento;

  final _i2.UsuarioUncheckedUpdateOneWithoutDepartamentoNestedInput?
      departamentoSetor;

  final _i2.HorarioUncheckedUpdateManyWithoutGestorReservaNestedInput?
      gestorReservaHorarios;

  final _i2.HorarioUncheckedUpdateManyWithoutGestorServicoNestedInput?
      gestorServicoHorarios;

  final _i2.ReservaUncheckedUpdateManyWithoutSolicitanteNestedInput? reservas;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'departamentoId': departamentoId,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'departamentoSetor': departamentoSetor,
        'gestorReservaHorarios': gestorReservaHorarios,
        'gestorServicoHorarios': gestorServicoHorarios,
        'reservas': reservas,
      };
}

class UsuarioUpsertWithoutServicosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUpsertWithoutServicosInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.UsuarioUpdateWithoutServicosInput,
      _i2.UsuarioUncheckedUpdateWithoutServicosInput> update;

  final _i1.PrismaUnion<_i2.UsuarioCreateWithoutServicosInput,
      _i2.UsuarioUncheckedCreateWithoutServicosInput> create;

  final _i2.UsuarioWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class UsuarioUpdateToOneWithWhereWithoutServicosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUpdateToOneWithWhereWithoutServicosInput({
    this.where,
    required this.data,
  });

  final _i2.UsuarioWhereInput? where;

  final _i1.PrismaUnion<_i2.UsuarioUpdateWithoutServicosInput,
      _i2.UsuarioUncheckedUpdateWithoutServicosInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class UsuarioUpdateOneRequiredWithoutServicosNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUpdateOneRequiredWithoutServicosNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.UsuarioCreateWithoutServicosInput,
      _i2.UsuarioUncheckedCreateWithoutServicosInput>? create;

  final _i2.UsuarioCreateOrConnectWithoutServicosInput? connectOrCreate;

  final _i2.UsuarioUpsertWithoutServicosInput? upsert;

  final _i2.UsuarioWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.UsuarioUpdateToOneWithWhereWithoutServicosInput,
      _i1.PrismaUnion<_i2.UsuarioUpdateWithoutServicosInput,
          _i2.UsuarioUncheckedUpdateWithoutServicosInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class ServicoUpdateWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoUpdateWithoutEspacoInput({
    this.id,
    this.descricao,
    this.status,
    this.solicitante,
    this.periodo,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      descricao;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? status;

  final _i2.UsuarioUpdateOneRequiredWithoutServicosNestedInput? solicitante;

  final _i2.HorarioUpdateManyWithoutServicoSolicitadoNestedInput? periodo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'descricao': descricao,
        'status': status,
        'solicitante': solicitante,
        'periodo': periodo,
      };
}

class ServicoUncheckedUpdateWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoUncheckedUpdateWithoutEspacoInput({
    this.id,
    this.solicitanteId,
    this.descricao,
    this.status,
    this.periodo,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      solicitanteId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      descricao;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? status;

  final _i2.HorarioUncheckedUpdateManyWithoutServicoSolicitadoNestedInput?
      periodo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
        'periodo': periodo,
      };
}

class ServicoUpsertWithWhereUniqueWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoUpsertWithWhereUniqueWithoutEspacoInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.ServicoWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ServicoUpdateWithoutEspacoInput,
      _i2.ServicoUncheckedUpdateWithoutEspacoInput> update;

  final _i1.PrismaUnion<_i2.ServicoCreateWithoutEspacoInput,
      _i2.ServicoUncheckedCreateWithoutEspacoInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class ServicoUpdateWithWhereUniqueWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoUpdateWithWhereUniqueWithoutEspacoInput({
    required this.where,
    required this.data,
  });

  final _i2.ServicoWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ServicoUpdateWithoutEspacoInput,
      _i2.ServicoUncheckedUpdateWithoutEspacoInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ServicoUncheckedUpdateManyWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoUncheckedUpdateManyWithoutEspacoInput({
    this.id,
    this.solicitanteId,
    this.descricao,
    this.status,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      solicitanteId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      descricao;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? status;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
      };
}

class ServicoUpdateManyWithWhereWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoUpdateManyWithWhereWithoutEspacoInput({
    required this.where,
    required this.data,
  });

  final _i2.ServicoScalarWhereInput where;

  final _i1.PrismaUnion<_i2.ServicoUpdateManyMutationInput,
      _i2.ServicoUncheckedUpdateManyWithoutEspacoInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ServicoUpdateManyWithoutEspacoNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoUpdateManyWithoutEspacoNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.ServicoCreateWithoutEspacoInput,
      _i1.PrismaUnion<
          Iterable<_i2.ServicoCreateWithoutEspacoInput>,
          _i1.PrismaUnion<_i2.ServicoUncheckedCreateWithoutEspacoInput,
              Iterable<_i2.ServicoUncheckedCreateWithoutEspacoInput>>>>? create;

  final _i1.PrismaUnion<_i2.ServicoCreateOrConnectWithoutEspacoInput,
      Iterable<_i2.ServicoCreateOrConnectWithoutEspacoInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.ServicoUpsertWithWhereUniqueWithoutEspacoInput,
      Iterable<_i2.ServicoUpsertWithWhereUniqueWithoutEspacoInput>>? upsert;

  final _i2.ServicoCreateManyEspacoInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ServicoWhereUniqueInput,
      Iterable<_i2.ServicoWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.ServicoWhereUniqueInput,
      Iterable<_i2.ServicoWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.ServicoWhereUniqueInput,
      Iterable<_i2.ServicoWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.ServicoWhereUniqueInput,
      Iterable<_i2.ServicoWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.ServicoUpdateWithWhereUniqueWithoutEspacoInput,
      Iterable<_i2.ServicoUpdateWithWhereUniqueWithoutEspacoInput>>? update;

  final _i1.PrismaUnion<_i2.ServicoUpdateManyWithWhereWithoutEspacoInput,
      Iterable<_i2.ServicoUpdateManyWithWhereWithoutEspacoInput>>? updateMany;

  final _i1.PrismaUnion<_i2.ServicoScalarWhereInput,
      Iterable<_i2.ServicoScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class EspacoUpdateWithoutReservasInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUpdateWithoutReservasInput({
    this.id,
    this.capacidadePessoas,
    this.acessibilidade,
    this.localizacao,
    this.equipamentoDisponivel,
    this.turnos,
    this.servicos,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      capacidadePessoas;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>?
      acessibilidade;

  final _i2.LocalizacaoUpdateOneRequiredWithoutEspacoNestedInput? localizacao;

  final _i2.EquipamentoUpdateManyWithoutEspacoNestedInput?
      equipamentoDisponivel;

  final _i2.TurnoUpdateManyWithoutEspacoNestedInput? turnos;

  final _i2.ServicoUpdateManyWithoutEspacoNestedInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        'localizacao': localizacao,
        'equipamentoDisponivel': equipamentoDisponivel,
        'turnos': turnos,
        'servicos': servicos,
      };
}

class ServicoUncheckedUpdateManyWithoutEspacoNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoUncheckedUpdateManyWithoutEspacoNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.ServicoCreateWithoutEspacoInput,
      _i1.PrismaUnion<
          Iterable<_i2.ServicoCreateWithoutEspacoInput>,
          _i1.PrismaUnion<_i2.ServicoUncheckedCreateWithoutEspacoInput,
              Iterable<_i2.ServicoUncheckedCreateWithoutEspacoInput>>>>? create;

  final _i1.PrismaUnion<_i2.ServicoCreateOrConnectWithoutEspacoInput,
      Iterable<_i2.ServicoCreateOrConnectWithoutEspacoInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.ServicoUpsertWithWhereUniqueWithoutEspacoInput,
      Iterable<_i2.ServicoUpsertWithWhereUniqueWithoutEspacoInput>>? upsert;

  final _i2.ServicoCreateManyEspacoInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ServicoWhereUniqueInput,
      Iterable<_i2.ServicoWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.ServicoWhereUniqueInput,
      Iterable<_i2.ServicoWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.ServicoWhereUniqueInput,
      Iterable<_i2.ServicoWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.ServicoWhereUniqueInput,
      Iterable<_i2.ServicoWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.ServicoUpdateWithWhereUniqueWithoutEspacoInput,
      Iterable<_i2.ServicoUpdateWithWhereUniqueWithoutEspacoInput>>? update;

  final _i1.PrismaUnion<_i2.ServicoUpdateManyWithWhereWithoutEspacoInput,
      Iterable<_i2.ServicoUpdateManyWithWhereWithoutEspacoInput>>? updateMany;

  final _i1.PrismaUnion<_i2.ServicoScalarWhereInput,
      Iterable<_i2.ServicoScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class EspacoUncheckedUpdateWithoutReservasInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUncheckedUpdateWithoutReservasInput({
    this.id,
    this.localizacaoId,
    this.capacidadePessoas,
    this.acessibilidade,
    this.equipamentoDisponivel,
    this.turnos,
    this.servicos,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      localizacaoId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      capacidadePessoas;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>?
      acessibilidade;

  final _i2.EquipamentoUncheckedUpdateManyWithoutEspacoNestedInput?
      equipamentoDisponivel;

  final _i2.TurnoUncheckedUpdateManyWithoutEspacoNestedInput? turnos;

  final _i2.ServicoUncheckedUpdateManyWithoutEspacoNestedInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'localizacaoId': localizacaoId,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        'equipamentoDisponivel': equipamentoDisponivel,
        'turnos': turnos,
        'servicos': servicos,
      };
}

class EspacoUpsertWithoutReservasInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUpsertWithoutReservasInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.EspacoUpdateWithoutReservasInput,
      _i2.EspacoUncheckedUpdateWithoutReservasInput> update;

  final _i1.PrismaUnion<_i2.EspacoCreateWithoutReservasInput,
      _i2.EspacoUncheckedCreateWithoutReservasInput> create;

  final _i2.EspacoWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class EspacoUpdateToOneWithWhereWithoutReservasInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUpdateToOneWithWhereWithoutReservasInput({
    this.where,
    required this.data,
  });

  final _i2.EspacoWhereInput? where;

  final _i1.PrismaUnion<_i2.EspacoUpdateWithoutReservasInput,
      _i2.EspacoUncheckedUpdateWithoutReservasInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class EspacoUpdateOneRequiredWithoutReservasNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUpdateOneRequiredWithoutReservasNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.EspacoCreateWithoutReservasInput,
      _i2.EspacoUncheckedCreateWithoutReservasInput>? create;

  final _i2.EspacoCreateOrConnectWithoutReservasInput? connectOrCreate;

  final _i2.EspacoUpsertWithoutReservasInput? upsert;

  final _i2.EspacoWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.EspacoUpdateToOneWithWhereWithoutReservasInput,
      _i1.PrismaUnion<_i2.EspacoUpdateWithoutReservasInput,
          _i2.EspacoUncheckedUpdateWithoutReservasInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class HorarioUpdateManyWithoutReservaSolicitadaNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUpdateManyWithoutReservaSolicitadaNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.HorarioCreateWithoutReservaSolicitadaInput,
          _i1.PrismaUnion<
              Iterable<_i2.HorarioCreateWithoutReservaSolicitadaInput>,
              _i1.PrismaUnion<
                  _i2.HorarioUncheckedCreateWithoutReservaSolicitadaInput,
                  Iterable<
                      _i2
                      .HorarioUncheckedCreateWithoutReservaSolicitadaInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.HorarioCreateOrConnectWithoutReservaSolicitadaInput,
          Iterable<_i2.HorarioCreateOrConnectWithoutReservaSolicitadaInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<
          _i2.HorarioUpsertWithWhereUniqueWithoutReservaSolicitadaInput,
          Iterable<
              _i2.HorarioUpsertWithWhereUniqueWithoutReservaSolicitadaInput>>?
      upsert;

  final _i2.HorarioCreateManyReservaSolicitadaInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<
          _i2.HorarioUpdateWithWhereUniqueWithoutReservaSolicitadaInput,
          Iterable<
              _i2.HorarioUpdateWithWhereUniqueWithoutReservaSolicitadaInput>>?
      update;

  final _i1.PrismaUnion<
          _i2.HorarioUpdateManyWithWhereWithoutReservaSolicitadaInput,
          Iterable<
              _i2.HorarioUpdateManyWithWhereWithoutReservaSolicitadaInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.HorarioScalarWhereInput,
      Iterable<_i2.HorarioScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ReservaUpdateWithoutSolicitanteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaUpdateWithoutSolicitanteInput({
    this.id,
    this.descricao,
    this.status,
    this.espaco,
    this.periodo,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      descricao;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? status;

  final _i2.EspacoUpdateOneRequiredWithoutReservasNestedInput? espaco;

  final _i2.HorarioUpdateManyWithoutReservaSolicitadaNestedInput? periodo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'descricao': descricao,
        'status': status,
        'espaco': espaco,
        'periodo': periodo,
      };
}

class ReservaUpsertWithWhereUniqueWithoutSolicitanteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaUpsertWithWhereUniqueWithoutSolicitanteInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.ReservaWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ReservaUpdateWithoutSolicitanteInput,
      _i2.ReservaUncheckedUpdateWithoutSolicitanteInput> update;

  final _i1.PrismaUnion<_i2.ReservaCreateWithoutSolicitanteInput,
      _i2.ReservaUncheckedCreateWithoutSolicitanteInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class ReservaUpdateManyWithoutSolicitanteNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaUpdateManyWithoutSolicitanteNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.ReservaCreateWithoutSolicitanteInput,
      _i1.PrismaUnion<
          Iterable<_i2.ReservaCreateWithoutSolicitanteInput>,
          _i1.PrismaUnion<
              _i2.ReservaUncheckedCreateWithoutSolicitanteInput,
              Iterable<
                  _i2.ReservaUncheckedCreateWithoutSolicitanteInput>>>>? create;

  final _i1.PrismaUnion<_i2.ReservaCreateOrConnectWithoutSolicitanteInput,
          Iterable<_i2.ReservaCreateOrConnectWithoutSolicitanteInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.ReservaUpsertWithWhereUniqueWithoutSolicitanteInput,
          Iterable<_i2.ReservaUpsertWithWhereUniqueWithoutSolicitanteInput>>?
      upsert;

  final _i2.ReservaCreateManySolicitanteInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ReservaWhereUniqueInput,
      Iterable<_i2.ReservaWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.ReservaWhereUniqueInput,
      Iterable<_i2.ReservaWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.ReservaWhereUniqueInput,
      Iterable<_i2.ReservaWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.ReservaWhereUniqueInput,
      Iterable<_i2.ReservaWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.ReservaUpdateWithWhereUniqueWithoutSolicitanteInput,
          Iterable<_i2.ReservaUpdateWithWhereUniqueWithoutSolicitanteInput>>?
      update;

  final _i1.PrismaUnion<_i2.ReservaUpdateManyWithWhereWithoutSolicitanteInput,
          Iterable<_i2.ReservaUpdateManyWithWhereWithoutSolicitanteInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.ReservaScalarWhereInput,
      Iterable<_i2.ReservaScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ServicoUpdateManyWithoutSolicitanteNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoUpdateManyWithoutSolicitanteNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.ServicoCreateWithoutSolicitanteInput,
      _i1.PrismaUnion<
          Iterable<_i2.ServicoCreateWithoutSolicitanteInput>,
          _i1.PrismaUnion<
              _i2.ServicoUncheckedCreateWithoutSolicitanteInput,
              Iterable<
                  _i2.ServicoUncheckedCreateWithoutSolicitanteInput>>>>? create;

  final _i1.PrismaUnion<_i2.ServicoCreateOrConnectWithoutSolicitanteInput,
          Iterable<_i2.ServicoCreateOrConnectWithoutSolicitanteInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.ServicoUpsertWithWhereUniqueWithoutSolicitanteInput,
          Iterable<_i2.ServicoUpsertWithWhereUniqueWithoutSolicitanteInput>>?
      upsert;

  final _i2.ServicoCreateManySolicitanteInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ServicoWhereUniqueInput,
      Iterable<_i2.ServicoWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.ServicoWhereUniqueInput,
      Iterable<_i2.ServicoWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.ServicoWhereUniqueInput,
      Iterable<_i2.ServicoWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.ServicoWhereUniqueInput,
      Iterable<_i2.ServicoWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.ServicoUpdateWithWhereUniqueWithoutSolicitanteInput,
          Iterable<_i2.ServicoUpdateWithWhereUniqueWithoutSolicitanteInput>>?
      update;

  final _i1.PrismaUnion<_i2.ServicoUpdateManyWithWhereWithoutSolicitanteInput,
          Iterable<_i2.ServicoUpdateManyWithWhereWithoutSolicitanteInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.ServicoScalarWhereInput,
      Iterable<_i2.ServicoScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class UsuarioUpdateWithoutGestorReservaHorariosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUpdateWithoutGestorReservaHorariosInput({
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.sigla,
    this.isDepartamento,
    this.departamento,
    this.departamentoSetor,
    this.gestorServicoHorarios,
    this.reservas,
    this.servicos,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? telefone;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? photoUrl;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      tipoUsuario;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? sigla;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>?
      isDepartamento;

  final _i2.UsuarioUpdateOneWithoutDepartamentoSetorNestedInput? departamento;

  final _i2.UsuarioUpdateOneWithoutDepartamentoNestedInput? departamentoSetor;

  final _i2.HorarioUpdateManyWithoutGestorServicoNestedInput?
      gestorServicoHorarios;

  final _i2.ReservaUpdateManyWithoutSolicitanteNestedInput? reservas;

  final _i2.ServicoUpdateManyWithoutSolicitanteNestedInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'departamento': departamento,
        'departamentoSetor': departamentoSetor,
        'gestorServicoHorarios': gestorServicoHorarios,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class UsuarioUncheckedUpdateWithoutGestorReservaHorariosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUncheckedUpdateWithoutGestorReservaHorariosInput({
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.departamentoId,
    this.sigla,
    this.isDepartamento,
    this.departamentoSetor,
    this.gestorServicoHorarios,
    this.reservas,
    this.servicos,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? telefone;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? photoUrl;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      tipoUsuario;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? departamentoId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? sigla;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>?
      isDepartamento;

  final _i2.UsuarioUncheckedUpdateOneWithoutDepartamentoNestedInput?
      departamentoSetor;

  final _i2.HorarioUncheckedUpdateManyWithoutGestorServicoNestedInput?
      gestorServicoHorarios;

  final _i2.ReservaUncheckedUpdateManyWithoutSolicitanteNestedInput? reservas;

  final _i2.ServicoUncheckedUpdateManyWithoutSolicitanteNestedInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'departamentoId': departamentoId,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'departamentoSetor': departamentoSetor,
        'gestorServicoHorarios': gestorServicoHorarios,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class UsuarioUpsertWithoutGestorReservaHorariosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUpsertWithoutGestorReservaHorariosInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.UsuarioUpdateWithoutGestorReservaHorariosInput,
      _i2.UsuarioUncheckedUpdateWithoutGestorReservaHorariosInput> update;

  final _i1.PrismaUnion<_i2.UsuarioCreateWithoutGestorReservaHorariosInput,
      _i2.UsuarioUncheckedCreateWithoutGestorReservaHorariosInput> create;

  final _i2.UsuarioWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class UsuarioUpdateToOneWithWhereWithoutGestorReservaHorariosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUpdateToOneWithWhereWithoutGestorReservaHorariosInput({
    this.where,
    required this.data,
  });

  final _i2.UsuarioWhereInput? where;

  final _i1.PrismaUnion<_i2.UsuarioUpdateWithoutGestorReservaHorariosInput,
      _i2.UsuarioUncheckedUpdateWithoutGestorReservaHorariosInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class UsuarioUpdateOneWithoutGestorReservaHorariosNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUpdateOneWithoutGestorReservaHorariosNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.UsuarioCreateWithoutGestorReservaHorariosInput,
      _i2.UsuarioUncheckedCreateWithoutGestorReservaHorariosInput>? create;

  final _i2.UsuarioCreateOrConnectWithoutGestorReservaHorariosInput?
      connectOrCreate;

  final _i2.UsuarioUpsertWithoutGestorReservaHorariosInput? upsert;

  final _i1.PrismaUnion<bool, _i2.UsuarioWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.UsuarioWhereInput>? delete;

  final _i2.UsuarioWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.UsuarioUpdateToOneWithWhereWithoutGestorReservaHorariosInput,
      _i1.PrismaUnion<_i2.UsuarioUpdateWithoutGestorReservaHorariosInput,
          _i2.UsuarioUncheckedUpdateWithoutGestorReservaHorariosInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class HorarioUpdateWithoutGestorServicoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUpdateWithoutGestorServicoInput({
    this.id,
    this.inicio,
    this.fim,
    this.isReserved,
    this.agenda,
    this.gestorReserva,
    this.reservaSolicitada,
    this.servicoSolicitado,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? inicio;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? fim;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isReserved;

  final _i2.AgendaUpdateOneRequiredWithoutHorariosNestedInput? agenda;

  final _i2.UsuarioUpdateOneWithoutGestorReservaHorariosNestedInput?
      gestorReserva;

  final _i2.ReservaUpdateOneRequiredWithoutPeriodoNestedInput?
      reservaSolicitada;

  final _i2.ServicoUpdateOneRequiredWithoutPeriodoNestedInput?
      servicoSolicitado;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'isReserved': isReserved,
        'agenda': agenda,
        'gestorReserva': gestorReserva,
        'reservaSolicitada': reservaSolicitada,
        'servicoSolicitado': servicoSolicitado,
      };
}

class HorarioUpsertWithWhereUniqueWithoutGestorServicoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUpsertWithWhereUniqueWithoutGestorServicoInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.HorarioWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.HorarioUpdateWithoutGestorServicoInput,
      _i2.HorarioUncheckedUpdateWithoutGestorServicoInput> update;

  final _i1.PrismaUnion<_i2.HorarioCreateWithoutGestorServicoInput,
      _i2.HorarioUncheckedCreateWithoutGestorServicoInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class HorarioUpdateManyWithoutGestorServicoNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUpdateManyWithoutGestorServicoNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.HorarioCreateWithoutGestorServicoInput,
          _i1.PrismaUnion<
              Iterable<_i2.HorarioCreateWithoutGestorServicoInput>,
              _i1.PrismaUnion<
                  _i2.HorarioUncheckedCreateWithoutGestorServicoInput,
                  Iterable<
                      _i2.HorarioUncheckedCreateWithoutGestorServicoInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.HorarioCreateOrConnectWithoutGestorServicoInput,
          Iterable<_i2.HorarioCreateOrConnectWithoutGestorServicoInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<
          _i2.HorarioUpsertWithWhereUniqueWithoutGestorServicoInput,
          Iterable<_i2.HorarioUpsertWithWhereUniqueWithoutGestorServicoInput>>?
      upsert;

  final _i2.HorarioCreateManyGestorServicoInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<
          _i2.HorarioUpdateWithWhereUniqueWithoutGestorServicoInput,
          Iterable<_i2.HorarioUpdateWithWhereUniqueWithoutGestorServicoInput>>?
      update;

  final _i1.PrismaUnion<_i2.HorarioUpdateManyWithWhereWithoutGestorServicoInput,
          Iterable<_i2.HorarioUpdateManyWithWhereWithoutGestorServicoInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.HorarioScalarWhereInput,
      Iterable<_i2.HorarioScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class UsuarioUpdateWithoutDepartamentoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUpdateWithoutDepartamentoInput({
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.sigla,
    this.isDepartamento,
    this.departamentoSetor,
    this.gestorReservaHorarios,
    this.gestorServicoHorarios,
    this.reservas,
    this.servicos,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? telefone;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? photoUrl;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      tipoUsuario;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? sigla;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>?
      isDepartamento;

  final _i2.UsuarioUpdateOneWithoutDepartamentoNestedInput? departamentoSetor;

  final _i2.HorarioUpdateManyWithoutGestorReservaNestedInput?
      gestorReservaHorarios;

  final _i2.HorarioUpdateManyWithoutGestorServicoNestedInput?
      gestorServicoHorarios;

  final _i2.ReservaUpdateManyWithoutSolicitanteNestedInput? reservas;

  final _i2.ServicoUpdateManyWithoutSolicitanteNestedInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'departamentoSetor': departamentoSetor,
        'gestorReservaHorarios': gestorReservaHorarios,
        'gestorServicoHorarios': gestorServicoHorarios,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class UsuarioUpsertWithoutDepartamentoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUpsertWithoutDepartamentoInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.UsuarioUpdateWithoutDepartamentoInput,
      _i2.UsuarioUncheckedUpdateWithoutDepartamentoInput> update;

  final _i1.PrismaUnion<_i2.UsuarioCreateWithoutDepartamentoInput,
      _i2.UsuarioUncheckedCreateWithoutDepartamentoInput> create;

  final _i2.UsuarioWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class UsuarioUpdateOneWithoutDepartamentoNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUpdateOneWithoutDepartamentoNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.UsuarioCreateWithoutDepartamentoInput,
      _i2.UsuarioUncheckedCreateWithoutDepartamentoInput>? create;

  final _i2.UsuarioCreateOrConnectWithoutDepartamentoInput? connectOrCreate;

  final _i2.UsuarioUpsertWithoutDepartamentoInput? upsert;

  final _i1.PrismaUnion<bool, _i2.UsuarioWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.UsuarioWhereInput>? delete;

  final _i2.UsuarioWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.UsuarioUpdateToOneWithWhereWithoutDepartamentoInput,
      _i1.PrismaUnion<_i2.UsuarioUpdateWithoutDepartamentoInput,
          _i2.UsuarioUncheckedUpdateWithoutDepartamentoInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class UsuarioUpdateWithoutReservasInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUpdateWithoutReservasInput({
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.sigla,
    this.isDepartamento,
    this.departamento,
    this.departamentoSetor,
    this.gestorReservaHorarios,
    this.gestorServicoHorarios,
    this.servicos,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? telefone;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? photoUrl;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      tipoUsuario;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? sigla;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>?
      isDepartamento;

  final _i2.UsuarioUpdateOneWithoutDepartamentoSetorNestedInput? departamento;

  final _i2.UsuarioUpdateOneWithoutDepartamentoNestedInput? departamentoSetor;

  final _i2.HorarioUpdateManyWithoutGestorReservaNestedInput?
      gestorReservaHorarios;

  final _i2.HorarioUpdateManyWithoutGestorServicoNestedInput?
      gestorServicoHorarios;

  final _i2.ServicoUpdateManyWithoutSolicitanteNestedInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'departamento': departamento,
        'departamentoSetor': departamentoSetor,
        'gestorReservaHorarios': gestorReservaHorarios,
        'gestorServicoHorarios': gestorServicoHorarios,
        'servicos': servicos,
      };
}

class UsuarioUncheckedUpdateWithoutReservasInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUncheckedUpdateWithoutReservasInput({
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.departamentoId,
    this.sigla,
    this.isDepartamento,
    this.departamentoSetor,
    this.gestorReservaHorarios,
    this.gestorServicoHorarios,
    this.servicos,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? telefone;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? photoUrl;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      tipoUsuario;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? departamentoId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? sigla;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>?
      isDepartamento;

  final _i2.UsuarioUncheckedUpdateOneWithoutDepartamentoNestedInput?
      departamentoSetor;

  final _i2.HorarioUncheckedUpdateManyWithoutGestorReservaNestedInput?
      gestorReservaHorarios;

  final _i2.HorarioUncheckedUpdateManyWithoutGestorServicoNestedInput?
      gestorServicoHorarios;

  final _i2.ServicoUncheckedUpdateManyWithoutSolicitanteNestedInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'departamentoId': departamentoId,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'departamentoSetor': departamentoSetor,
        'gestorReservaHorarios': gestorReservaHorarios,
        'gestorServicoHorarios': gestorServicoHorarios,
        'servicos': servicos,
      };
}

class UsuarioUpsertWithoutReservasInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUpsertWithoutReservasInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.UsuarioUpdateWithoutReservasInput,
      _i2.UsuarioUncheckedUpdateWithoutReservasInput> update;

  final _i1.PrismaUnion<_i2.UsuarioCreateWithoutReservasInput,
      _i2.UsuarioUncheckedCreateWithoutReservasInput> create;

  final _i2.UsuarioWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class UsuarioUpdateToOneWithWhereWithoutReservasInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUpdateToOneWithWhereWithoutReservasInput({
    this.where,
    required this.data,
  });

  final _i2.UsuarioWhereInput? where;

  final _i1.PrismaUnion<_i2.UsuarioUpdateWithoutReservasInput,
      _i2.UsuarioUncheckedUpdateWithoutReservasInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class UsuarioUpdateOneRequiredWithoutReservasNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUpdateOneRequiredWithoutReservasNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.UsuarioCreateWithoutReservasInput,
      _i2.UsuarioUncheckedCreateWithoutReservasInput>? create;

  final _i2.UsuarioCreateOrConnectWithoutReservasInput? connectOrCreate;

  final _i2.UsuarioUpsertWithoutReservasInput? upsert;

  final _i2.UsuarioWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.UsuarioUpdateToOneWithWhereWithoutReservasInput,
      _i1.PrismaUnion<_i2.UsuarioUpdateWithoutReservasInput,
          _i2.UsuarioUncheckedUpdateWithoutReservasInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class ReservaUpdateWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaUpdateWithoutEspacoInput({
    this.id,
    this.descricao,
    this.status,
    this.solicitante,
    this.periodo,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      descricao;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? status;

  final _i2.UsuarioUpdateOneRequiredWithoutReservasNestedInput? solicitante;

  final _i2.HorarioUpdateManyWithoutReservaSolicitadaNestedInput? periodo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'descricao': descricao,
        'status': status,
        'solicitante': solicitante,
        'periodo': periodo,
      };
}

class ReservaUpsertWithWhereUniqueWithoutEspacoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaUpsertWithWhereUniqueWithoutEspacoInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.ReservaWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ReservaUpdateWithoutEspacoInput,
      _i2.ReservaUncheckedUpdateWithoutEspacoInput> update;

  final _i1.PrismaUnion<_i2.ReservaCreateWithoutEspacoInput,
      _i2.ReservaUncheckedCreateWithoutEspacoInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class ReservaUpdateManyWithoutEspacoNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaUpdateManyWithoutEspacoNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.ReservaCreateWithoutEspacoInput,
      _i1.PrismaUnion<
          Iterable<_i2.ReservaCreateWithoutEspacoInput>,
          _i1.PrismaUnion<_i2.ReservaUncheckedCreateWithoutEspacoInput,
              Iterable<_i2.ReservaUncheckedCreateWithoutEspacoInput>>>>? create;

  final _i1.PrismaUnion<_i2.ReservaCreateOrConnectWithoutEspacoInput,
      Iterable<_i2.ReservaCreateOrConnectWithoutEspacoInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.ReservaUpsertWithWhereUniqueWithoutEspacoInput,
      Iterable<_i2.ReservaUpsertWithWhereUniqueWithoutEspacoInput>>? upsert;

  final _i2.ReservaCreateManyEspacoInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ReservaWhereUniqueInput,
      Iterable<_i2.ReservaWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.ReservaWhereUniqueInput,
      Iterable<_i2.ReservaWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.ReservaWhereUniqueInput,
      Iterable<_i2.ReservaWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.ReservaWhereUniqueInput,
      Iterable<_i2.ReservaWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.ReservaUpdateWithWhereUniqueWithoutEspacoInput,
      Iterable<_i2.ReservaUpdateWithWhereUniqueWithoutEspacoInput>>? update;

  final _i1.PrismaUnion<_i2.ReservaUpdateManyWithWhereWithoutEspacoInput,
      Iterable<_i2.ReservaUpdateManyWithWhereWithoutEspacoInput>>? updateMany;

  final _i1.PrismaUnion<_i2.ReservaScalarWhereInput,
      Iterable<_i2.ReservaScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class EspacoUpdateWithoutTurnosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUpdateWithoutTurnosInput({
    this.id,
    this.capacidadePessoas,
    this.acessibilidade,
    this.localizacao,
    this.equipamentoDisponivel,
    this.reservas,
    this.servicos,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      capacidadePessoas;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>?
      acessibilidade;

  final _i2.LocalizacaoUpdateOneRequiredWithoutEspacoNestedInput? localizacao;

  final _i2.EquipamentoUpdateManyWithoutEspacoNestedInput?
      equipamentoDisponivel;

  final _i2.ReservaUpdateManyWithoutEspacoNestedInput? reservas;

  final _i2.ServicoUpdateManyWithoutEspacoNestedInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        'localizacao': localizacao,
        'equipamentoDisponivel': equipamentoDisponivel,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class EspacoUncheckedUpdateWithoutTurnosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUncheckedUpdateWithoutTurnosInput({
    this.id,
    this.localizacaoId,
    this.capacidadePessoas,
    this.acessibilidade,
    this.equipamentoDisponivel,
    this.reservas,
    this.servicos,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      localizacaoId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      capacidadePessoas;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>?
      acessibilidade;

  final _i2.EquipamentoUncheckedUpdateManyWithoutEspacoNestedInput?
      equipamentoDisponivel;

  final _i2.ReservaUncheckedUpdateManyWithoutEspacoNestedInput? reservas;

  final _i2.ServicoUncheckedUpdateManyWithoutEspacoNestedInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'localizacaoId': localizacaoId,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        'equipamentoDisponivel': equipamentoDisponivel,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class EspacoUpsertWithoutTurnosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUpsertWithoutTurnosInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.EspacoUpdateWithoutTurnosInput,
      _i2.EspacoUncheckedUpdateWithoutTurnosInput> update;

  final _i1.PrismaUnion<_i2.EspacoCreateWithoutTurnosInput,
      _i2.EspacoUncheckedCreateWithoutTurnosInput> create;

  final _i2.EspacoWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class EspacoUpdateToOneWithWhereWithoutTurnosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUpdateToOneWithWhereWithoutTurnosInput({
    this.where,
    required this.data,
  });

  final _i2.EspacoWhereInput? where;

  final _i1.PrismaUnion<_i2.EspacoUpdateWithoutTurnosInput,
      _i2.EspacoUncheckedUpdateWithoutTurnosInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class EspacoUpdateOneRequiredWithoutTurnosNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUpdateOneRequiredWithoutTurnosNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.EspacoCreateWithoutTurnosInput,
      _i2.EspacoUncheckedCreateWithoutTurnosInput>? create;

  final _i2.EspacoCreateOrConnectWithoutTurnosInput? connectOrCreate;

  final _i2.EspacoUpsertWithoutTurnosInput? upsert;

  final _i2.EspacoWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.EspacoUpdateToOneWithWhereWithoutTurnosInput,
      _i1.PrismaUnion<_i2.EspacoUpdateWithoutTurnosInput,
          _i2.EspacoUncheckedUpdateWithoutTurnosInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class TurnoUpdateWithoutAgendaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoUpdateWithoutAgendaInput({
    this.id,
    this.nome,
    this.espaco,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  final _i2.EspacoUpdateOneRequiredWithoutTurnosNestedInput? espaco;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'espaco': espaco,
      };
}

class TurnoUncheckedUpdateWithoutAgendaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoUncheckedUpdateWithoutAgendaInput({
    this.id,
    this.nome,
    this.espacoId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? espacoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'espacoId': espacoId,
      };
}

class TurnoUpsertWithoutAgendaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoUpsertWithoutAgendaInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.TurnoUpdateWithoutAgendaInput,
      _i2.TurnoUncheckedUpdateWithoutAgendaInput> update;

  final _i1.PrismaUnion<_i2.TurnoCreateWithoutAgendaInput,
      _i2.TurnoUncheckedCreateWithoutAgendaInput> create;

  final _i2.TurnoWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class TurnoUpdateToOneWithWhereWithoutAgendaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoUpdateToOneWithWhereWithoutAgendaInput({
    this.where,
    required this.data,
  });

  final _i2.TurnoWhereInput? where;

  final _i1.PrismaUnion<_i2.TurnoUpdateWithoutAgendaInput,
      _i2.TurnoUncheckedUpdateWithoutAgendaInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class TurnoUpdateOneRequiredWithoutAgendaNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoUpdateOneRequiredWithoutAgendaNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.TurnoCreateWithoutAgendaInput,
      _i2.TurnoUncheckedCreateWithoutAgendaInput>? create;

  final _i2.TurnoCreateOrConnectWithoutAgendaInput? connectOrCreate;

  final _i2.TurnoUpsertWithoutAgendaInput? upsert;

  final _i2.TurnoWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.TurnoUpdateToOneWithWhereWithoutAgendaInput,
      _i1.PrismaUnion<_i2.TurnoUpdateWithoutAgendaInput,
          _i2.TurnoUncheckedUpdateWithoutAgendaInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class AgendaUpdateWithoutHorariosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaUpdateWithoutHorariosInput({
    this.id,
    this.observacao,
    this.turno,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? observacao;

  final _i2.TurnoUpdateOneRequiredWithoutAgendaNestedInput? turno;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
        'turno': turno,
      };
}

class AgendaUncheckedUpdateWithoutHorariosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaUncheckedUpdateWithoutHorariosInput({
    this.id,
    this.observacao,
    this.turnoId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? observacao;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? turnoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
        'turnoId': turnoId,
      };
}

class AgendaUpsertWithoutHorariosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaUpsertWithoutHorariosInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.AgendaUpdateWithoutHorariosInput,
      _i2.AgendaUncheckedUpdateWithoutHorariosInput> update;

  final _i1.PrismaUnion<_i2.AgendaCreateWithoutHorariosInput,
      _i2.AgendaUncheckedCreateWithoutHorariosInput> create;

  final _i2.AgendaWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class AgendaUpdateToOneWithWhereWithoutHorariosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaUpdateToOneWithWhereWithoutHorariosInput({
    this.where,
    required this.data,
  });

  final _i2.AgendaWhereInput? where;

  final _i1.PrismaUnion<_i2.AgendaUpdateWithoutHorariosInput,
      _i2.AgendaUncheckedUpdateWithoutHorariosInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class AgendaUpdateOneRequiredWithoutHorariosNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaUpdateOneRequiredWithoutHorariosNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.AgendaCreateWithoutHorariosInput,
      _i2.AgendaUncheckedCreateWithoutHorariosInput>? create;

  final _i2.AgendaCreateOrConnectWithoutHorariosInput? connectOrCreate;

  final _i2.AgendaUpsertWithoutHorariosInput? upsert;

  final _i2.AgendaWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.AgendaUpdateToOneWithWhereWithoutHorariosInput,
      _i1.PrismaUnion<_i2.AgendaUpdateWithoutHorariosInput,
          _i2.AgendaUncheckedUpdateWithoutHorariosInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class HorarioUpdateWithoutGestorReservaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUpdateWithoutGestorReservaInput({
    this.id,
    this.inicio,
    this.fim,
    this.isReserved,
    this.agenda,
    this.gestorServico,
    this.reservaSolicitada,
    this.servicoSolicitado,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? inicio;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? fim;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isReserved;

  final _i2.AgendaUpdateOneRequiredWithoutHorariosNestedInput? agenda;

  final _i2.UsuarioUpdateOneWithoutGestorServicoHorariosNestedInput?
      gestorServico;

  final _i2.ReservaUpdateOneRequiredWithoutPeriodoNestedInput?
      reservaSolicitada;

  final _i2.ServicoUpdateOneRequiredWithoutPeriodoNestedInput?
      servicoSolicitado;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'isReserved': isReserved,
        'agenda': agenda,
        'gestorServico': gestorServico,
        'reservaSolicitada': reservaSolicitada,
        'servicoSolicitado': servicoSolicitado,
      };
}

class HorarioUpsertWithWhereUniqueWithoutGestorReservaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUpsertWithWhereUniqueWithoutGestorReservaInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.HorarioWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.HorarioUpdateWithoutGestorReservaInput,
      _i2.HorarioUncheckedUpdateWithoutGestorReservaInput> update;

  final _i1.PrismaUnion<_i2.HorarioCreateWithoutGestorReservaInput,
      _i2.HorarioUncheckedCreateWithoutGestorReservaInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class HorarioUpdateManyWithoutGestorReservaNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUpdateManyWithoutGestorReservaNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.HorarioCreateWithoutGestorReservaInput,
          _i1.PrismaUnion<
              Iterable<_i2.HorarioCreateWithoutGestorReservaInput>,
              _i1.PrismaUnion<
                  _i2.HorarioUncheckedCreateWithoutGestorReservaInput,
                  Iterable<
                      _i2.HorarioUncheckedCreateWithoutGestorReservaInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.HorarioCreateOrConnectWithoutGestorReservaInput,
          Iterable<_i2.HorarioCreateOrConnectWithoutGestorReservaInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<
          _i2.HorarioUpsertWithWhereUniqueWithoutGestorReservaInput,
          Iterable<_i2.HorarioUpsertWithWhereUniqueWithoutGestorReservaInput>>?
      upsert;

  final _i2.HorarioCreateManyGestorReservaInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<
          _i2.HorarioUpdateWithWhereUniqueWithoutGestorReservaInput,
          Iterable<_i2.HorarioUpdateWithWhereUniqueWithoutGestorReservaInput>>?
      update;

  final _i1.PrismaUnion<_i2.HorarioUpdateManyWithWhereWithoutGestorReservaInput,
          Iterable<_i2.HorarioUpdateManyWithWhereWithoutGestorReservaInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.HorarioScalarWhereInput,
      Iterable<_i2.HorarioScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class UsuarioUpdateWithoutDepartamentoSetorInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUpdateWithoutDepartamentoSetorInput({
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.sigla,
    this.isDepartamento,
    this.departamento,
    this.gestorReservaHorarios,
    this.gestorServicoHorarios,
    this.reservas,
    this.servicos,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? telefone;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? photoUrl;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      tipoUsuario;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? sigla;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>?
      isDepartamento;

  final _i2.UsuarioUpdateOneWithoutDepartamentoSetorNestedInput? departamento;

  final _i2.HorarioUpdateManyWithoutGestorReservaNestedInput?
      gestorReservaHorarios;

  final _i2.HorarioUpdateManyWithoutGestorServicoNestedInput?
      gestorServicoHorarios;

  final _i2.ReservaUpdateManyWithoutSolicitanteNestedInput? reservas;

  final _i2.ServicoUpdateManyWithoutSolicitanteNestedInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'departamento': departamento,
        'gestorReservaHorarios': gestorReservaHorarios,
        'gestorServicoHorarios': gestorServicoHorarios,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class UsuarioUncheckedUpdateWithoutDepartamentoSetorInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUncheckedUpdateWithoutDepartamentoSetorInput({
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.departamentoId,
    this.sigla,
    this.isDepartamento,
    this.gestorReservaHorarios,
    this.gestorServicoHorarios,
    this.reservas,
    this.servicos,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? telefone;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? photoUrl;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      tipoUsuario;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? departamentoId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? sigla;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>?
      isDepartamento;

  final _i2.HorarioUncheckedUpdateManyWithoutGestorReservaNestedInput?
      gestorReservaHorarios;

  final _i2.HorarioUncheckedUpdateManyWithoutGestorServicoNestedInput?
      gestorServicoHorarios;

  final _i2.ReservaUncheckedUpdateManyWithoutSolicitanteNestedInput? reservas;

  final _i2.ServicoUncheckedUpdateManyWithoutSolicitanteNestedInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'departamentoId': departamentoId,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'gestorReservaHorarios': gestorReservaHorarios,
        'gestorServicoHorarios': gestorServicoHorarios,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class UsuarioUpsertWithoutDepartamentoSetorInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUpsertWithoutDepartamentoSetorInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.UsuarioUpdateWithoutDepartamentoSetorInput,
      _i2.UsuarioUncheckedUpdateWithoutDepartamentoSetorInput> update;

  final _i1.PrismaUnion<_i2.UsuarioCreateWithoutDepartamentoSetorInput,
      _i2.UsuarioUncheckedCreateWithoutDepartamentoSetorInput> create;

  final _i2.UsuarioWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class UsuarioUpdateToOneWithWhereWithoutDepartamentoSetorInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUpdateToOneWithWhereWithoutDepartamentoSetorInput({
    this.where,
    required this.data,
  });

  final _i2.UsuarioWhereInput? where;

  final _i1.PrismaUnion<_i2.UsuarioUpdateWithoutDepartamentoSetorInput,
      _i2.UsuarioUncheckedUpdateWithoutDepartamentoSetorInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class UsuarioUpdateOneWithoutDepartamentoSetorNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUpdateOneWithoutDepartamentoSetorNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.UsuarioCreateWithoutDepartamentoSetorInput,
      _i2.UsuarioUncheckedCreateWithoutDepartamentoSetorInput>? create;

  final _i2.UsuarioCreateOrConnectWithoutDepartamentoSetorInput?
      connectOrCreate;

  final _i2.UsuarioUpsertWithoutDepartamentoSetorInput? upsert;

  final _i1.PrismaUnion<bool, _i2.UsuarioWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.UsuarioWhereInput>? delete;

  final _i2.UsuarioWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.UsuarioUpdateToOneWithWhereWithoutDepartamentoSetorInput,
      _i1.PrismaUnion<_i2.UsuarioUpdateWithoutDepartamentoSetorInput,
          _i2.UsuarioUncheckedUpdateWithoutDepartamentoSetorInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class UsuarioUpdateWithoutGestorServicoHorariosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUpdateWithoutGestorServicoHorariosInput({
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.sigla,
    this.isDepartamento,
    this.departamento,
    this.departamentoSetor,
    this.gestorReservaHorarios,
    this.reservas,
    this.servicos,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? telefone;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? photoUrl;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      tipoUsuario;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? sigla;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>?
      isDepartamento;

  final _i2.UsuarioUpdateOneWithoutDepartamentoSetorNestedInput? departamento;

  final _i2.UsuarioUpdateOneWithoutDepartamentoNestedInput? departamentoSetor;

  final _i2.HorarioUpdateManyWithoutGestorReservaNestedInput?
      gestorReservaHorarios;

  final _i2.ReservaUpdateManyWithoutSolicitanteNestedInput? reservas;

  final _i2.ServicoUpdateManyWithoutSolicitanteNestedInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'departamento': departamento,
        'departamentoSetor': departamentoSetor,
        'gestorReservaHorarios': gestorReservaHorarios,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class UsuarioUncheckedUpdateWithoutGestorServicoHorariosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUncheckedUpdateWithoutGestorServicoHorariosInput({
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.departamentoId,
    this.sigla,
    this.isDepartamento,
    this.departamentoSetor,
    this.gestorReservaHorarios,
    this.reservas,
    this.servicos,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? telefone;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? photoUrl;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      tipoUsuario;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? departamentoId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? sigla;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>?
      isDepartamento;

  final _i2.UsuarioUncheckedUpdateOneWithoutDepartamentoNestedInput?
      departamentoSetor;

  final _i2.HorarioUncheckedUpdateManyWithoutGestorReservaNestedInput?
      gestorReservaHorarios;

  final _i2.ReservaUncheckedUpdateManyWithoutSolicitanteNestedInput? reservas;

  final _i2.ServicoUncheckedUpdateManyWithoutSolicitanteNestedInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'departamentoId': departamentoId,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'departamentoSetor': departamentoSetor,
        'gestorReservaHorarios': gestorReservaHorarios,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class UsuarioUpsertWithoutGestorServicoHorariosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUpsertWithoutGestorServicoHorariosInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.UsuarioUpdateWithoutGestorServicoHorariosInput,
      _i2.UsuarioUncheckedUpdateWithoutGestorServicoHorariosInput> update;

  final _i1.PrismaUnion<_i2.UsuarioCreateWithoutGestorServicoHorariosInput,
      _i2.UsuarioUncheckedCreateWithoutGestorServicoHorariosInput> create;

  final _i2.UsuarioWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class UsuarioUpdateToOneWithWhereWithoutGestorServicoHorariosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUpdateToOneWithWhereWithoutGestorServicoHorariosInput({
    this.where,
    required this.data,
  });

  final _i2.UsuarioWhereInput? where;

  final _i1.PrismaUnion<_i2.UsuarioUpdateWithoutGestorServicoHorariosInput,
      _i2.UsuarioUncheckedUpdateWithoutGestorServicoHorariosInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class UsuarioUpdateOneWithoutGestorServicoHorariosNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUpdateOneWithoutGestorServicoHorariosNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.UsuarioCreateWithoutGestorServicoHorariosInput,
      _i2.UsuarioUncheckedCreateWithoutGestorServicoHorariosInput>? create;

  final _i2.UsuarioCreateOrConnectWithoutGestorServicoHorariosInput?
      connectOrCreate;

  final _i2.UsuarioUpsertWithoutGestorServicoHorariosInput? upsert;

  final _i1.PrismaUnion<bool, _i2.UsuarioWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.UsuarioWhereInput>? delete;

  final _i2.UsuarioWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.UsuarioUpdateToOneWithWhereWithoutGestorServicoHorariosInput,
      _i1.PrismaUnion<_i2.UsuarioUpdateWithoutGestorServicoHorariosInput,
          _i2.UsuarioUncheckedUpdateWithoutGestorServicoHorariosInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class HorarioUpdateWithoutAgendaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUpdateWithoutAgendaInput({
    this.id,
    this.inicio,
    this.fim,
    this.isReserved,
    this.gestorServico,
    this.gestorReserva,
    this.reservaSolicitada,
    this.servicoSolicitado,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? inicio;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? fim;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isReserved;

  final _i2.UsuarioUpdateOneWithoutGestorServicoHorariosNestedInput?
      gestorServico;

  final _i2.UsuarioUpdateOneWithoutGestorReservaHorariosNestedInput?
      gestorReserva;

  final _i2.ReservaUpdateOneRequiredWithoutPeriodoNestedInput?
      reservaSolicitada;

  final _i2.ServicoUpdateOneRequiredWithoutPeriodoNestedInput?
      servicoSolicitado;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'isReserved': isReserved,
        'gestorServico': gestorServico,
        'gestorReserva': gestorReserva,
        'reservaSolicitada': reservaSolicitada,
        'servicoSolicitado': servicoSolicitado,
      };
}

class HorarioUpsertWithWhereUniqueWithoutAgendaInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUpsertWithWhereUniqueWithoutAgendaInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.HorarioWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.HorarioUpdateWithoutAgendaInput,
      _i2.HorarioUncheckedUpdateWithoutAgendaInput> update;

  final _i1.PrismaUnion<_i2.HorarioCreateWithoutAgendaInput,
      _i2.HorarioUncheckedCreateWithoutAgendaInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class HorarioUpdateManyWithoutAgendaNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUpdateManyWithoutAgendaNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.HorarioCreateWithoutAgendaInput,
      _i1.PrismaUnion<
          Iterable<_i2.HorarioCreateWithoutAgendaInput>,
          _i1.PrismaUnion<_i2.HorarioUncheckedCreateWithoutAgendaInput,
              Iterable<_i2.HorarioUncheckedCreateWithoutAgendaInput>>>>? create;

  final _i1.PrismaUnion<_i2.HorarioCreateOrConnectWithoutAgendaInput,
      Iterable<_i2.HorarioCreateOrConnectWithoutAgendaInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.HorarioUpsertWithWhereUniqueWithoutAgendaInput,
      Iterable<_i2.HorarioUpsertWithWhereUniqueWithoutAgendaInput>>? upsert;

  final _i2.HorarioCreateManyAgendaInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.HorarioWhereUniqueInput,
      Iterable<_i2.HorarioWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.HorarioUpdateWithWhereUniqueWithoutAgendaInput,
      Iterable<_i2.HorarioUpdateWithWhereUniqueWithoutAgendaInput>>? update;

  final _i1.PrismaUnion<_i2.HorarioUpdateManyWithWhereWithoutAgendaInput,
      Iterable<_i2.HorarioUpdateManyWithWhereWithoutAgendaInput>>? updateMany;

  final _i1.PrismaUnion<_i2.HorarioScalarWhereInput,
      Iterable<_i2.HorarioScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class AgendaUpdateWithoutTurnoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaUpdateWithoutTurnoInput({
    this.id,
    this.observacao,
    this.horarios,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? observacao;

  final _i2.HorarioUpdateManyWithoutAgendaNestedInput? horarios;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
        'horarios': horarios,
      };
}

class AgendaUpsertWithWhereUniqueWithoutTurnoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaUpsertWithWhereUniqueWithoutTurnoInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.AgendaWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.AgendaUpdateWithoutTurnoInput,
      _i2.AgendaUncheckedUpdateWithoutTurnoInput> update;

  final _i1.PrismaUnion<_i2.AgendaCreateWithoutTurnoInput,
      _i2.AgendaUncheckedCreateWithoutTurnoInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class AgendaUpdateManyWithoutTurnoNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaUpdateManyWithoutTurnoNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.AgendaCreateWithoutTurnoInput,
      _i1.PrismaUnion<
          Iterable<_i2.AgendaCreateWithoutTurnoInput>,
          _i1.PrismaUnion<_i2.AgendaUncheckedCreateWithoutTurnoInput,
              Iterable<_i2.AgendaUncheckedCreateWithoutTurnoInput>>>>? create;

  final _i1.PrismaUnion<_i2.AgendaCreateOrConnectWithoutTurnoInput,
      Iterable<_i2.AgendaCreateOrConnectWithoutTurnoInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.AgendaUpsertWithWhereUniqueWithoutTurnoInput,
      Iterable<_i2.AgendaUpsertWithWhereUniqueWithoutTurnoInput>>? upsert;

  final _i2.AgendaCreateManyTurnoInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.AgendaWhereUniqueInput,
      Iterable<_i2.AgendaWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.AgendaWhereUniqueInput,
      Iterable<_i2.AgendaWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.AgendaWhereUniqueInput,
      Iterable<_i2.AgendaWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.AgendaWhereUniqueInput,
      Iterable<_i2.AgendaWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.AgendaUpdateWithWhereUniqueWithoutTurnoInput,
      Iterable<_i2.AgendaUpdateWithWhereUniqueWithoutTurnoInput>>? update;

  final _i1.PrismaUnion<_i2.AgendaUpdateManyWithWhereWithoutTurnoInput,
      Iterable<_i2.AgendaUpdateManyWithWhereWithoutTurnoInput>>? updateMany;

  final _i1.PrismaUnion<_i2.AgendaScalarWhereInput,
      Iterable<_i2.AgendaScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class TurnoUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoUpdateInput({
    this.id,
    this.nome,
    this.agenda,
    this.espaco,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  final _i2.AgendaUpdateManyWithoutTurnoNestedInput? agenda;

  final _i2.EspacoUpdateOneRequiredWithoutTurnosNestedInput? espaco;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'agenda': agenda,
        'espaco': espaco,
      };
}

class TurnoUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoUncheckedUpdateInput({
    this.id,
    this.nome,
    this.espacoId,
    this.agenda,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? espacoId;

  final _i2.AgendaUncheckedUpdateManyWithoutTurnoNestedInput? agenda;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'espacoId': espacoId,
        'agenda': agenda,
      };
}

class TurnoUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoUncheckedUpdateManyInput({
    this.id,
    this.nome,
    this.espacoId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? espacoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'espacoId': espacoId,
      };
}

class TurnoCountAggregateOutputType {
  const TurnoCountAggregateOutputType({
    this.id,
    this.nome,
    this.espacoId,
    this.$all,
  });

  factory TurnoCountAggregateOutputType.fromJson(Map json) =>
      TurnoCountAggregateOutputType(
        id: json['id'],
        nome: json['nome'],
        espacoId: json['espacoId'],
        $all: json['_all'],
      );

  final int? id;

  final int? nome;

  final int? espacoId;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'espacoId': espacoId,
        '_all': $all,
      };
}

class TurnoMinAggregateOutputType {
  const TurnoMinAggregateOutputType({
    this.id,
    this.nome,
    this.espacoId,
  });

  factory TurnoMinAggregateOutputType.fromJson(Map json) =>
      TurnoMinAggregateOutputType(
        id: json['id'],
        nome: json['nome'],
        espacoId: json['espacoId'],
      );

  final String? id;

  final String? nome;

  final String? espacoId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'espacoId': espacoId,
      };
}

class TurnoMaxAggregateOutputType {
  const TurnoMaxAggregateOutputType({
    this.id,
    this.nome,
    this.espacoId,
  });

  factory TurnoMaxAggregateOutputType.fromJson(Map json) =>
      TurnoMaxAggregateOutputType(
        id: json['id'],
        nome: json['nome'],
        espacoId: json['espacoId'],
      );

  final String? id;

  final String? nome;

  final String? espacoId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'espacoId': espacoId,
      };
}

class TurnoGroupByOutputType {
  const TurnoGroupByOutputType({
    this.id,
    this.nome,
    this.espacoId,
    this.$count,
    this.$min,
    this.$max,
  });

  factory TurnoGroupByOutputType.fromJson(Map json) => TurnoGroupByOutputType(
        id: json['id'],
        nome: json['nome'],
        espacoId: json['espacoId'],
        $count: json['_count'] is Map
            ? _i2.TurnoCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.TurnoMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.TurnoMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? nome;

  final String? espacoId;

  final _i2.TurnoCountAggregateOutputType? $count;

  final _i2.TurnoMinAggregateOutputType? $min;

  final _i2.TurnoMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'espacoId': espacoId,
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class TurnoCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoCountOrderByAggregateInput({
    this.id,
    this.nome,
    this.espacoId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? nome;

  final _i2.SortOrder? espacoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'espacoId': espacoId,
      };
}

class TurnoMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoMaxOrderByAggregateInput({
    this.id,
    this.nome,
    this.espacoId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? nome;

  final _i2.SortOrder? espacoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'espacoId': espacoId,
      };
}

class TurnoMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoMinOrderByAggregateInput({
    this.id,
    this.nome,
    this.espacoId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? nome;

  final _i2.SortOrder? espacoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'espacoId': espacoId,
      };
}

class TurnoOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoOrderByWithAggregationInput({
    this.id,
    this.nome,
    this.espacoId,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? nome;

  final _i2.SortOrder? espacoId;

  final _i2.TurnoCountOrderByAggregateInput? $count;

  final _i2.TurnoMaxOrderByAggregateInput? $max;

  final _i2.TurnoMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'espacoId': espacoId,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class NestedStringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class StringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class TurnoScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.nome,
    this.espacoId,
  });

  final _i1.PrismaUnion<_i2.TurnoScalarWhereWithAggregatesInput,
      Iterable<_i2.TurnoScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.TurnoScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.TurnoScalarWhereWithAggregatesInput,
      Iterable<_i2.TurnoScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? nome;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? espacoId;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'nome': nome,
        'espacoId': espacoId,
      };
}

class TurnoCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoCountAggregateOutputTypeSelect({
    this.id,
    this.nome,
    this.espacoId,
    this.$all,
  });

  final bool? id;

  final bool? nome;

  final bool? espacoId;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'espacoId': espacoId,
        '_all': $all,
      };
}

class TurnoGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoGroupByOutputTypeCountArgs({this.select});

  final _i2.TurnoCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TurnoMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoMinAggregateOutputTypeSelect({
    this.id,
    this.nome,
    this.espacoId,
  });

  final bool? id;

  final bool? nome;

  final bool? espacoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'espacoId': espacoId,
      };
}

class TurnoGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoGroupByOutputTypeMinArgs({this.select});

  final _i2.TurnoMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TurnoMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoMaxAggregateOutputTypeSelect({
    this.id,
    this.nome,
    this.espacoId,
  });

  final bool? id;

  final bool? nome;

  final bool? espacoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'espacoId': espacoId,
      };
}

class TurnoGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoGroupByOutputTypeMaxArgs({this.select});

  final _i2.TurnoMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TurnoGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TurnoGroupByOutputTypeSelect({
    this.id,
    this.nome,
    this.espacoId,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? nome;

  final bool? espacoId;

  final _i1.PrismaUnion<bool, _i2.TurnoGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.TurnoGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.TurnoGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'espacoId': espacoId,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateTurno {
  const AggregateTurno({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateTurno.fromJson(Map json) => AggregateTurno(
        $count: json['_count'] is Map
            ? _i2.TurnoCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.TurnoMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.TurnoMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.TurnoCountAggregateOutputType? $count;

  final _i2.TurnoMinAggregateOutputType? $min;

  final _i2.TurnoMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateTurnoCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTurnoCountArgs({this.select});

  final _i2.TurnoCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTurnoMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTurnoMinArgs({this.select});

  final _i2.TurnoMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTurnoMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTurnoMaxArgs({this.select});

  final _i2.TurnoMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTurnoSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTurnoSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateTurnoCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateTurnoMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateTurnoMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AgendaCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaCreateInput({
    this.id,
    this.observacao,
    required this.turno,
    this.horarios,
  });

  final String? id;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? observacao;

  final _i2.TurnoCreateNestedOneWithoutAgendaInput turno;

  final _i2.HorarioCreateNestedManyWithoutAgendaInput? horarios;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
        'turno': turno,
        'horarios': horarios,
      };
}

class AgendaUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaUncheckedCreateInput({
    this.id,
    this.observacao,
    required this.turnoId,
    this.horarios,
  });

  final String? id;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? observacao;

  final String turnoId;

  final _i2.HorarioUncheckedCreateNestedManyWithoutAgendaInput? horarios;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
        'turnoId': turnoId,
        'horarios': horarios,
      };
}

class AgendaCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaCreateManyInput({
    this.id,
    this.observacao,
    required this.turnoId,
  });

  final String? id;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? observacao;

  final String turnoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
        'turnoId': turnoId,
      };
}

class AgendaUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaUpdateInput({
    this.id,
    this.observacao,
    this.turno,
    this.horarios,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? observacao;

  final _i2.TurnoUpdateOneRequiredWithoutAgendaNestedInput? turno;

  final _i2.HorarioUpdateManyWithoutAgendaNestedInput? horarios;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
        'turno': turno,
        'horarios': horarios,
      };
}

class AgendaUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaUncheckedUpdateInput({
    this.id,
    this.observacao,
    this.turnoId,
    this.horarios,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? observacao;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? turnoId;

  final _i2.HorarioUncheckedUpdateManyWithoutAgendaNestedInput? horarios;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
        'turnoId': turnoId,
        'horarios': horarios,
      };
}

class AgendaUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaUncheckedUpdateManyInput({
    this.id,
    this.observacao,
    this.turnoId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? observacao;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? turnoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
        'turnoId': turnoId,
      };
}

class AgendaCountAggregateOutputType {
  const AgendaCountAggregateOutputType({
    this.id,
    this.observacao,
    this.turnoId,
    this.$all,
  });

  factory AgendaCountAggregateOutputType.fromJson(Map json) =>
      AgendaCountAggregateOutputType(
        id: json['id'],
        observacao: json['observacao'],
        turnoId: json['turnoId'],
        $all: json['_all'],
      );

  final int? id;

  final int? observacao;

  final int? turnoId;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
        'turnoId': turnoId,
        '_all': $all,
      };
}

class AgendaMinAggregateOutputType {
  const AgendaMinAggregateOutputType({
    this.id,
    this.observacao,
    this.turnoId,
  });

  factory AgendaMinAggregateOutputType.fromJson(Map json) =>
      AgendaMinAggregateOutputType(
        id: json['id'],
        observacao: json['observacao'],
        turnoId: json['turnoId'],
      );

  final String? id;

  final String? observacao;

  final String? turnoId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
        'turnoId': turnoId,
      };
}

class AgendaMaxAggregateOutputType {
  const AgendaMaxAggregateOutputType({
    this.id,
    this.observacao,
    this.turnoId,
  });

  factory AgendaMaxAggregateOutputType.fromJson(Map json) =>
      AgendaMaxAggregateOutputType(
        id: json['id'],
        observacao: json['observacao'],
        turnoId: json['turnoId'],
      );

  final String? id;

  final String? observacao;

  final String? turnoId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
        'turnoId': turnoId,
      };
}

class AgendaGroupByOutputType {
  const AgendaGroupByOutputType({
    this.id,
    this.observacao,
    this.turnoId,
    this.$count,
    this.$min,
    this.$max,
  });

  factory AgendaGroupByOutputType.fromJson(Map json) => AgendaGroupByOutputType(
        id: json['id'],
        observacao: json['observacao'],
        turnoId: json['turnoId'],
        $count: json['_count'] is Map
            ? _i2.AgendaCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.AgendaMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.AgendaMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? observacao;

  final String? turnoId;

  final _i2.AgendaCountAggregateOutputType? $count;

  final _i2.AgendaMinAggregateOutputType? $min;

  final _i2.AgendaMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
        'turnoId': turnoId,
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AgendaCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaCountOrderByAggregateInput({
    this.id,
    this.observacao,
    this.turnoId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? observacao;

  final _i2.SortOrder? turnoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
        'turnoId': turnoId,
      };
}

class AgendaMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaMaxOrderByAggregateInput({
    this.id,
    this.observacao,
    this.turnoId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? observacao;

  final _i2.SortOrder? turnoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
        'turnoId': turnoId,
      };
}

class AgendaMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaMinOrderByAggregateInput({
    this.id,
    this.observacao,
    this.turnoId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? observacao;

  final _i2.SortOrder? turnoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
        'turnoId': turnoId,
      };
}

class AgendaOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaOrderByWithAggregationInput({
    this.id,
    this.observacao,
    this.turnoId,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? observacao;

  final _i2.SortOrder? turnoId;

  final _i2.AgendaCountOrderByAggregateInput? $count;

  final _i2.AgendaMaxOrderByAggregateInput? $max;

  final _i2.AgendaMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
        'turnoId': turnoId,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class NestedIntNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1
      .PrismaUnion<int, _i1.PrismaUnion<_i1.Reference<int>, _i1.PrismaNull>>?
      equals;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int,
      _i1.PrismaUnion<_i2.NestedIntNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedStringNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NestedStringNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedStringNullableFilter? $min;

  final _i2.NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class StringNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NestedStringNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedStringNullableFilter? $min;

  final _i2.NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AgendaScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.observacao,
    this.turnoId,
  });

  final _i1.PrismaUnion<_i2.AgendaScalarWhereWithAggregatesInput,
      Iterable<_i2.AgendaScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.AgendaScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.AgendaScalarWhereWithAggregatesInput,
      Iterable<_i2.AgendaScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? observacao;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? turnoId;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'observacao': observacao,
        'turnoId': turnoId,
      };
}

class AgendaCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaCountAggregateOutputTypeSelect({
    this.id,
    this.observacao,
    this.turnoId,
    this.$all,
  });

  final bool? id;

  final bool? observacao;

  final bool? turnoId;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
        'turnoId': turnoId,
        '_all': $all,
      };
}

class AgendaGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaGroupByOutputTypeCountArgs({this.select});

  final _i2.AgendaCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AgendaMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaMinAggregateOutputTypeSelect({
    this.id,
    this.observacao,
    this.turnoId,
  });

  final bool? id;

  final bool? observacao;

  final bool? turnoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
        'turnoId': turnoId,
      };
}

class AgendaGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaGroupByOutputTypeMinArgs({this.select});

  final _i2.AgendaMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AgendaMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaMaxAggregateOutputTypeSelect({
    this.id,
    this.observacao,
    this.turnoId,
  });

  final bool? id;

  final bool? observacao;

  final bool? turnoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
        'turnoId': turnoId,
      };
}

class AgendaGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaGroupByOutputTypeMaxArgs({this.select});

  final _i2.AgendaMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AgendaGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AgendaGroupByOutputTypeSelect({
    this.id,
    this.observacao,
    this.turnoId,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? observacao;

  final bool? turnoId;

  final _i1.PrismaUnion<bool, _i2.AgendaGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AgendaGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AgendaGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
        'turnoId': turnoId,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateAgenda {
  const AggregateAgenda({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateAgenda.fromJson(Map json) => AggregateAgenda(
        $count: json['_count'] is Map
            ? _i2.AgendaCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.AgendaMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.AgendaMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.AgendaCountAggregateOutputType? $count;

  final _i2.AgendaMinAggregateOutputType? $min;

  final _i2.AgendaMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateAgendaCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAgendaCountArgs({this.select});

  final _i2.AgendaCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateAgendaMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAgendaMinArgs({this.select});

  final _i2.AgendaMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateAgendaMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAgendaMaxArgs({this.select});

  final _i2.AgendaMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateAgendaSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAgendaSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateAgendaCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateAgendaMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateAgendaMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class HorarioCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioCreateInput({
    this.id,
    required this.inicio,
    required this.fim,
    required this.isReserved,
    required this.agenda,
    this.gestorServico,
    this.gestorReserva,
    required this.reservaSolicitada,
    required this.servicoSolicitado,
  });

  final String? id;

  final String inicio;

  final String fim;

  final bool isReserved;

  final _i2.AgendaCreateNestedOneWithoutHorariosInput agenda;

  final _i2.UsuarioCreateNestedOneWithoutGestorServicoHorariosInput?
      gestorServico;

  final _i2.UsuarioCreateNestedOneWithoutGestorReservaHorariosInput?
      gestorReserva;

  final _i2.ReservaCreateNestedOneWithoutPeriodoInput reservaSolicitada;

  final _i2.ServicoCreateNestedOneWithoutPeriodoInput servicoSolicitado;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'isReserved': isReserved,
        'agenda': agenda,
        'gestorServico': gestorServico,
        'gestorReserva': gestorReserva,
        'reservaSolicitada': reservaSolicitada,
        'servicoSolicitado': servicoSolicitado,
      };
}

class HorarioUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUncheckedCreateInput({
    this.id,
    required this.inicio,
    required this.fim,
    required this.agendaId,
    required this.gestorServicoId,
    required this.gestorReservaId,
    required this.isReserved,
    required this.reservaSolicitadaId,
    required this.servicoSolicitadoId,
  });

  final String? id;

  final String inicio;

  final String fim;

  final String agendaId;

  final String gestorServicoId;

  final String gestorReservaId;

  final bool isReserved;

  final String reservaSolicitadaId;

  final String servicoSolicitadoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
      };
}

class HorarioCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioCreateManyInput({
    this.id,
    required this.inicio,
    required this.fim,
    required this.agendaId,
    required this.gestorServicoId,
    required this.gestorReservaId,
    required this.isReserved,
    required this.reservaSolicitadaId,
    required this.servicoSolicitadoId,
  });

  final String? id;

  final String inicio;

  final String fim;

  final String agendaId;

  final String gestorServicoId;

  final String gestorReservaId;

  final bool isReserved;

  final String reservaSolicitadaId;

  final String servicoSolicitadoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
      };
}

class HorarioUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUpdateInput({
    this.id,
    this.inicio,
    this.fim,
    this.isReserved,
    this.agenda,
    this.gestorServico,
    this.gestorReserva,
    this.reservaSolicitada,
    this.servicoSolicitado,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? inicio;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? fim;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isReserved;

  final _i2.AgendaUpdateOneRequiredWithoutHorariosNestedInput? agenda;

  final _i2.UsuarioUpdateOneWithoutGestorServicoHorariosNestedInput?
      gestorServico;

  final _i2.UsuarioUpdateOneWithoutGestorReservaHorariosNestedInput?
      gestorReserva;

  final _i2.ReservaUpdateOneRequiredWithoutPeriodoNestedInput?
      reservaSolicitada;

  final _i2.ServicoUpdateOneRequiredWithoutPeriodoNestedInput?
      servicoSolicitado;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'isReserved': isReserved,
        'agenda': agenda,
        'gestorServico': gestorServico,
        'gestorReserva': gestorReserva,
        'reservaSolicitada': reservaSolicitada,
        'servicoSolicitado': servicoSolicitado,
      };
}

class HorarioUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUncheckedUpdateInput({
    this.id,
    this.inicio,
    this.fim,
    this.agendaId,
    this.gestorServicoId,
    this.gestorReservaId,
    this.isReserved,
    this.reservaSolicitadaId,
    this.servicoSolicitadoId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? inicio;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? fim;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? agendaId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      gestorServicoId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      gestorReservaId;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isReserved;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      reservaSolicitadaId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      servicoSolicitadoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
      };
}

class HorarioUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioUncheckedUpdateManyInput({
    this.id,
    this.inicio,
    this.fim,
    this.agendaId,
    this.gestorServicoId,
    this.gestorReservaId,
    this.isReserved,
    this.reservaSolicitadaId,
    this.servicoSolicitadoId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? inicio;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? fim;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? agendaId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      gestorServicoId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      gestorReservaId;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isReserved;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      reservaSolicitadaId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      servicoSolicitadoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
      };
}

class HorarioCountAggregateOutputType {
  const HorarioCountAggregateOutputType({
    this.id,
    this.inicio,
    this.fim,
    this.agendaId,
    this.gestorServicoId,
    this.gestorReservaId,
    this.isReserved,
    this.reservaSolicitadaId,
    this.servicoSolicitadoId,
    this.$all,
  });

  factory HorarioCountAggregateOutputType.fromJson(Map json) =>
      HorarioCountAggregateOutputType(
        id: json['id'],
        inicio: json['inicio'],
        fim: json['fim'],
        agendaId: json['agendaId'],
        gestorServicoId: json['gestorServicoId'],
        gestorReservaId: json['gestorReservaId'],
        isReserved: json['isReserved'],
        reservaSolicitadaId: json['reservaSolicitadaId'],
        servicoSolicitadoId: json['servicoSolicitadoId'],
        $all: json['_all'],
      );

  final int? id;

  final int? inicio;

  final int? fim;

  final int? agendaId;

  final int? gestorServicoId;

  final int? gestorReservaId;

  final int? isReserved;

  final int? reservaSolicitadaId;

  final int? servicoSolicitadoId;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
        '_all': $all,
      };
}

class HorarioMinAggregateOutputType {
  const HorarioMinAggregateOutputType({
    this.id,
    this.inicio,
    this.fim,
    this.agendaId,
    this.gestorServicoId,
    this.gestorReservaId,
    this.isReserved,
    this.reservaSolicitadaId,
    this.servicoSolicitadoId,
  });

  factory HorarioMinAggregateOutputType.fromJson(Map json) =>
      HorarioMinAggregateOutputType(
        id: json['id'],
        inicio: json['inicio'],
        fim: json['fim'],
        agendaId: json['agendaId'],
        gestorServicoId: json['gestorServicoId'],
        gestorReservaId: json['gestorReservaId'],
        isReserved: json['isReserved'],
        reservaSolicitadaId: json['reservaSolicitadaId'],
        servicoSolicitadoId: json['servicoSolicitadoId'],
      );

  final String? id;

  final String? inicio;

  final String? fim;

  final String? agendaId;

  final String? gestorServicoId;

  final String? gestorReservaId;

  final bool? isReserved;

  final String? reservaSolicitadaId;

  final String? servicoSolicitadoId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
      };
}

class HorarioMaxAggregateOutputType {
  const HorarioMaxAggregateOutputType({
    this.id,
    this.inicio,
    this.fim,
    this.agendaId,
    this.gestorServicoId,
    this.gestorReservaId,
    this.isReserved,
    this.reservaSolicitadaId,
    this.servicoSolicitadoId,
  });

  factory HorarioMaxAggregateOutputType.fromJson(Map json) =>
      HorarioMaxAggregateOutputType(
        id: json['id'],
        inicio: json['inicio'],
        fim: json['fim'],
        agendaId: json['agendaId'],
        gestorServicoId: json['gestorServicoId'],
        gestorReservaId: json['gestorReservaId'],
        isReserved: json['isReserved'],
        reservaSolicitadaId: json['reservaSolicitadaId'],
        servicoSolicitadoId: json['servicoSolicitadoId'],
      );

  final String? id;

  final String? inicio;

  final String? fim;

  final String? agendaId;

  final String? gestorServicoId;

  final String? gestorReservaId;

  final bool? isReserved;

  final String? reservaSolicitadaId;

  final String? servicoSolicitadoId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
      };
}

class HorarioGroupByOutputType {
  const HorarioGroupByOutputType({
    this.id,
    this.inicio,
    this.fim,
    this.agendaId,
    this.gestorServicoId,
    this.gestorReservaId,
    this.isReserved,
    this.reservaSolicitadaId,
    this.servicoSolicitadoId,
    this.$count,
    this.$min,
    this.$max,
  });

  factory HorarioGroupByOutputType.fromJson(Map json) =>
      HorarioGroupByOutputType(
        id: json['id'],
        inicio: json['inicio'],
        fim: json['fim'],
        agendaId: json['agendaId'],
        gestorServicoId: json['gestorServicoId'],
        gestorReservaId: json['gestorReservaId'],
        isReserved: json['isReserved'],
        reservaSolicitadaId: json['reservaSolicitadaId'],
        servicoSolicitadoId: json['servicoSolicitadoId'],
        $count: json['_count'] is Map
            ? _i2.HorarioCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.HorarioMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.HorarioMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? inicio;

  final String? fim;

  final String? agendaId;

  final String? gestorServicoId;

  final String? gestorReservaId;

  final bool? isReserved;

  final String? reservaSolicitadaId;

  final String? servicoSolicitadoId;

  final _i2.HorarioCountAggregateOutputType? $count;

  final _i2.HorarioMinAggregateOutputType? $min;

  final _i2.HorarioMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class HorarioCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioCountOrderByAggregateInput({
    this.id,
    this.inicio,
    this.fim,
    this.agendaId,
    this.gestorServicoId,
    this.gestorReservaId,
    this.isReserved,
    this.reservaSolicitadaId,
    this.servicoSolicitadoId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? inicio;

  final _i2.SortOrder? fim;

  final _i2.SortOrder? agendaId;

  final _i2.SortOrder? gestorServicoId;

  final _i2.SortOrder? gestorReservaId;

  final _i2.SortOrder? isReserved;

  final _i2.SortOrder? reservaSolicitadaId;

  final _i2.SortOrder? servicoSolicitadoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
      };
}

class HorarioMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioMaxOrderByAggregateInput({
    this.id,
    this.inicio,
    this.fim,
    this.agendaId,
    this.gestorServicoId,
    this.gestorReservaId,
    this.isReserved,
    this.reservaSolicitadaId,
    this.servicoSolicitadoId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? inicio;

  final _i2.SortOrder? fim;

  final _i2.SortOrder? agendaId;

  final _i2.SortOrder? gestorServicoId;

  final _i2.SortOrder? gestorReservaId;

  final _i2.SortOrder? isReserved;

  final _i2.SortOrder? reservaSolicitadaId;

  final _i2.SortOrder? servicoSolicitadoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
      };
}

class HorarioMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioMinOrderByAggregateInput({
    this.id,
    this.inicio,
    this.fim,
    this.agendaId,
    this.gestorServicoId,
    this.gestorReservaId,
    this.isReserved,
    this.reservaSolicitadaId,
    this.servicoSolicitadoId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? inicio;

  final _i2.SortOrder? fim;

  final _i2.SortOrder? agendaId;

  final _i2.SortOrder? gestorServicoId;

  final _i2.SortOrder? gestorReservaId;

  final _i2.SortOrder? isReserved;

  final _i2.SortOrder? reservaSolicitadaId;

  final _i2.SortOrder? servicoSolicitadoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
      };
}

class HorarioOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioOrderByWithAggregationInput({
    this.id,
    this.inicio,
    this.fim,
    this.agendaId,
    this.gestorServicoId,
    this.gestorReservaId,
    this.isReserved,
    this.reservaSolicitadaId,
    this.servicoSolicitadoId,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? inicio;

  final _i2.SortOrder? fim;

  final _i2.SortOrder? agendaId;

  final _i2.SortOrder? gestorServicoId;

  final _i2.SortOrder? gestorReservaId;

  final _i2.SortOrder? isReserved;

  final _i2.SortOrder? reservaSolicitadaId;

  final _i2.SortOrder? servicoSolicitadoId;

  final _i2.HorarioCountOrderByAggregateInput? $count;

  final _i2.HorarioMaxOrderByAggregateInput? $max;

  final _i2.HorarioMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class NestedBoolWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedBoolWithAggregatesFilter({
    this.equals,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i1.Reference<bool>>? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedBoolFilter? $min;

  final _i2.NestedBoolFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class BoolWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BoolWithAggregatesFilter({
    this.equals,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i1.Reference<bool>>? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedBoolFilter? $min;

  final _i2.NestedBoolFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class HorarioScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.inicio,
    this.fim,
    this.agendaId,
    this.gestorServicoId,
    this.gestorReservaId,
    this.isReserved,
    this.reservaSolicitadaId,
    this.servicoSolicitadoId,
  });

  final _i1.PrismaUnion<_i2.HorarioScalarWhereWithAggregatesInput,
      Iterable<_i2.HorarioScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.HorarioScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.HorarioScalarWhereWithAggregatesInput,
      Iterable<_i2.HorarioScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? inicio;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? fim;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? agendaId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>?
      gestorServicoId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>?
      gestorReservaId;

  final _i1.PrismaUnion<_i2.BoolWithAggregatesFilter, bool>? isReserved;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>?
      reservaSolicitadaId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>?
      servicoSolicitadoId;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
      };
}

class HorarioCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioCountAggregateOutputTypeSelect({
    this.id,
    this.inicio,
    this.fim,
    this.agendaId,
    this.gestorServicoId,
    this.gestorReservaId,
    this.isReserved,
    this.reservaSolicitadaId,
    this.servicoSolicitadoId,
    this.$all,
  });

  final bool? id;

  final bool? inicio;

  final bool? fim;

  final bool? agendaId;

  final bool? gestorServicoId;

  final bool? gestorReservaId;

  final bool? isReserved;

  final bool? reservaSolicitadaId;

  final bool? servicoSolicitadoId;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
        '_all': $all,
      };
}

class HorarioGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioGroupByOutputTypeCountArgs({this.select});

  final _i2.HorarioCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class HorarioMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioMinAggregateOutputTypeSelect({
    this.id,
    this.inicio,
    this.fim,
    this.agendaId,
    this.gestorServicoId,
    this.gestorReservaId,
    this.isReserved,
    this.reservaSolicitadaId,
    this.servicoSolicitadoId,
  });

  final bool? id;

  final bool? inicio;

  final bool? fim;

  final bool? agendaId;

  final bool? gestorServicoId;

  final bool? gestorReservaId;

  final bool? isReserved;

  final bool? reservaSolicitadaId;

  final bool? servicoSolicitadoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
      };
}

class HorarioGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioGroupByOutputTypeMinArgs({this.select});

  final _i2.HorarioMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class HorarioMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioMaxAggregateOutputTypeSelect({
    this.id,
    this.inicio,
    this.fim,
    this.agendaId,
    this.gestorServicoId,
    this.gestorReservaId,
    this.isReserved,
    this.reservaSolicitadaId,
    this.servicoSolicitadoId,
  });

  final bool? id;

  final bool? inicio;

  final bool? fim;

  final bool? agendaId;

  final bool? gestorServicoId;

  final bool? gestorReservaId;

  final bool? isReserved;

  final bool? reservaSolicitadaId;

  final bool? servicoSolicitadoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
      };
}

class HorarioGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioGroupByOutputTypeMaxArgs({this.select});

  final _i2.HorarioMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class HorarioGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HorarioGroupByOutputTypeSelect({
    this.id,
    this.inicio,
    this.fim,
    this.agendaId,
    this.gestorServicoId,
    this.gestorReservaId,
    this.isReserved,
    this.reservaSolicitadaId,
    this.servicoSolicitadoId,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? inicio;

  final bool? fim;

  final bool? agendaId;

  final bool? gestorServicoId;

  final bool? gestorReservaId;

  final bool? isReserved;

  final bool? reservaSolicitadaId;

  final bool? servicoSolicitadoId;

  final _i1.PrismaUnion<bool, _i2.HorarioGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.HorarioGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.HorarioGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'inicio': inicio,
        'fim': fim,
        'agendaId': agendaId,
        'gestorServicoId': gestorServicoId,
        'gestorReservaId': gestorReservaId,
        'isReserved': isReserved,
        'reservaSolicitadaId': reservaSolicitadaId,
        'servicoSolicitadoId': servicoSolicitadoId,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateHorario {
  const AggregateHorario({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateHorario.fromJson(Map json) => AggregateHorario(
        $count: json['_count'] is Map
            ? _i2.HorarioCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.HorarioMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.HorarioMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.HorarioCountAggregateOutputType? $count;

  final _i2.HorarioMinAggregateOutputType? $min;

  final _i2.HorarioMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateHorarioCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateHorarioCountArgs({this.select});

  final _i2.HorarioCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateHorarioMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateHorarioMinArgs({this.select});

  final _i2.HorarioMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateHorarioMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateHorarioMaxArgs({this.select});

  final _i2.HorarioMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateHorarioSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateHorarioSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateHorarioCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateHorarioMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateHorarioMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

enum EspacoScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'Espaco'),
  localizacaoId<String>('localizacaoId', 'Espaco'),
  capacidadePessoas<int>('capacidadePessoas', 'Espaco'),
  acessibilidade<bool>('acessibilidade', 'Espaco');

  const EspacoScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class EspacoCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoCreateInput({
    this.id,
    required this.capacidadePessoas,
    required this.acessibilidade,
    required this.localizacao,
    this.equipamentoDisponivel,
    this.turnos,
    this.reservas,
    this.servicos,
  });

  final String? id;

  final int capacidadePessoas;

  final bool acessibilidade;

  final _i2.LocalizacaoCreateNestedOneWithoutEspacoInput localizacao;

  final _i2.EquipamentoCreateNestedManyWithoutEspacoInput?
      equipamentoDisponivel;

  final _i2.TurnoCreateNestedManyWithoutEspacoInput? turnos;

  final _i2.ReservaCreateNestedManyWithoutEspacoInput? reservas;

  final _i2.ServicoCreateNestedManyWithoutEspacoInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        'localizacao': localizacao,
        'equipamentoDisponivel': equipamentoDisponivel,
        'turnos': turnos,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class EspacoUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUncheckedCreateInput({
    this.id,
    required this.localizacaoId,
    required this.capacidadePessoas,
    required this.acessibilidade,
    this.equipamentoDisponivel,
    this.turnos,
    this.reservas,
    this.servicos,
  });

  final String? id;

  final String localizacaoId;

  final int capacidadePessoas;

  final bool acessibilidade;

  final _i2.EquipamentoUncheckedCreateNestedManyWithoutEspacoInput?
      equipamentoDisponivel;

  final _i2.TurnoUncheckedCreateNestedManyWithoutEspacoInput? turnos;

  final _i2.ReservaUncheckedCreateNestedManyWithoutEspacoInput? reservas;

  final _i2.ServicoUncheckedCreateNestedManyWithoutEspacoInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'localizacaoId': localizacaoId,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        'equipamentoDisponivel': equipamentoDisponivel,
        'turnos': turnos,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class EspacoCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoCreateManyInput({
    this.id,
    required this.localizacaoId,
    required this.capacidadePessoas,
    required this.acessibilidade,
  });

  final String? id;

  final String localizacaoId;

  final int capacidadePessoas;

  final bool acessibilidade;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'localizacaoId': localizacaoId,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
      };
}

class EspacoUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUpdateInput({
    this.id,
    this.capacidadePessoas,
    this.acessibilidade,
    this.localizacao,
    this.equipamentoDisponivel,
    this.turnos,
    this.reservas,
    this.servicos,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      capacidadePessoas;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>?
      acessibilidade;

  final _i2.LocalizacaoUpdateOneRequiredWithoutEspacoNestedInput? localizacao;

  final _i2.EquipamentoUpdateManyWithoutEspacoNestedInput?
      equipamentoDisponivel;

  final _i2.TurnoUpdateManyWithoutEspacoNestedInput? turnos;

  final _i2.ReservaUpdateManyWithoutEspacoNestedInput? reservas;

  final _i2.ServicoUpdateManyWithoutEspacoNestedInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        'localizacao': localizacao,
        'equipamentoDisponivel': equipamentoDisponivel,
        'turnos': turnos,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class EspacoUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUncheckedUpdateInput({
    this.id,
    this.localizacaoId,
    this.capacidadePessoas,
    this.acessibilidade,
    this.equipamentoDisponivel,
    this.turnos,
    this.reservas,
    this.servicos,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      localizacaoId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      capacidadePessoas;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>?
      acessibilidade;

  final _i2.EquipamentoUncheckedUpdateManyWithoutEspacoNestedInput?
      equipamentoDisponivel;

  final _i2.TurnoUncheckedUpdateManyWithoutEspacoNestedInput? turnos;

  final _i2.ReservaUncheckedUpdateManyWithoutEspacoNestedInput? reservas;

  final _i2.ServicoUncheckedUpdateManyWithoutEspacoNestedInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'localizacaoId': localizacaoId,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        'equipamentoDisponivel': equipamentoDisponivel,
        'turnos': turnos,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class EspacoUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUpdateManyMutationInput({
    this.id,
    this.capacidadePessoas,
    this.acessibilidade,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      capacidadePessoas;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>?
      acessibilidade;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
      };
}

class EspacoUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUncheckedUpdateManyInput({
    this.id,
    this.localizacaoId,
    this.capacidadePessoas,
    this.acessibilidade,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      localizacaoId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      capacidadePessoas;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>?
      acessibilidade;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'localizacaoId': localizacaoId,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
      };
}

class EspacoCountAggregateOutputType {
  const EspacoCountAggregateOutputType({
    this.id,
    this.localizacaoId,
    this.capacidadePessoas,
    this.acessibilidade,
    this.$all,
  });

  factory EspacoCountAggregateOutputType.fromJson(Map json) =>
      EspacoCountAggregateOutputType(
        id: json['id'],
        localizacaoId: json['localizacaoId'],
        capacidadePessoas: json['capacidadePessoas'],
        acessibilidade: json['acessibilidade'],
        $all: json['_all'],
      );

  final int? id;

  final int? localizacaoId;

  final int? capacidadePessoas;

  final int? acessibilidade;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'localizacaoId': localizacaoId,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        '_all': $all,
      };
}

class EspacoAvgAggregateOutputType {
  const EspacoAvgAggregateOutputType({this.capacidadePessoas});

  factory EspacoAvgAggregateOutputType.fromJson(Map json) =>
      EspacoAvgAggregateOutputType(
          capacidadePessoas: json['capacidadePessoas']);

  final double? capacidadePessoas;

  Map<String, dynamic> toJson() => {'capacidadePessoas': capacidadePessoas};
}

class EspacoSumAggregateOutputType {
  const EspacoSumAggregateOutputType({this.capacidadePessoas});

  factory EspacoSumAggregateOutputType.fromJson(Map json) =>
      EspacoSumAggregateOutputType(
          capacidadePessoas: json['capacidadePessoas']);

  final int? capacidadePessoas;

  Map<String, dynamic> toJson() => {'capacidadePessoas': capacidadePessoas};
}

class EspacoMinAggregateOutputType {
  const EspacoMinAggregateOutputType({
    this.id,
    this.localizacaoId,
    this.capacidadePessoas,
    this.acessibilidade,
  });

  factory EspacoMinAggregateOutputType.fromJson(Map json) =>
      EspacoMinAggregateOutputType(
        id: json['id'],
        localizacaoId: json['localizacaoId'],
        capacidadePessoas: json['capacidadePessoas'],
        acessibilidade: json['acessibilidade'],
      );

  final String? id;

  final String? localizacaoId;

  final int? capacidadePessoas;

  final bool? acessibilidade;

  Map<String, dynamic> toJson() => {
        'id': id,
        'localizacaoId': localizacaoId,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
      };
}

class EspacoMaxAggregateOutputType {
  const EspacoMaxAggregateOutputType({
    this.id,
    this.localizacaoId,
    this.capacidadePessoas,
    this.acessibilidade,
  });

  factory EspacoMaxAggregateOutputType.fromJson(Map json) =>
      EspacoMaxAggregateOutputType(
        id: json['id'],
        localizacaoId: json['localizacaoId'],
        capacidadePessoas: json['capacidadePessoas'],
        acessibilidade: json['acessibilidade'],
      );

  final String? id;

  final String? localizacaoId;

  final int? capacidadePessoas;

  final bool? acessibilidade;

  Map<String, dynamic> toJson() => {
        'id': id,
        'localizacaoId': localizacaoId,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
      };
}

class EspacoGroupByOutputType {
  const EspacoGroupByOutputType({
    this.id,
    this.localizacaoId,
    this.capacidadePessoas,
    this.acessibilidade,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory EspacoGroupByOutputType.fromJson(Map json) => EspacoGroupByOutputType(
        id: json['id'],
        localizacaoId: json['localizacaoId'],
        capacidadePessoas: json['capacidadePessoas'],
        acessibilidade: json['acessibilidade'],
        $count: json['_count'] is Map
            ? _i2.EspacoCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.EspacoAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.EspacoSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.EspacoMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.EspacoMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? localizacaoId;

  final int? capacidadePessoas;

  final bool? acessibilidade;

  final _i2.EspacoCountAggregateOutputType? $count;

  final _i2.EspacoAvgAggregateOutputType? $avg;

  final _i2.EspacoSumAggregateOutputType? $sum;

  final _i2.EspacoMinAggregateOutputType? $min;

  final _i2.EspacoMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'localizacaoId': localizacaoId,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class EspacoCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoCountOrderByAggregateInput({
    this.id,
    this.localizacaoId,
    this.capacidadePessoas,
    this.acessibilidade,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? localizacaoId;

  final _i2.SortOrder? capacidadePessoas;

  final _i2.SortOrder? acessibilidade;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'localizacaoId': localizacaoId,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
      };
}

class EspacoAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoAvgOrderByAggregateInput({this.capacidadePessoas});

  final _i2.SortOrder? capacidadePessoas;

  @override
  Map<String, dynamic> toJson() => {'capacidadePessoas': capacidadePessoas};
}

class EspacoMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoMaxOrderByAggregateInput({
    this.id,
    this.localizacaoId,
    this.capacidadePessoas,
    this.acessibilidade,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? localizacaoId;

  final _i2.SortOrder? capacidadePessoas;

  final _i2.SortOrder? acessibilidade;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'localizacaoId': localizacaoId,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
      };
}

class EspacoMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoMinOrderByAggregateInput({
    this.id,
    this.localizacaoId,
    this.capacidadePessoas,
    this.acessibilidade,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? localizacaoId;

  final _i2.SortOrder? capacidadePessoas;

  final _i2.SortOrder? acessibilidade;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'localizacaoId': localizacaoId,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
      };
}

class EspacoSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoSumOrderByAggregateInput({this.capacidadePessoas});

  final _i2.SortOrder? capacidadePessoas;

  @override
  Map<String, dynamic> toJson() => {'capacidadePessoas': capacidadePessoas};
}

class EspacoOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoOrderByWithAggregationInput({
    this.id,
    this.localizacaoId,
    this.capacidadePessoas,
    this.acessibilidade,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? localizacaoId;

  final _i2.SortOrder? capacidadePessoas;

  final _i2.SortOrder? acessibilidade;

  final _i2.EspacoCountOrderByAggregateInput? $count;

  final _i2.EspacoAvgOrderByAggregateInput? $avg;

  final _i2.EspacoMaxOrderByAggregateInput? $max;

  final _i2.EspacoMinOrderByAggregateInput? $min;

  final _i2.EspacoSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'localizacaoId': localizacaoId,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class NestedFloatFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedFloatFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<double, _i1.Reference<double>>? equals;

  final _i1.PrismaUnion<Iterable<double>, _i1.Reference<Iterable<double>>>? $in;

  final _i1.PrismaUnion<Iterable<double>, _i1.Reference<Iterable<double>>>?
      notIn;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lte;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gte;

  final _i1.PrismaUnion<double, _i2.NestedFloatFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedIntWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedFloatFilter? $avg;

  final _i2.NestedIntFilter? $sum;

  final _i2.NestedIntFilter? $min;

  final _i2.NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class IntWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedFloatFilter? $avg;

  final _i2.NestedIntFilter? $sum;

  final _i2.NestedIntFilter? $min;

  final _i2.NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class EspacoScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.localizacaoId,
    this.capacidadePessoas,
    this.acessibilidade,
  });

  final _i1.PrismaUnion<_i2.EspacoScalarWhereWithAggregatesInput,
      Iterable<_i2.EspacoScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.EspacoScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.EspacoScalarWhereWithAggregatesInput,
      Iterable<_i2.EspacoScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? localizacaoId;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? capacidadePessoas;

  final _i1.PrismaUnion<_i2.BoolWithAggregatesFilter, bool>? acessibilidade;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'localizacaoId': localizacaoId,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
      };
}

class EspacoCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoCountAggregateOutputTypeSelect({
    this.id,
    this.localizacaoId,
    this.capacidadePessoas,
    this.acessibilidade,
    this.$all,
  });

  final bool? id;

  final bool? localizacaoId;

  final bool? capacidadePessoas;

  final bool? acessibilidade;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'localizacaoId': localizacaoId,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        '_all': $all,
      };
}

class EspacoGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoGroupByOutputTypeCountArgs({this.select});

  final _i2.EspacoCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class EspacoAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoAvgAggregateOutputTypeSelect({this.capacidadePessoas});

  final bool? capacidadePessoas;

  @override
  Map<String, dynamic> toJson() => {'capacidadePessoas': capacidadePessoas};
}

class EspacoGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoGroupByOutputTypeAvgArgs({this.select});

  final _i2.EspacoAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class EspacoSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoSumAggregateOutputTypeSelect({this.capacidadePessoas});

  final bool? capacidadePessoas;

  @override
  Map<String, dynamic> toJson() => {'capacidadePessoas': capacidadePessoas};
}

class EspacoGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoGroupByOutputTypeSumArgs({this.select});

  final _i2.EspacoSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class EspacoMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoMinAggregateOutputTypeSelect({
    this.id,
    this.localizacaoId,
    this.capacidadePessoas,
    this.acessibilidade,
  });

  final bool? id;

  final bool? localizacaoId;

  final bool? capacidadePessoas;

  final bool? acessibilidade;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'localizacaoId': localizacaoId,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
      };
}

class EspacoGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoGroupByOutputTypeMinArgs({this.select});

  final _i2.EspacoMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class EspacoMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoMaxAggregateOutputTypeSelect({
    this.id,
    this.localizacaoId,
    this.capacidadePessoas,
    this.acessibilidade,
  });

  final bool? id;

  final bool? localizacaoId;

  final bool? capacidadePessoas;

  final bool? acessibilidade;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'localizacaoId': localizacaoId,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
      };
}

class EspacoGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoGroupByOutputTypeMaxArgs({this.select});

  final _i2.EspacoMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class EspacoGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoGroupByOutputTypeSelect({
    this.id,
    this.localizacaoId,
    this.capacidadePessoas,
    this.acessibilidade,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? localizacaoId;

  final bool? capacidadePessoas;

  final bool? acessibilidade;

  final _i1.PrismaUnion<bool, _i2.EspacoGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.EspacoGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.EspacoGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.EspacoGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.EspacoGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'localizacaoId': localizacaoId,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateEspaco {
  const AggregateEspaco({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateEspaco.fromJson(Map json) => AggregateEspaco(
        $count: json['_count'] is Map
            ? _i2.EspacoCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.EspacoAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.EspacoSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.EspacoMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.EspacoMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.EspacoCountAggregateOutputType? $count;

  final _i2.EspacoAvgAggregateOutputType? $avg;

  final _i2.EspacoSumAggregateOutputType? $sum;

  final _i2.EspacoMinAggregateOutputType? $min;

  final _i2.EspacoMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateEspacoCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateEspacoCountArgs({this.select});

  final _i2.EspacoCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateEspacoAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateEspacoAvgArgs({this.select});

  final _i2.EspacoAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateEspacoSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateEspacoSumArgs({this.select});

  final _i2.EspacoSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateEspacoMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateEspacoMinArgs({this.select});

  final _i2.EspacoMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateEspacoMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateEspacoMaxArgs({this.select});

  final _i2.EspacoMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateEspacoSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateEspacoSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateEspacoCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateEspacoAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateEspacoSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateEspacoMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateEspacoMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

enum LocalizacaoScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'Localizacao'),
  campus<String>('campus', 'Localizacao'),
  pavilhao<String>('pavilhao', 'Localizacao'),
  andar<int>('andar', 'Localizacao'),
  numero<int>('numero', 'Localizacao');

  const LocalizacaoScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class EspacoCreateWithoutLocalizacaoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoCreateWithoutLocalizacaoInput({
    this.id,
    required this.capacidadePessoas,
    required this.acessibilidade,
    this.equipamentoDisponivel,
    this.turnos,
    this.reservas,
    this.servicos,
  });

  final String? id;

  final int capacidadePessoas;

  final bool acessibilidade;

  final _i2.EquipamentoCreateNestedManyWithoutEspacoInput?
      equipamentoDisponivel;

  final _i2.TurnoCreateNestedManyWithoutEspacoInput? turnos;

  final _i2.ReservaCreateNestedManyWithoutEspacoInput? reservas;

  final _i2.ServicoCreateNestedManyWithoutEspacoInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        'equipamentoDisponivel': equipamentoDisponivel,
        'turnos': turnos,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class EspacoUncheckedCreateWithoutLocalizacaoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUncheckedCreateWithoutLocalizacaoInput({
    this.id,
    required this.capacidadePessoas,
    required this.acessibilidade,
    this.equipamentoDisponivel,
    this.turnos,
    this.reservas,
    this.servicos,
  });

  final String? id;

  final int capacidadePessoas;

  final bool acessibilidade;

  final _i2.EquipamentoUncheckedCreateNestedManyWithoutEspacoInput?
      equipamentoDisponivel;

  final _i2.TurnoUncheckedCreateNestedManyWithoutEspacoInput? turnos;

  final _i2.ReservaUncheckedCreateNestedManyWithoutEspacoInput? reservas;

  final _i2.ServicoUncheckedCreateNestedManyWithoutEspacoInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        'equipamentoDisponivel': equipamentoDisponivel,
        'turnos': turnos,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class EspacoCreateOrConnectWithoutLocalizacaoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoCreateOrConnectWithoutLocalizacaoInput({
    required this.where,
    required this.create,
  });

  final _i2.EspacoWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.EspacoCreateWithoutLocalizacaoInput,
      _i2.EspacoUncheckedCreateWithoutLocalizacaoInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class EspacoCreateNestedOneWithoutLocalizacaoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoCreateNestedOneWithoutLocalizacaoInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.EspacoCreateWithoutLocalizacaoInput,
      _i2.EspacoUncheckedCreateWithoutLocalizacaoInput>? create;

  final _i2.EspacoCreateOrConnectWithoutLocalizacaoInput? connectOrCreate;

  final _i2.EspacoWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class LocalizacaoCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoCreateInput({
    this.id,
    required this.campus,
    required this.pavilhao,
    required this.andar,
    required this.numero,
    this.espaco,
  });

  final String? id;

  final String campus;

  final String pavilhao;

  final int andar;

  final int numero;

  final _i2.EspacoCreateNestedOneWithoutLocalizacaoInput? espaco;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'campus': campus,
        'pavilhao': pavilhao,
        'andar': andar,
        'numero': numero,
        'espaco': espaco,
      };
}

class EspacoUncheckedCreateNestedOneWithoutLocalizacaoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUncheckedCreateNestedOneWithoutLocalizacaoInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.EspacoCreateWithoutLocalizacaoInput,
      _i2.EspacoUncheckedCreateWithoutLocalizacaoInput>? create;

  final _i2.EspacoCreateOrConnectWithoutLocalizacaoInput? connectOrCreate;

  final _i2.EspacoWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class LocalizacaoUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoUncheckedCreateInput({
    this.id,
    required this.campus,
    required this.pavilhao,
    required this.andar,
    required this.numero,
    this.espaco,
  });

  final String? id;

  final String campus;

  final String pavilhao;

  final int andar;

  final int numero;

  final _i2.EspacoUncheckedCreateNestedOneWithoutLocalizacaoInput? espaco;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'campus': campus,
        'pavilhao': pavilhao,
        'andar': andar,
        'numero': numero,
        'espaco': espaco,
      };
}

class LocalizacaoCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoCreateManyInput({
    this.id,
    required this.campus,
    required this.pavilhao,
    required this.andar,
    required this.numero,
  });

  final String? id;

  final String campus;

  final String pavilhao;

  final int andar;

  final int numero;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'campus': campus,
        'pavilhao': pavilhao,
        'andar': andar,
        'numero': numero,
      };
}

class EspacoUpdateWithoutLocalizacaoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUpdateWithoutLocalizacaoInput({
    this.id,
    this.capacidadePessoas,
    this.acessibilidade,
    this.equipamentoDisponivel,
    this.turnos,
    this.reservas,
    this.servicos,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      capacidadePessoas;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>?
      acessibilidade;

  final _i2.EquipamentoUpdateManyWithoutEspacoNestedInput?
      equipamentoDisponivel;

  final _i2.TurnoUpdateManyWithoutEspacoNestedInput? turnos;

  final _i2.ReservaUpdateManyWithoutEspacoNestedInput? reservas;

  final _i2.ServicoUpdateManyWithoutEspacoNestedInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        'equipamentoDisponivel': equipamentoDisponivel,
        'turnos': turnos,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class EspacoUncheckedUpdateWithoutLocalizacaoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUncheckedUpdateWithoutLocalizacaoInput({
    this.id,
    this.capacidadePessoas,
    this.acessibilidade,
    this.equipamentoDisponivel,
    this.turnos,
    this.reservas,
    this.servicos,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      capacidadePessoas;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>?
      acessibilidade;

  final _i2.EquipamentoUncheckedUpdateManyWithoutEspacoNestedInput?
      equipamentoDisponivel;

  final _i2.TurnoUncheckedUpdateManyWithoutEspacoNestedInput? turnos;

  final _i2.ReservaUncheckedUpdateManyWithoutEspacoNestedInput? reservas;

  final _i2.ServicoUncheckedUpdateManyWithoutEspacoNestedInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        'equipamentoDisponivel': equipamentoDisponivel,
        'turnos': turnos,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class EspacoUpsertWithoutLocalizacaoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUpsertWithoutLocalizacaoInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.EspacoUpdateWithoutLocalizacaoInput,
      _i2.EspacoUncheckedUpdateWithoutLocalizacaoInput> update;

  final _i1.PrismaUnion<_i2.EspacoCreateWithoutLocalizacaoInput,
      _i2.EspacoUncheckedCreateWithoutLocalizacaoInput> create;

  final _i2.EspacoWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class EspacoUpdateToOneWithWhereWithoutLocalizacaoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUpdateToOneWithWhereWithoutLocalizacaoInput({
    this.where,
    required this.data,
  });

  final _i2.EspacoWhereInput? where;

  final _i1.PrismaUnion<_i2.EspacoUpdateWithoutLocalizacaoInput,
      _i2.EspacoUncheckedUpdateWithoutLocalizacaoInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class EspacoUpdateOneWithoutLocalizacaoNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUpdateOneWithoutLocalizacaoNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.EspacoCreateWithoutLocalizacaoInput,
      _i2.EspacoUncheckedCreateWithoutLocalizacaoInput>? create;

  final _i2.EspacoCreateOrConnectWithoutLocalizacaoInput? connectOrCreate;

  final _i2.EspacoUpsertWithoutLocalizacaoInput? upsert;

  final _i1.PrismaUnion<bool, _i2.EspacoWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.EspacoWhereInput>? delete;

  final _i2.EspacoWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.EspacoUpdateToOneWithWhereWithoutLocalizacaoInput,
      _i1.PrismaUnion<_i2.EspacoUpdateWithoutLocalizacaoInput,
          _i2.EspacoUncheckedUpdateWithoutLocalizacaoInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class LocalizacaoUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoUpdateInput({
    this.id,
    this.campus,
    this.pavilhao,
    this.andar,
    this.numero,
    this.espaco,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? campus;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? pavilhao;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? andar;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? numero;

  final _i2.EspacoUpdateOneWithoutLocalizacaoNestedInput? espaco;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'campus': campus,
        'pavilhao': pavilhao,
        'andar': andar,
        'numero': numero,
        'espaco': espaco,
      };
}

class EspacoUncheckedUpdateOneWithoutLocalizacaoNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUncheckedUpdateOneWithoutLocalizacaoNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.EspacoCreateWithoutLocalizacaoInput,
      _i2.EspacoUncheckedCreateWithoutLocalizacaoInput>? create;

  final _i2.EspacoCreateOrConnectWithoutLocalizacaoInput? connectOrCreate;

  final _i2.EspacoUpsertWithoutLocalizacaoInput? upsert;

  final _i1.PrismaUnion<bool, _i2.EspacoWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.EspacoWhereInput>? delete;

  final _i2.EspacoWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.EspacoUpdateToOneWithWhereWithoutLocalizacaoInput,
      _i1.PrismaUnion<_i2.EspacoUpdateWithoutLocalizacaoInput,
          _i2.EspacoUncheckedUpdateWithoutLocalizacaoInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class LocalizacaoUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoUncheckedUpdateInput({
    this.id,
    this.campus,
    this.pavilhao,
    this.andar,
    this.numero,
    this.espaco,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? campus;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? pavilhao;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? andar;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? numero;

  final _i2.EspacoUncheckedUpdateOneWithoutLocalizacaoNestedInput? espaco;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'campus': campus,
        'pavilhao': pavilhao,
        'andar': andar,
        'numero': numero,
        'espaco': espaco,
      };
}

class LocalizacaoUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoUpdateManyMutationInput({
    this.id,
    this.campus,
    this.pavilhao,
    this.andar,
    this.numero,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? campus;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? pavilhao;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? andar;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? numero;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'campus': campus,
        'pavilhao': pavilhao,
        'andar': andar,
        'numero': numero,
      };
}

class LocalizacaoUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoUncheckedUpdateManyInput({
    this.id,
    this.campus,
    this.pavilhao,
    this.andar,
    this.numero,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? campus;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? pavilhao;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? andar;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? numero;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'campus': campus,
        'pavilhao': pavilhao,
        'andar': andar,
        'numero': numero,
      };
}

class LocalizacaoCountAggregateOutputType {
  const LocalizacaoCountAggregateOutputType({
    this.id,
    this.campus,
    this.pavilhao,
    this.andar,
    this.numero,
    this.$all,
  });

  factory LocalizacaoCountAggregateOutputType.fromJson(Map json) =>
      LocalizacaoCountAggregateOutputType(
        id: json['id'],
        campus: json['campus'],
        pavilhao: json['pavilhao'],
        andar: json['andar'],
        numero: json['numero'],
        $all: json['_all'],
      );

  final int? id;

  final int? campus;

  final int? pavilhao;

  final int? andar;

  final int? numero;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'campus': campus,
        'pavilhao': pavilhao,
        'andar': andar,
        'numero': numero,
        '_all': $all,
      };
}

class LocalizacaoAvgAggregateOutputType {
  const LocalizacaoAvgAggregateOutputType({
    this.andar,
    this.numero,
  });

  factory LocalizacaoAvgAggregateOutputType.fromJson(Map json) =>
      LocalizacaoAvgAggregateOutputType(
        andar: json['andar'],
        numero: json['numero'],
      );

  final double? andar;

  final double? numero;

  Map<String, dynamic> toJson() => {
        'andar': andar,
        'numero': numero,
      };
}

class LocalizacaoSumAggregateOutputType {
  const LocalizacaoSumAggregateOutputType({
    this.andar,
    this.numero,
  });

  factory LocalizacaoSumAggregateOutputType.fromJson(Map json) =>
      LocalizacaoSumAggregateOutputType(
        andar: json['andar'],
        numero: json['numero'],
      );

  final int? andar;

  final int? numero;

  Map<String, dynamic> toJson() => {
        'andar': andar,
        'numero': numero,
      };
}

class LocalizacaoMinAggregateOutputType {
  const LocalizacaoMinAggregateOutputType({
    this.id,
    this.campus,
    this.pavilhao,
    this.andar,
    this.numero,
  });

  factory LocalizacaoMinAggregateOutputType.fromJson(Map json) =>
      LocalizacaoMinAggregateOutputType(
        id: json['id'],
        campus: json['campus'],
        pavilhao: json['pavilhao'],
        andar: json['andar'],
        numero: json['numero'],
      );

  final String? id;

  final String? campus;

  final String? pavilhao;

  final int? andar;

  final int? numero;

  Map<String, dynamic> toJson() => {
        'id': id,
        'campus': campus,
        'pavilhao': pavilhao,
        'andar': andar,
        'numero': numero,
      };
}

class LocalizacaoMaxAggregateOutputType {
  const LocalizacaoMaxAggregateOutputType({
    this.id,
    this.campus,
    this.pavilhao,
    this.andar,
    this.numero,
  });

  factory LocalizacaoMaxAggregateOutputType.fromJson(Map json) =>
      LocalizacaoMaxAggregateOutputType(
        id: json['id'],
        campus: json['campus'],
        pavilhao: json['pavilhao'],
        andar: json['andar'],
        numero: json['numero'],
      );

  final String? id;

  final String? campus;

  final String? pavilhao;

  final int? andar;

  final int? numero;

  Map<String, dynamic> toJson() => {
        'id': id,
        'campus': campus,
        'pavilhao': pavilhao,
        'andar': andar,
        'numero': numero,
      };
}

class LocalizacaoGroupByOutputType {
  const LocalizacaoGroupByOutputType({
    this.id,
    this.campus,
    this.pavilhao,
    this.andar,
    this.numero,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory LocalizacaoGroupByOutputType.fromJson(Map json) =>
      LocalizacaoGroupByOutputType(
        id: json['id'],
        campus: json['campus'],
        pavilhao: json['pavilhao'],
        andar: json['andar'],
        numero: json['numero'],
        $count: json['_count'] is Map
            ? _i2.LocalizacaoCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.LocalizacaoAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.LocalizacaoSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.LocalizacaoMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.LocalizacaoMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? campus;

  final String? pavilhao;

  final int? andar;

  final int? numero;

  final _i2.LocalizacaoCountAggregateOutputType? $count;

  final _i2.LocalizacaoAvgAggregateOutputType? $avg;

  final _i2.LocalizacaoSumAggregateOutputType? $sum;

  final _i2.LocalizacaoMinAggregateOutputType? $min;

  final _i2.LocalizacaoMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'campus': campus,
        'pavilhao': pavilhao,
        'andar': andar,
        'numero': numero,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class LocalizacaoCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoCountOrderByAggregateInput({
    this.id,
    this.campus,
    this.pavilhao,
    this.andar,
    this.numero,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? campus;

  final _i2.SortOrder? pavilhao;

  final _i2.SortOrder? andar;

  final _i2.SortOrder? numero;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'campus': campus,
        'pavilhao': pavilhao,
        'andar': andar,
        'numero': numero,
      };
}

class LocalizacaoAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoAvgOrderByAggregateInput({
    this.andar,
    this.numero,
  });

  final _i2.SortOrder? andar;

  final _i2.SortOrder? numero;

  @override
  Map<String, dynamic> toJson() => {
        'andar': andar,
        'numero': numero,
      };
}

class LocalizacaoMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoMaxOrderByAggregateInput({
    this.id,
    this.campus,
    this.pavilhao,
    this.andar,
    this.numero,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? campus;

  final _i2.SortOrder? pavilhao;

  final _i2.SortOrder? andar;

  final _i2.SortOrder? numero;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'campus': campus,
        'pavilhao': pavilhao,
        'andar': andar,
        'numero': numero,
      };
}

class LocalizacaoMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoMinOrderByAggregateInput({
    this.id,
    this.campus,
    this.pavilhao,
    this.andar,
    this.numero,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? campus;

  final _i2.SortOrder? pavilhao;

  final _i2.SortOrder? andar;

  final _i2.SortOrder? numero;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'campus': campus,
        'pavilhao': pavilhao,
        'andar': andar,
        'numero': numero,
      };
}

class LocalizacaoSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoSumOrderByAggregateInput({
    this.andar,
    this.numero,
  });

  final _i2.SortOrder? andar;

  final _i2.SortOrder? numero;

  @override
  Map<String, dynamic> toJson() => {
        'andar': andar,
        'numero': numero,
      };
}

class LocalizacaoOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoOrderByWithAggregationInput({
    this.id,
    this.campus,
    this.pavilhao,
    this.andar,
    this.numero,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? campus;

  final _i2.SortOrder? pavilhao;

  final _i2.SortOrder? andar;

  final _i2.SortOrder? numero;

  final _i2.LocalizacaoCountOrderByAggregateInput? $count;

  final _i2.LocalizacaoAvgOrderByAggregateInput? $avg;

  final _i2.LocalizacaoMaxOrderByAggregateInput? $max;

  final _i2.LocalizacaoMinOrderByAggregateInput? $min;

  final _i2.LocalizacaoSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'campus': campus,
        'pavilhao': pavilhao,
        'andar': andar,
        'numero': numero,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class LocalizacaoScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.campus,
    this.pavilhao,
    this.andar,
    this.numero,
  });

  final _i1.PrismaUnion<_i2.LocalizacaoScalarWhereWithAggregatesInput,
      Iterable<_i2.LocalizacaoScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.LocalizacaoScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.LocalizacaoScalarWhereWithAggregatesInput,
      Iterable<_i2.LocalizacaoScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? campus;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? pavilhao;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? andar;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? numero;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'campus': campus,
        'pavilhao': pavilhao,
        'andar': andar,
        'numero': numero,
      };
}

class LocalizacaoCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoCountAggregateOutputTypeSelect({
    this.id,
    this.campus,
    this.pavilhao,
    this.andar,
    this.numero,
    this.$all,
  });

  final bool? id;

  final bool? campus;

  final bool? pavilhao;

  final bool? andar;

  final bool? numero;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'campus': campus,
        'pavilhao': pavilhao,
        'andar': andar,
        'numero': numero,
        '_all': $all,
      };
}

class LocalizacaoGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoGroupByOutputTypeCountArgs({this.select});

  final _i2.LocalizacaoCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class LocalizacaoAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoAvgAggregateOutputTypeSelect({
    this.andar,
    this.numero,
  });

  final bool? andar;

  final bool? numero;

  @override
  Map<String, dynamic> toJson() => {
        'andar': andar,
        'numero': numero,
      };
}

class LocalizacaoGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoGroupByOutputTypeAvgArgs({this.select});

  final _i2.LocalizacaoAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class LocalizacaoSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoSumAggregateOutputTypeSelect({
    this.andar,
    this.numero,
  });

  final bool? andar;

  final bool? numero;

  @override
  Map<String, dynamic> toJson() => {
        'andar': andar,
        'numero': numero,
      };
}

class LocalizacaoGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoGroupByOutputTypeSumArgs({this.select});

  final _i2.LocalizacaoSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class LocalizacaoMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoMinAggregateOutputTypeSelect({
    this.id,
    this.campus,
    this.pavilhao,
    this.andar,
    this.numero,
  });

  final bool? id;

  final bool? campus;

  final bool? pavilhao;

  final bool? andar;

  final bool? numero;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'campus': campus,
        'pavilhao': pavilhao,
        'andar': andar,
        'numero': numero,
      };
}

class LocalizacaoGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoGroupByOutputTypeMinArgs({this.select});

  final _i2.LocalizacaoMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class LocalizacaoMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoMaxAggregateOutputTypeSelect({
    this.id,
    this.campus,
    this.pavilhao,
    this.andar,
    this.numero,
  });

  final bool? id;

  final bool? campus;

  final bool? pavilhao;

  final bool? andar;

  final bool? numero;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'campus': campus,
        'pavilhao': pavilhao,
        'andar': andar,
        'numero': numero,
      };
}

class LocalizacaoGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoGroupByOutputTypeMaxArgs({this.select});

  final _i2.LocalizacaoMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class LocalizacaoGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LocalizacaoGroupByOutputTypeSelect({
    this.id,
    this.campus,
    this.pavilhao,
    this.andar,
    this.numero,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? campus;

  final bool? pavilhao;

  final bool? andar;

  final bool? numero;

  final _i1.PrismaUnion<bool, _i2.LocalizacaoGroupByOutputTypeCountArgs>?
      $count;

  final _i1.PrismaUnion<bool, _i2.LocalizacaoGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.LocalizacaoGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.LocalizacaoGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.LocalizacaoGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'campus': campus,
        'pavilhao': pavilhao,
        'andar': andar,
        'numero': numero,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateLocalizacao {
  const AggregateLocalizacao({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateLocalizacao.fromJson(Map json) => AggregateLocalizacao(
        $count: json['_count'] is Map
            ? _i2.LocalizacaoCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.LocalizacaoAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.LocalizacaoSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.LocalizacaoMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.LocalizacaoMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.LocalizacaoCountAggregateOutputType? $count;

  final _i2.LocalizacaoAvgAggregateOutputType? $avg;

  final _i2.LocalizacaoSumAggregateOutputType? $sum;

  final _i2.LocalizacaoMinAggregateOutputType? $min;

  final _i2.LocalizacaoMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateLocalizacaoCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLocalizacaoCountArgs({this.select});

  final _i2.LocalizacaoCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateLocalizacaoAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLocalizacaoAvgArgs({this.select});

  final _i2.LocalizacaoAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateLocalizacaoSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLocalizacaoSumArgs({this.select});

  final _i2.LocalizacaoSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateLocalizacaoMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLocalizacaoMinArgs({this.select});

  final _i2.LocalizacaoMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateLocalizacaoMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLocalizacaoMaxArgs({this.select});

  final _i2.LocalizacaoMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateLocalizacaoSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLocalizacaoSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateLocalizacaoCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateLocalizacaoAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateLocalizacaoSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateLocalizacaoMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateLocalizacaoMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class EspacoCreateWithoutEquipamentoDisponivelInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoCreateWithoutEquipamentoDisponivelInput({
    this.id,
    required this.capacidadePessoas,
    required this.acessibilidade,
    required this.localizacao,
    this.turnos,
    this.reservas,
    this.servicos,
  });

  final String? id;

  final int capacidadePessoas;

  final bool acessibilidade;

  final _i2.LocalizacaoCreateNestedOneWithoutEspacoInput localizacao;

  final _i2.TurnoCreateNestedManyWithoutEspacoInput? turnos;

  final _i2.ReservaCreateNestedManyWithoutEspacoInput? reservas;

  final _i2.ServicoCreateNestedManyWithoutEspacoInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        'localizacao': localizacao,
        'turnos': turnos,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class EspacoUncheckedCreateWithoutEquipamentoDisponivelInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUncheckedCreateWithoutEquipamentoDisponivelInput({
    this.id,
    required this.localizacaoId,
    required this.capacidadePessoas,
    required this.acessibilidade,
    this.turnos,
    this.reservas,
    this.servicos,
  });

  final String? id;

  final String localizacaoId;

  final int capacidadePessoas;

  final bool acessibilidade;

  final _i2.TurnoUncheckedCreateNestedManyWithoutEspacoInput? turnos;

  final _i2.ReservaUncheckedCreateNestedManyWithoutEspacoInput? reservas;

  final _i2.ServicoUncheckedCreateNestedManyWithoutEspacoInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'localizacaoId': localizacaoId,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        'turnos': turnos,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class EspacoCreateOrConnectWithoutEquipamentoDisponivelInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoCreateOrConnectWithoutEquipamentoDisponivelInput({
    required this.where,
    required this.create,
  });

  final _i2.EspacoWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.EspacoCreateWithoutEquipamentoDisponivelInput,
      _i2.EspacoUncheckedCreateWithoutEquipamentoDisponivelInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class EspacoCreateNestedOneWithoutEquipamentoDisponivelInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoCreateNestedOneWithoutEquipamentoDisponivelInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.EspacoCreateWithoutEquipamentoDisponivelInput,
      _i2.EspacoUncheckedCreateWithoutEquipamentoDisponivelInput>? create;

  final _i2.EspacoCreateOrConnectWithoutEquipamentoDisponivelInput?
      connectOrCreate;

  final _i2.EspacoWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class EquipamentoCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoCreateInput({
    this.id,
    required this.nome,
    required this.tipo,
    required this.numTombo,
    required this.espaco,
  });

  final String? id;

  final String nome;

  final String tipo;

  final String numTombo;

  final _i2.EspacoCreateNestedOneWithoutEquipamentoDisponivelInput espaco;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
        'espaco': espaco,
      };
}

class EquipamentoUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoUncheckedCreateInput({
    this.id,
    required this.nome,
    required this.tipo,
    required this.numTombo,
    required this.espacoId,
  });

  final String? id;

  final String nome;

  final String tipo;

  final String numTombo;

  final String espacoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
        'espacoId': espacoId,
      };
}

class EquipamentoCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoCreateManyInput({
    this.id,
    required this.nome,
    required this.tipo,
    required this.numTombo,
    required this.espacoId,
  });

  final String? id;

  final String nome;

  final String tipo;

  final String numTombo;

  final String espacoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
        'espacoId': espacoId,
      };
}

class EspacoUpdateWithoutEquipamentoDisponivelInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUpdateWithoutEquipamentoDisponivelInput({
    this.id,
    this.capacidadePessoas,
    this.acessibilidade,
    this.localizacao,
    this.turnos,
    this.reservas,
    this.servicos,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      capacidadePessoas;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>?
      acessibilidade;

  final _i2.LocalizacaoUpdateOneRequiredWithoutEspacoNestedInput? localizacao;

  final _i2.TurnoUpdateManyWithoutEspacoNestedInput? turnos;

  final _i2.ReservaUpdateManyWithoutEspacoNestedInput? reservas;

  final _i2.ServicoUpdateManyWithoutEspacoNestedInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        'localizacao': localizacao,
        'turnos': turnos,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class EspacoUncheckedUpdateWithoutEquipamentoDisponivelInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUncheckedUpdateWithoutEquipamentoDisponivelInput({
    this.id,
    this.localizacaoId,
    this.capacidadePessoas,
    this.acessibilidade,
    this.turnos,
    this.reservas,
    this.servicos,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      localizacaoId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      capacidadePessoas;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>?
      acessibilidade;

  final _i2.TurnoUncheckedUpdateManyWithoutEspacoNestedInput? turnos;

  final _i2.ReservaUncheckedUpdateManyWithoutEspacoNestedInput? reservas;

  final _i2.ServicoUncheckedUpdateManyWithoutEspacoNestedInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'localizacaoId': localizacaoId,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        'turnos': turnos,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class EspacoUpsertWithoutEquipamentoDisponivelInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUpsertWithoutEquipamentoDisponivelInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.EspacoUpdateWithoutEquipamentoDisponivelInput,
      _i2.EspacoUncheckedUpdateWithoutEquipamentoDisponivelInput> update;

  final _i1.PrismaUnion<_i2.EspacoCreateWithoutEquipamentoDisponivelInput,
      _i2.EspacoUncheckedCreateWithoutEquipamentoDisponivelInput> create;

  final _i2.EspacoWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class EspacoUpdateToOneWithWhereWithoutEquipamentoDisponivelInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUpdateToOneWithWhereWithoutEquipamentoDisponivelInput({
    this.where,
    required this.data,
  });

  final _i2.EspacoWhereInput? where;

  final _i1.PrismaUnion<_i2.EspacoUpdateWithoutEquipamentoDisponivelInput,
      _i2.EspacoUncheckedUpdateWithoutEquipamentoDisponivelInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class EspacoUpdateOneRequiredWithoutEquipamentoDisponivelNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EspacoUpdateOneRequiredWithoutEquipamentoDisponivelNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.EspacoCreateWithoutEquipamentoDisponivelInput,
      _i2.EspacoUncheckedCreateWithoutEquipamentoDisponivelInput>? create;

  final _i2.EspacoCreateOrConnectWithoutEquipamentoDisponivelInput?
      connectOrCreate;

  final _i2.EspacoUpsertWithoutEquipamentoDisponivelInput? upsert;

  final _i2.EspacoWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.EspacoUpdateToOneWithWhereWithoutEquipamentoDisponivelInput,
      _i1.PrismaUnion<_i2.EspacoUpdateWithoutEquipamentoDisponivelInput,
          _i2.EspacoUncheckedUpdateWithoutEquipamentoDisponivelInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class EquipamentoUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoUpdateInput({
    this.id,
    this.nome,
    this.tipo,
    this.numTombo,
    this.espaco,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tipo;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? numTombo;

  final _i2.EspacoUpdateOneRequiredWithoutEquipamentoDisponivelNestedInput?
      espaco;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
        'espaco': espaco,
      };
}

class EquipamentoUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoUncheckedUpdateInput({
    this.id,
    this.nome,
    this.tipo,
    this.numTombo,
    this.espacoId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tipo;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? numTombo;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? espacoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
        'espacoId': espacoId,
      };
}

class EquipamentoUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoUncheckedUpdateManyInput({
    this.id,
    this.nome,
    this.tipo,
    this.numTombo,
    this.espacoId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tipo;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? numTombo;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? espacoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
        'espacoId': espacoId,
      };
}

class EquipamentoCountAggregateOutputType {
  const EquipamentoCountAggregateOutputType({
    this.id,
    this.nome,
    this.tipo,
    this.numTombo,
    this.espacoId,
    this.$all,
  });

  factory EquipamentoCountAggregateOutputType.fromJson(Map json) =>
      EquipamentoCountAggregateOutputType(
        id: json['id'],
        nome: json['nome'],
        tipo: json['tipo'],
        numTombo: json['numTombo'],
        espacoId: json['espacoId'],
        $all: json['_all'],
      );

  final int? id;

  final int? nome;

  final int? tipo;

  final int? numTombo;

  final int? espacoId;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
        'espacoId': espacoId,
        '_all': $all,
      };
}

class EquipamentoMinAggregateOutputType {
  const EquipamentoMinAggregateOutputType({
    this.id,
    this.nome,
    this.tipo,
    this.numTombo,
    this.espacoId,
  });

  factory EquipamentoMinAggregateOutputType.fromJson(Map json) =>
      EquipamentoMinAggregateOutputType(
        id: json['id'],
        nome: json['nome'],
        tipo: json['tipo'],
        numTombo: json['numTombo'],
        espacoId: json['espacoId'],
      );

  final String? id;

  final String? nome;

  final String? tipo;

  final String? numTombo;

  final String? espacoId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
        'espacoId': espacoId,
      };
}

class EquipamentoMaxAggregateOutputType {
  const EquipamentoMaxAggregateOutputType({
    this.id,
    this.nome,
    this.tipo,
    this.numTombo,
    this.espacoId,
  });

  factory EquipamentoMaxAggregateOutputType.fromJson(Map json) =>
      EquipamentoMaxAggregateOutputType(
        id: json['id'],
        nome: json['nome'],
        tipo: json['tipo'],
        numTombo: json['numTombo'],
        espacoId: json['espacoId'],
      );

  final String? id;

  final String? nome;

  final String? tipo;

  final String? numTombo;

  final String? espacoId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
        'espacoId': espacoId,
      };
}

class EquipamentoGroupByOutputType {
  const EquipamentoGroupByOutputType({
    this.id,
    this.nome,
    this.tipo,
    this.numTombo,
    this.espacoId,
    this.$count,
    this.$min,
    this.$max,
  });

  factory EquipamentoGroupByOutputType.fromJson(Map json) =>
      EquipamentoGroupByOutputType(
        id: json['id'],
        nome: json['nome'],
        tipo: json['tipo'],
        numTombo: json['numTombo'],
        espacoId: json['espacoId'],
        $count: json['_count'] is Map
            ? _i2.EquipamentoCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.EquipamentoMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.EquipamentoMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? nome;

  final String? tipo;

  final String? numTombo;

  final String? espacoId;

  final _i2.EquipamentoCountAggregateOutputType? $count;

  final _i2.EquipamentoMinAggregateOutputType? $min;

  final _i2.EquipamentoMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
        'espacoId': espacoId,
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class EquipamentoCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoCountOrderByAggregateInput({
    this.id,
    this.nome,
    this.tipo,
    this.numTombo,
    this.espacoId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? nome;

  final _i2.SortOrder? tipo;

  final _i2.SortOrder? numTombo;

  final _i2.SortOrder? espacoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
        'espacoId': espacoId,
      };
}

class EquipamentoMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoMaxOrderByAggregateInput({
    this.id,
    this.nome,
    this.tipo,
    this.numTombo,
    this.espacoId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? nome;

  final _i2.SortOrder? tipo;

  final _i2.SortOrder? numTombo;

  final _i2.SortOrder? espacoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
        'espacoId': espacoId,
      };
}

class EquipamentoMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoMinOrderByAggregateInput({
    this.id,
    this.nome,
    this.tipo,
    this.numTombo,
    this.espacoId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? nome;

  final _i2.SortOrder? tipo;

  final _i2.SortOrder? numTombo;

  final _i2.SortOrder? espacoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
        'espacoId': espacoId,
      };
}

class EquipamentoOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoOrderByWithAggregationInput({
    this.id,
    this.nome,
    this.tipo,
    this.numTombo,
    this.espacoId,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? nome;

  final _i2.SortOrder? tipo;

  final _i2.SortOrder? numTombo;

  final _i2.SortOrder? espacoId;

  final _i2.EquipamentoCountOrderByAggregateInput? $count;

  final _i2.EquipamentoMaxOrderByAggregateInput? $max;

  final _i2.EquipamentoMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
        'espacoId': espacoId,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class EquipamentoScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.nome,
    this.tipo,
    this.numTombo,
    this.espacoId,
  });

  final _i1.PrismaUnion<_i2.EquipamentoScalarWhereWithAggregatesInput,
      Iterable<_i2.EquipamentoScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.EquipamentoScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.EquipamentoScalarWhereWithAggregatesInput,
      Iterable<_i2.EquipamentoScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? nome;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? tipo;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? numTombo;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? espacoId;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
        'espacoId': espacoId,
      };
}

class EquipamentoCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoCountAggregateOutputTypeSelect({
    this.id,
    this.nome,
    this.tipo,
    this.numTombo,
    this.espacoId,
    this.$all,
  });

  final bool? id;

  final bool? nome;

  final bool? tipo;

  final bool? numTombo;

  final bool? espacoId;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
        'espacoId': espacoId,
        '_all': $all,
      };
}

class EquipamentoGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoGroupByOutputTypeCountArgs({this.select});

  final _i2.EquipamentoCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class EquipamentoMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoMinAggregateOutputTypeSelect({
    this.id,
    this.nome,
    this.tipo,
    this.numTombo,
    this.espacoId,
  });

  final bool? id;

  final bool? nome;

  final bool? tipo;

  final bool? numTombo;

  final bool? espacoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
        'espacoId': espacoId,
      };
}

class EquipamentoGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoGroupByOutputTypeMinArgs({this.select});

  final _i2.EquipamentoMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class EquipamentoMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoMaxAggregateOutputTypeSelect({
    this.id,
    this.nome,
    this.tipo,
    this.numTombo,
    this.espacoId,
  });

  final bool? id;

  final bool? nome;

  final bool? tipo;

  final bool? numTombo;

  final bool? espacoId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
        'espacoId': espacoId,
      };
}

class EquipamentoGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoGroupByOutputTypeMaxArgs({this.select});

  final _i2.EquipamentoMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class EquipamentoGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EquipamentoGroupByOutputTypeSelect({
    this.id,
    this.nome,
    this.tipo,
    this.numTombo,
    this.espacoId,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? nome;

  final bool? tipo;

  final bool? numTombo;

  final bool? espacoId;

  final _i1.PrismaUnion<bool, _i2.EquipamentoGroupByOutputTypeCountArgs>?
      $count;

  final _i1.PrismaUnion<bool, _i2.EquipamentoGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.EquipamentoGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
        'espacoId': espacoId,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateEquipamento {
  const AggregateEquipamento({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateEquipamento.fromJson(Map json) => AggregateEquipamento(
        $count: json['_count'] is Map
            ? _i2.EquipamentoCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.EquipamentoMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.EquipamentoMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.EquipamentoCountAggregateOutputType? $count;

  final _i2.EquipamentoMinAggregateOutputType? $min;

  final _i2.EquipamentoMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateEquipamentoCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateEquipamentoCountArgs({this.select});

  final _i2.EquipamentoCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateEquipamentoMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateEquipamentoMinArgs({this.select});

  final _i2.EquipamentoMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateEquipamentoMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateEquipamentoMaxArgs({this.select});

  final _i2.EquipamentoMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateEquipamentoSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateEquipamentoSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateEquipamentoCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateEquipamentoMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateEquipamentoMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class PrecadastroUsuarioWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PrecadastroUsuarioWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.email,
    this.tipoUsuario,
  });

  final _i1.PrismaUnion<_i2.PrecadastroUsuarioWhereInput,
      Iterable<_i2.PrecadastroUsuarioWhereInput>>? AND;

  final Iterable<_i2.PrecadastroUsuarioWhereInput>? OR;

  final _i1.PrismaUnion<_i2.PrecadastroUsuarioWhereInput,
      Iterable<_i2.PrecadastroUsuarioWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringFilter, String>? tipoUsuario;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'email': email,
        'tipoUsuario': tipoUsuario,
      };
}

class PrecadastroUsuarioWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PrecadastroUsuarioWhereUniqueInput({
    this.id,
    this.email,
    this.AND,
    this.OR,
    this.NOT,
    this.tipoUsuario,
  });

  final String? id;

  final String? email;

  final _i1.PrismaUnion<_i2.PrecadastroUsuarioWhereInput,
      Iterable<_i2.PrecadastroUsuarioWhereInput>>? AND;

  final Iterable<_i2.PrecadastroUsuarioWhereInput>? OR;

  final _i1.PrismaUnion<_i2.PrecadastroUsuarioWhereInput,
      Iterable<_i2.PrecadastroUsuarioWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? tipoUsuario;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'tipoUsuario': tipoUsuario,
      };
}

class PrecadastroUsuarioSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PrecadastroUsuarioSelect({
    this.id,
    this.email,
    this.tipoUsuario,
  });

  final bool? id;

  final bool? email;

  final bool? tipoUsuario;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'tipoUsuario': tipoUsuario,
      };
}

class PrecadastroUsuarioOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PrecadastroUsuarioOrderByWithRelationInput({
    this.id,
    this.email,
    this.tipoUsuario,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? tipoUsuario;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'tipoUsuario': tipoUsuario,
      };
}

enum PrecadastroUsuarioScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'PrecadastroUsuario'),
  email<String>('email', 'PrecadastroUsuario'),
  tipoUsuario<String>('tipoUsuario', 'PrecadastroUsuario');

  const PrecadastroUsuarioScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class PrecadastroUsuarioCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PrecadastroUsuarioCreateInput({
    this.id,
    required this.email,
    required this.tipoUsuario,
  });

  final String? id;

  final String email;

  final String tipoUsuario;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'tipoUsuario': tipoUsuario,
      };
}

class PrecadastroUsuarioUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PrecadastroUsuarioUncheckedCreateInput({
    this.id,
    required this.email,
    required this.tipoUsuario,
  });

  final String? id;

  final String email;

  final String tipoUsuario;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'tipoUsuario': tipoUsuario,
      };
}

class PrecadastroUsuarioCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PrecadastroUsuarioCreateManyInput({
    this.id,
    required this.email,
    required this.tipoUsuario,
  });

  final String? id;

  final String email;

  final String tipoUsuario;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'tipoUsuario': tipoUsuario,
      };
}

class PrecadastroUsuarioUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PrecadastroUsuarioUpdateInput({
    this.id,
    this.email,
    this.tipoUsuario,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      tipoUsuario;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'tipoUsuario': tipoUsuario,
      };
}

class PrecadastroUsuarioUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PrecadastroUsuarioUncheckedUpdateInput({
    this.id,
    this.email,
    this.tipoUsuario,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      tipoUsuario;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'tipoUsuario': tipoUsuario,
      };
}

class PrecadastroUsuarioUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PrecadastroUsuarioUpdateManyMutationInput({
    this.id,
    this.email,
    this.tipoUsuario,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      tipoUsuario;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'tipoUsuario': tipoUsuario,
      };
}

class PrecadastroUsuarioUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PrecadastroUsuarioUncheckedUpdateManyInput({
    this.id,
    this.email,
    this.tipoUsuario,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      tipoUsuario;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'tipoUsuario': tipoUsuario,
      };
}

class PrecadastroUsuarioCountAggregateOutputType {
  const PrecadastroUsuarioCountAggregateOutputType({
    this.id,
    this.email,
    this.tipoUsuario,
    this.$all,
  });

  factory PrecadastroUsuarioCountAggregateOutputType.fromJson(Map json) =>
      PrecadastroUsuarioCountAggregateOutputType(
        id: json['id'],
        email: json['email'],
        tipoUsuario: json['tipoUsuario'],
        $all: json['_all'],
      );

  final int? id;

  final int? email;

  final int? tipoUsuario;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'tipoUsuario': tipoUsuario,
        '_all': $all,
      };
}

class PrecadastroUsuarioMinAggregateOutputType {
  const PrecadastroUsuarioMinAggregateOutputType({
    this.id,
    this.email,
    this.tipoUsuario,
  });

  factory PrecadastroUsuarioMinAggregateOutputType.fromJson(Map json) =>
      PrecadastroUsuarioMinAggregateOutputType(
        id: json['id'],
        email: json['email'],
        tipoUsuario: json['tipoUsuario'],
      );

  final String? id;

  final String? email;

  final String? tipoUsuario;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'tipoUsuario': tipoUsuario,
      };
}

class PrecadastroUsuarioMaxAggregateOutputType {
  const PrecadastroUsuarioMaxAggregateOutputType({
    this.id,
    this.email,
    this.tipoUsuario,
  });

  factory PrecadastroUsuarioMaxAggregateOutputType.fromJson(Map json) =>
      PrecadastroUsuarioMaxAggregateOutputType(
        id: json['id'],
        email: json['email'],
        tipoUsuario: json['tipoUsuario'],
      );

  final String? id;

  final String? email;

  final String? tipoUsuario;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'tipoUsuario': tipoUsuario,
      };
}

class PrecadastroUsuarioGroupByOutputType {
  const PrecadastroUsuarioGroupByOutputType({
    this.id,
    this.email,
    this.tipoUsuario,
    this.$count,
    this.$min,
    this.$max,
  });

  factory PrecadastroUsuarioGroupByOutputType.fromJson(Map json) =>
      PrecadastroUsuarioGroupByOutputType(
        id: json['id'],
        email: json['email'],
        tipoUsuario: json['tipoUsuario'],
        $count: json['_count'] is Map
            ? _i2.PrecadastroUsuarioCountAggregateOutputType.fromJson(
                json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.PrecadastroUsuarioMinAggregateOutputType.fromJson(
                json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.PrecadastroUsuarioMaxAggregateOutputType.fromJson(
                json['_max'])
            : null,
      );

  final String? id;

  final String? email;

  final String? tipoUsuario;

  final _i2.PrecadastroUsuarioCountAggregateOutputType? $count;

  final _i2.PrecadastroUsuarioMinAggregateOutputType? $min;

  final _i2.PrecadastroUsuarioMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'tipoUsuario': tipoUsuario,
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class PrecadastroUsuarioCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PrecadastroUsuarioCountOrderByAggregateInput({
    this.id,
    this.email,
    this.tipoUsuario,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? tipoUsuario;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'tipoUsuario': tipoUsuario,
      };
}

class PrecadastroUsuarioMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PrecadastroUsuarioMaxOrderByAggregateInput({
    this.id,
    this.email,
    this.tipoUsuario,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? tipoUsuario;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'tipoUsuario': tipoUsuario,
      };
}

class PrecadastroUsuarioMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PrecadastroUsuarioMinOrderByAggregateInput({
    this.id,
    this.email,
    this.tipoUsuario,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? tipoUsuario;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'tipoUsuario': tipoUsuario,
      };
}

class PrecadastroUsuarioOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PrecadastroUsuarioOrderByWithAggregationInput({
    this.id,
    this.email,
    this.tipoUsuario,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? tipoUsuario;

  final _i2.PrecadastroUsuarioCountOrderByAggregateInput? $count;

  final _i2.PrecadastroUsuarioMaxOrderByAggregateInput? $max;

  final _i2.PrecadastroUsuarioMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'tipoUsuario': tipoUsuario,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class PrecadastroUsuarioScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PrecadastroUsuarioScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.email,
    this.tipoUsuario,
  });

  final _i1.PrismaUnion<_i2.PrecadastroUsuarioScalarWhereWithAggregatesInput,
      Iterable<_i2.PrecadastroUsuarioScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.PrecadastroUsuarioScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.PrecadastroUsuarioScalarWhereWithAggregatesInput,
      Iterable<_i2.PrecadastroUsuarioScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? tipoUsuario;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'email': email,
        'tipoUsuario': tipoUsuario,
      };
}

class PrecadastroUsuarioCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PrecadastroUsuarioCountAggregateOutputTypeSelect({
    this.id,
    this.email,
    this.tipoUsuario,
    this.$all,
  });

  final bool? id;

  final bool? email;

  final bool? tipoUsuario;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'tipoUsuario': tipoUsuario,
        '_all': $all,
      };
}

class PrecadastroUsuarioGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PrecadastroUsuarioGroupByOutputTypeCountArgs({this.select});

  final _i2.PrecadastroUsuarioCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PrecadastroUsuarioMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PrecadastroUsuarioMinAggregateOutputTypeSelect({
    this.id,
    this.email,
    this.tipoUsuario,
  });

  final bool? id;

  final bool? email;

  final bool? tipoUsuario;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'tipoUsuario': tipoUsuario,
      };
}

class PrecadastroUsuarioGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PrecadastroUsuarioGroupByOutputTypeMinArgs({this.select});

  final _i2.PrecadastroUsuarioMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PrecadastroUsuarioMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PrecadastroUsuarioMaxAggregateOutputTypeSelect({
    this.id,
    this.email,
    this.tipoUsuario,
  });

  final bool? id;

  final bool? email;

  final bool? tipoUsuario;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'tipoUsuario': tipoUsuario,
      };
}

class PrecadastroUsuarioGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PrecadastroUsuarioGroupByOutputTypeMaxArgs({this.select});

  final _i2.PrecadastroUsuarioMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PrecadastroUsuarioGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PrecadastroUsuarioGroupByOutputTypeSelect({
    this.id,
    this.email,
    this.tipoUsuario,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? email;

  final bool? tipoUsuario;

  final _i1.PrismaUnion<bool, _i2.PrecadastroUsuarioGroupByOutputTypeCountArgs>?
      $count;

  final _i1.PrismaUnion<bool, _i2.PrecadastroUsuarioGroupByOutputTypeMinArgs>?
      $min;

  final _i1.PrismaUnion<bool, _i2.PrecadastroUsuarioGroupByOutputTypeMaxArgs>?
      $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'tipoUsuario': tipoUsuario,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregatePrecadastroUsuario {
  const AggregatePrecadastroUsuario({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregatePrecadastroUsuario.fromJson(Map json) =>
      AggregatePrecadastroUsuario(
        $count: json['_count'] is Map
            ? _i2.PrecadastroUsuarioCountAggregateOutputType.fromJson(
                json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.PrecadastroUsuarioMinAggregateOutputType.fromJson(
                json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.PrecadastroUsuarioMaxAggregateOutputType.fromJson(
                json['_max'])
            : null,
      );

  final _i2.PrecadastroUsuarioCountAggregateOutputType? $count;

  final _i2.PrecadastroUsuarioMinAggregateOutputType? $min;

  final _i2.PrecadastroUsuarioMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregatePrecadastroUsuarioCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePrecadastroUsuarioCountArgs({this.select});

  final _i2.PrecadastroUsuarioCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePrecadastroUsuarioMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePrecadastroUsuarioMinArgs({this.select});

  final _i2.PrecadastroUsuarioMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePrecadastroUsuarioMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePrecadastroUsuarioMaxArgs({this.select});

  final _i2.PrecadastroUsuarioMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePrecadastroUsuarioSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePrecadastroUsuarioSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregatePrecadastroUsuarioCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregatePrecadastroUsuarioMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregatePrecadastroUsuarioMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class ReservaCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaCreateInput({
    this.id,
    required this.descricao,
    required this.status,
    required this.espaco,
    required this.solicitante,
    this.periodo,
  });

  final String? id;

  final String descricao;

  final String status;

  final _i2.EspacoCreateNestedOneWithoutReservasInput espaco;

  final _i2.UsuarioCreateNestedOneWithoutReservasInput solicitante;

  final _i2.HorarioCreateNestedManyWithoutReservaSolicitadaInput? periodo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'descricao': descricao,
        'status': status,
        'espaco': espaco,
        'solicitante': solicitante,
        'periodo': periodo,
      };
}

class ReservaUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaUncheckedCreateInput({
    this.id,
    required this.espacoId,
    required this.solicitanteId,
    required this.descricao,
    required this.status,
    this.periodo,
  });

  final String? id;

  final String espacoId;

  final String solicitanteId;

  final String descricao;

  final String status;

  final _i2.HorarioUncheckedCreateNestedManyWithoutReservaSolicitadaInput?
      periodo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
        'periodo': periodo,
      };
}

class ReservaCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaCreateManyInput({
    this.id,
    required this.espacoId,
    required this.solicitanteId,
    required this.descricao,
    required this.status,
  });

  final String? id;

  final String espacoId;

  final String solicitanteId;

  final String descricao;

  final String status;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
      };
}

class ReservaUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaUpdateInput({
    this.id,
    this.descricao,
    this.status,
    this.espaco,
    this.solicitante,
    this.periodo,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      descricao;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? status;

  final _i2.EspacoUpdateOneRequiredWithoutReservasNestedInput? espaco;

  final _i2.UsuarioUpdateOneRequiredWithoutReservasNestedInput? solicitante;

  final _i2.HorarioUpdateManyWithoutReservaSolicitadaNestedInput? periodo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'descricao': descricao,
        'status': status,
        'espaco': espaco,
        'solicitante': solicitante,
        'periodo': periodo,
      };
}

class ReservaUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaUncheckedUpdateInput({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
    this.periodo,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? espacoId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      solicitanteId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      descricao;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? status;

  final _i2.HorarioUncheckedUpdateManyWithoutReservaSolicitadaNestedInput?
      periodo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
        'periodo': periodo,
      };
}

class ReservaUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaUncheckedUpdateManyInput({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? espacoId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      solicitanteId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      descricao;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? status;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
      };
}

class ReservaCountAggregateOutputType {
  const ReservaCountAggregateOutputType({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
    this.$all,
  });

  factory ReservaCountAggregateOutputType.fromJson(Map json) =>
      ReservaCountAggregateOutputType(
        id: json['id'],
        espacoId: json['espacoId'],
        solicitanteId: json['solicitanteId'],
        descricao: json['descricao'],
        status: json['status'],
        $all: json['_all'],
      );

  final int? id;

  final int? espacoId;

  final int? solicitanteId;

  final int? descricao;

  final int? status;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
        '_all': $all,
      };
}

class ReservaMinAggregateOutputType {
  const ReservaMinAggregateOutputType({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
  });

  factory ReservaMinAggregateOutputType.fromJson(Map json) =>
      ReservaMinAggregateOutputType(
        id: json['id'],
        espacoId: json['espacoId'],
        solicitanteId: json['solicitanteId'],
        descricao: json['descricao'],
        status: json['status'],
      );

  final String? id;

  final String? espacoId;

  final String? solicitanteId;

  final String? descricao;

  final String? status;

  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
      };
}

class ReservaMaxAggregateOutputType {
  const ReservaMaxAggregateOutputType({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
  });

  factory ReservaMaxAggregateOutputType.fromJson(Map json) =>
      ReservaMaxAggregateOutputType(
        id: json['id'],
        espacoId: json['espacoId'],
        solicitanteId: json['solicitanteId'],
        descricao: json['descricao'],
        status: json['status'],
      );

  final String? id;

  final String? espacoId;

  final String? solicitanteId;

  final String? descricao;

  final String? status;

  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
      };
}

class ReservaGroupByOutputType {
  const ReservaGroupByOutputType({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
    this.$count,
    this.$min,
    this.$max,
  });

  factory ReservaGroupByOutputType.fromJson(Map json) =>
      ReservaGroupByOutputType(
        id: json['id'],
        espacoId: json['espacoId'],
        solicitanteId: json['solicitanteId'],
        descricao: json['descricao'],
        status: json['status'],
        $count: json['_count'] is Map
            ? _i2.ReservaCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.ReservaMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.ReservaMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? espacoId;

  final String? solicitanteId;

  final String? descricao;

  final String? status;

  final _i2.ReservaCountAggregateOutputType? $count;

  final _i2.ReservaMinAggregateOutputType? $min;

  final _i2.ReservaMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class ReservaCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaCountOrderByAggregateInput({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? espacoId;

  final _i2.SortOrder? solicitanteId;

  final _i2.SortOrder? descricao;

  final _i2.SortOrder? status;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
      };
}

class ReservaMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaMaxOrderByAggregateInput({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? espacoId;

  final _i2.SortOrder? solicitanteId;

  final _i2.SortOrder? descricao;

  final _i2.SortOrder? status;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
      };
}

class ReservaMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaMinOrderByAggregateInput({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? espacoId;

  final _i2.SortOrder? solicitanteId;

  final _i2.SortOrder? descricao;

  final _i2.SortOrder? status;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
      };
}

class ReservaOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaOrderByWithAggregationInput({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? espacoId;

  final _i2.SortOrder? solicitanteId;

  final _i2.SortOrder? descricao;

  final _i2.SortOrder? status;

  final _i2.ReservaCountOrderByAggregateInput? $count;

  final _i2.ReservaMaxOrderByAggregateInput? $max;

  final _i2.ReservaMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class ReservaScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
  });

  final _i1.PrismaUnion<_i2.ReservaScalarWhereWithAggregatesInput,
      Iterable<_i2.ReservaScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.ReservaScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.ReservaScalarWhereWithAggregatesInput,
      Iterable<_i2.ReservaScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? espacoId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? solicitanteId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? descricao;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? status;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
      };
}

class ReservaCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaCountAggregateOutputTypeSelect({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
    this.$all,
  });

  final bool? id;

  final bool? espacoId;

  final bool? solicitanteId;

  final bool? descricao;

  final bool? status;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
        '_all': $all,
      };
}

class ReservaGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaGroupByOutputTypeCountArgs({this.select});

  final _i2.ReservaCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ReservaMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaMinAggregateOutputTypeSelect({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
  });

  final bool? id;

  final bool? espacoId;

  final bool? solicitanteId;

  final bool? descricao;

  final bool? status;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
      };
}

class ReservaGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaGroupByOutputTypeMinArgs({this.select});

  final _i2.ReservaMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ReservaMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaMaxAggregateOutputTypeSelect({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
  });

  final bool? id;

  final bool? espacoId;

  final bool? solicitanteId;

  final bool? descricao;

  final bool? status;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
      };
}

class ReservaGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaGroupByOutputTypeMaxArgs({this.select});

  final _i2.ReservaMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ReservaGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ReservaGroupByOutputTypeSelect({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? espacoId;

  final bool? solicitanteId;

  final bool? descricao;

  final bool? status;

  final _i1.PrismaUnion<bool, _i2.ReservaGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.ReservaGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.ReservaGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateReserva {
  const AggregateReserva({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateReserva.fromJson(Map json) => AggregateReserva(
        $count: json['_count'] is Map
            ? _i2.ReservaCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.ReservaMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.ReservaMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.ReservaCountAggregateOutputType? $count;

  final _i2.ReservaMinAggregateOutputType? $min;

  final _i2.ReservaMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateReservaCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateReservaCountArgs({this.select});

  final _i2.ReservaCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateReservaMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateReservaMinArgs({this.select});

  final _i2.ReservaMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateReservaMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateReservaMaxArgs({this.select});

  final _i2.ReservaMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateReservaSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateReservaSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateReservaCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateReservaMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateReservaMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class ServicoCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoCreateInput({
    this.id,
    required this.descricao,
    required this.status,
    required this.espaco,
    required this.solicitante,
    this.periodo,
  });

  final String? id;

  final String descricao;

  final String status;

  final _i2.EspacoCreateNestedOneWithoutServicosInput espaco;

  final _i2.UsuarioCreateNestedOneWithoutServicosInput solicitante;

  final _i2.HorarioCreateNestedManyWithoutServicoSolicitadoInput? periodo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'descricao': descricao,
        'status': status,
        'espaco': espaco,
        'solicitante': solicitante,
        'periodo': periodo,
      };
}

class ServicoUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoUncheckedCreateInput({
    this.id,
    required this.espacoId,
    required this.solicitanteId,
    required this.descricao,
    required this.status,
    this.periodo,
  });

  final String? id;

  final String espacoId;

  final String solicitanteId;

  final String descricao;

  final String status;

  final _i2.HorarioUncheckedCreateNestedManyWithoutServicoSolicitadoInput?
      periodo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
        'periodo': periodo,
      };
}

class ServicoCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoCreateManyInput({
    this.id,
    required this.espacoId,
    required this.solicitanteId,
    required this.descricao,
    required this.status,
  });

  final String? id;

  final String espacoId;

  final String solicitanteId;

  final String descricao;

  final String status;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
      };
}

class ServicoUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoUpdateInput({
    this.id,
    this.descricao,
    this.status,
    this.espaco,
    this.solicitante,
    this.periodo,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      descricao;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? status;

  final _i2.EspacoUpdateOneRequiredWithoutServicosNestedInput? espaco;

  final _i2.UsuarioUpdateOneRequiredWithoutServicosNestedInput? solicitante;

  final _i2.HorarioUpdateManyWithoutServicoSolicitadoNestedInput? periodo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'descricao': descricao,
        'status': status,
        'espaco': espaco,
        'solicitante': solicitante,
        'periodo': periodo,
      };
}

class ServicoUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoUncheckedUpdateInput({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
    this.periodo,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? espacoId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      solicitanteId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      descricao;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? status;

  final _i2.HorarioUncheckedUpdateManyWithoutServicoSolicitadoNestedInput?
      periodo;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
        'periodo': periodo,
      };
}

class ServicoUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoUncheckedUpdateManyInput({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? espacoId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      solicitanteId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      descricao;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? status;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
      };
}

class ServicoCountAggregateOutputType {
  const ServicoCountAggregateOutputType({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
    this.$all,
  });

  factory ServicoCountAggregateOutputType.fromJson(Map json) =>
      ServicoCountAggregateOutputType(
        id: json['id'],
        espacoId: json['espacoId'],
        solicitanteId: json['solicitanteId'],
        descricao: json['descricao'],
        status: json['status'],
        $all: json['_all'],
      );

  final int? id;

  final int? espacoId;

  final int? solicitanteId;

  final int? descricao;

  final int? status;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
        '_all': $all,
      };
}

class ServicoMinAggregateOutputType {
  const ServicoMinAggregateOutputType({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
  });

  factory ServicoMinAggregateOutputType.fromJson(Map json) =>
      ServicoMinAggregateOutputType(
        id: json['id'],
        espacoId: json['espacoId'],
        solicitanteId: json['solicitanteId'],
        descricao: json['descricao'],
        status: json['status'],
      );

  final String? id;

  final String? espacoId;

  final String? solicitanteId;

  final String? descricao;

  final String? status;

  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
      };
}

class ServicoMaxAggregateOutputType {
  const ServicoMaxAggregateOutputType({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
  });

  factory ServicoMaxAggregateOutputType.fromJson(Map json) =>
      ServicoMaxAggregateOutputType(
        id: json['id'],
        espacoId: json['espacoId'],
        solicitanteId: json['solicitanteId'],
        descricao: json['descricao'],
        status: json['status'],
      );

  final String? id;

  final String? espacoId;

  final String? solicitanteId;

  final String? descricao;

  final String? status;

  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
      };
}

class ServicoGroupByOutputType {
  const ServicoGroupByOutputType({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
    this.$count,
    this.$min,
    this.$max,
  });

  factory ServicoGroupByOutputType.fromJson(Map json) =>
      ServicoGroupByOutputType(
        id: json['id'],
        espacoId: json['espacoId'],
        solicitanteId: json['solicitanteId'],
        descricao: json['descricao'],
        status: json['status'],
        $count: json['_count'] is Map
            ? _i2.ServicoCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.ServicoMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.ServicoMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? espacoId;

  final String? solicitanteId;

  final String? descricao;

  final String? status;

  final _i2.ServicoCountAggregateOutputType? $count;

  final _i2.ServicoMinAggregateOutputType? $min;

  final _i2.ServicoMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class ServicoCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoCountOrderByAggregateInput({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? espacoId;

  final _i2.SortOrder? solicitanteId;

  final _i2.SortOrder? descricao;

  final _i2.SortOrder? status;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
      };
}

class ServicoMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoMaxOrderByAggregateInput({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? espacoId;

  final _i2.SortOrder? solicitanteId;

  final _i2.SortOrder? descricao;

  final _i2.SortOrder? status;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
      };
}

class ServicoMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoMinOrderByAggregateInput({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? espacoId;

  final _i2.SortOrder? solicitanteId;

  final _i2.SortOrder? descricao;

  final _i2.SortOrder? status;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
      };
}

class ServicoOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoOrderByWithAggregationInput({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? espacoId;

  final _i2.SortOrder? solicitanteId;

  final _i2.SortOrder? descricao;

  final _i2.SortOrder? status;

  final _i2.ServicoCountOrderByAggregateInput? $count;

  final _i2.ServicoMaxOrderByAggregateInput? $max;

  final _i2.ServicoMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class ServicoScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
  });

  final _i1.PrismaUnion<_i2.ServicoScalarWhereWithAggregatesInput,
      Iterable<_i2.ServicoScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.ServicoScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.ServicoScalarWhereWithAggregatesInput,
      Iterable<_i2.ServicoScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? espacoId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? solicitanteId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? descricao;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? status;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
      };
}

class ServicoCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoCountAggregateOutputTypeSelect({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
    this.$all,
  });

  final bool? id;

  final bool? espacoId;

  final bool? solicitanteId;

  final bool? descricao;

  final bool? status;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
        '_all': $all,
      };
}

class ServicoGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoGroupByOutputTypeCountArgs({this.select});

  final _i2.ServicoCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ServicoMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoMinAggregateOutputTypeSelect({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
  });

  final bool? id;

  final bool? espacoId;

  final bool? solicitanteId;

  final bool? descricao;

  final bool? status;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
      };
}

class ServicoGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoGroupByOutputTypeMinArgs({this.select});

  final _i2.ServicoMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ServicoMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoMaxAggregateOutputTypeSelect({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
  });

  final bool? id;

  final bool? espacoId;

  final bool? solicitanteId;

  final bool? descricao;

  final bool? status;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
      };
}

class ServicoGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoGroupByOutputTypeMaxArgs({this.select});

  final _i2.ServicoMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ServicoGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ServicoGroupByOutputTypeSelect({
    this.id,
    this.espacoId,
    this.solicitanteId,
    this.descricao,
    this.status,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? espacoId;

  final bool? solicitanteId;

  final bool? descricao;

  final bool? status;

  final _i1.PrismaUnion<bool, _i2.ServicoGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.ServicoGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.ServicoGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateServico {
  const AggregateServico({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateServico.fromJson(Map json) => AggregateServico(
        $count: json['_count'] is Map
            ? _i2.ServicoCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.ServicoMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.ServicoMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.ServicoCountAggregateOutputType? $count;

  final _i2.ServicoMinAggregateOutputType? $min;

  final _i2.ServicoMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateServicoCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateServicoCountArgs({this.select});

  final _i2.ServicoCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateServicoMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateServicoMinArgs({this.select});

  final _i2.ServicoMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateServicoMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateServicoMaxArgs({this.select});

  final _i2.ServicoMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateServicoSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateServicoSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateServicoCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateServicoMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateServicoMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

enum UsuarioScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'Usuario'),
  nome<String>('nome', 'Usuario'),
  email<String>('email', 'Usuario'),
  telefone<String>('telefone', 'Usuario'),
  photoUrl<String>('photoUrl', 'Usuario'),
  tipoUsuario<String>('tipoUsuario', 'Usuario'),
  departamentoId<String>('departamentoId', 'Usuario'),
  sigla<String>('sigla', 'Usuario'),
  isDepartamento<bool>('isDepartamento', 'Usuario');

  const UsuarioScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class UsuarioCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioCreateInput({
    this.id,
    required this.nome,
    required this.email,
    this.telefone,
    required this.photoUrl,
    required this.tipoUsuario,
    required this.sigla,
    required this.isDepartamento,
    this.departamento,
    this.departamentoSetor,
    this.gestorReservaHorarios,
    this.gestorServicoHorarios,
    this.reservas,
    this.servicos,
  });

  final String? id;

  final String nome;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? telefone;

  final String photoUrl;

  final String tipoUsuario;

  final String sigla;

  final bool isDepartamento;

  final _i2.UsuarioCreateNestedOneWithoutDepartamentoSetorInput? departamento;

  final _i2.UsuarioCreateNestedOneWithoutDepartamentoInput? departamentoSetor;

  final _i2.HorarioCreateNestedManyWithoutGestorReservaInput?
      gestorReservaHorarios;

  final _i2.HorarioCreateNestedManyWithoutGestorServicoInput?
      gestorServicoHorarios;

  final _i2.ReservaCreateNestedManyWithoutSolicitanteInput? reservas;

  final _i2.ServicoCreateNestedManyWithoutSolicitanteInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'departamento': departamento,
        'departamentoSetor': departamentoSetor,
        'gestorReservaHorarios': gestorReservaHorarios,
        'gestorServicoHorarios': gestorServicoHorarios,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class UsuarioUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUncheckedCreateInput({
    this.id,
    required this.nome,
    required this.email,
    this.telefone,
    required this.photoUrl,
    required this.tipoUsuario,
    this.departamentoId,
    required this.sigla,
    required this.isDepartamento,
    this.departamentoSetor,
    this.gestorReservaHorarios,
    this.gestorServicoHorarios,
    this.reservas,
    this.servicos,
  });

  final String? id;

  final String nome;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? telefone;

  final String photoUrl;

  final String tipoUsuario;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? departamentoId;

  final String sigla;

  final bool isDepartamento;

  final _i2.UsuarioUncheckedCreateNestedOneWithoutDepartamentoInput?
      departamentoSetor;

  final _i2.HorarioUncheckedCreateNestedManyWithoutGestorReservaInput?
      gestorReservaHorarios;

  final _i2.HorarioUncheckedCreateNestedManyWithoutGestorServicoInput?
      gestorServicoHorarios;

  final _i2.ReservaUncheckedCreateNestedManyWithoutSolicitanteInput? reservas;

  final _i2.ServicoUncheckedCreateNestedManyWithoutSolicitanteInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'departamentoId': departamentoId,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'departamentoSetor': departamentoSetor,
        'gestorReservaHorarios': gestorReservaHorarios,
        'gestorServicoHorarios': gestorServicoHorarios,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class UsuarioCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioCreateManyInput({
    this.id,
    required this.nome,
    required this.email,
    this.telefone,
    required this.photoUrl,
    required this.tipoUsuario,
    this.departamentoId,
    required this.sigla,
    required this.isDepartamento,
  });

  final String? id;

  final String nome;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? telefone;

  final String photoUrl;

  final String tipoUsuario;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? departamentoId;

  final String sigla;

  final bool isDepartamento;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'departamentoId': departamentoId,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
      };
}

class UsuarioUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUpdateInput({
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.sigla,
    this.isDepartamento,
    this.departamento,
    this.departamentoSetor,
    this.gestorReservaHorarios,
    this.gestorServicoHorarios,
    this.reservas,
    this.servicos,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? telefone;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? photoUrl;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      tipoUsuario;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? sigla;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>?
      isDepartamento;

  final _i2.UsuarioUpdateOneWithoutDepartamentoSetorNestedInput? departamento;

  final _i2.UsuarioUpdateOneWithoutDepartamentoNestedInput? departamentoSetor;

  final _i2.HorarioUpdateManyWithoutGestorReservaNestedInput?
      gestorReservaHorarios;

  final _i2.HorarioUpdateManyWithoutGestorServicoNestedInput?
      gestorServicoHorarios;

  final _i2.ReservaUpdateManyWithoutSolicitanteNestedInput? reservas;

  final _i2.ServicoUpdateManyWithoutSolicitanteNestedInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'departamento': departamento,
        'departamentoSetor': departamentoSetor,
        'gestorReservaHorarios': gestorReservaHorarios,
        'gestorServicoHorarios': gestorServicoHorarios,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class UsuarioUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUncheckedUpdateInput({
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.departamentoId,
    this.sigla,
    this.isDepartamento,
    this.departamentoSetor,
    this.gestorReservaHorarios,
    this.gestorServicoHorarios,
    this.reservas,
    this.servicos,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? telefone;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? photoUrl;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      tipoUsuario;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? departamentoId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? sigla;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>?
      isDepartamento;

  final _i2.UsuarioUncheckedUpdateOneWithoutDepartamentoNestedInput?
      departamentoSetor;

  final _i2.HorarioUncheckedUpdateManyWithoutGestorReservaNestedInput?
      gestorReservaHorarios;

  final _i2.HorarioUncheckedUpdateManyWithoutGestorServicoNestedInput?
      gestorServicoHorarios;

  final _i2.ReservaUncheckedUpdateManyWithoutSolicitanteNestedInput? reservas;

  final _i2.ServicoUncheckedUpdateManyWithoutSolicitanteNestedInput? servicos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'departamentoId': departamentoId,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        'departamentoSetor': departamentoSetor,
        'gestorReservaHorarios': gestorReservaHorarios,
        'gestorServicoHorarios': gestorServicoHorarios,
        'reservas': reservas,
        'servicos': servicos,
      };
}

class UsuarioUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUpdateManyMutationInput({
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.sigla,
    this.isDepartamento,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? telefone;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? photoUrl;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      tipoUsuario;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? sigla;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>?
      isDepartamento;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
      };
}

class UsuarioUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioUncheckedUpdateManyInput({
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.departamentoId,
    this.sigla,
    this.isDepartamento,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? telefone;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? photoUrl;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      tipoUsuario;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? departamentoId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? sigla;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>?
      isDepartamento;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'departamentoId': departamentoId,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
      };
}

class UsuarioCountAggregateOutputType {
  const UsuarioCountAggregateOutputType({
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.departamentoId,
    this.sigla,
    this.isDepartamento,
    this.$all,
  });

  factory UsuarioCountAggregateOutputType.fromJson(Map json) =>
      UsuarioCountAggregateOutputType(
        id: json['id'],
        nome: json['nome'],
        email: json['email'],
        telefone: json['telefone'],
        photoUrl: json['photoUrl'],
        tipoUsuario: json['tipoUsuario'],
        departamentoId: json['departamentoId'],
        sigla: json['sigla'],
        isDepartamento: json['isDepartamento'],
        $all: json['_all'],
      );

  final int? id;

  final int? nome;

  final int? email;

  final int? telefone;

  final int? photoUrl;

  final int? tipoUsuario;

  final int? departamentoId;

  final int? sigla;

  final int? isDepartamento;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'departamentoId': departamentoId,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        '_all': $all,
      };
}

class UsuarioMinAggregateOutputType {
  const UsuarioMinAggregateOutputType({
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.departamentoId,
    this.sigla,
    this.isDepartamento,
  });

  factory UsuarioMinAggregateOutputType.fromJson(Map json) =>
      UsuarioMinAggregateOutputType(
        id: json['id'],
        nome: json['nome'],
        email: json['email'],
        telefone: json['telefone'],
        photoUrl: json['photoUrl'],
        tipoUsuario: json['tipoUsuario'],
        departamentoId: json['departamentoId'],
        sigla: json['sigla'],
        isDepartamento: json['isDepartamento'],
      );

  final String? id;

  final String? nome;

  final String? email;

  final String? telefone;

  final String? photoUrl;

  final String? tipoUsuario;

  final String? departamentoId;

  final String? sigla;

  final bool? isDepartamento;

  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'departamentoId': departamentoId,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
      };
}

class UsuarioMaxAggregateOutputType {
  const UsuarioMaxAggregateOutputType({
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.departamentoId,
    this.sigla,
    this.isDepartamento,
  });

  factory UsuarioMaxAggregateOutputType.fromJson(Map json) =>
      UsuarioMaxAggregateOutputType(
        id: json['id'],
        nome: json['nome'],
        email: json['email'],
        telefone: json['telefone'],
        photoUrl: json['photoUrl'],
        tipoUsuario: json['tipoUsuario'],
        departamentoId: json['departamentoId'],
        sigla: json['sigla'],
        isDepartamento: json['isDepartamento'],
      );

  final String? id;

  final String? nome;

  final String? email;

  final String? telefone;

  final String? photoUrl;

  final String? tipoUsuario;

  final String? departamentoId;

  final String? sigla;

  final bool? isDepartamento;

  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'departamentoId': departamentoId,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
      };
}

class UsuarioGroupByOutputType {
  const UsuarioGroupByOutputType({
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.departamentoId,
    this.sigla,
    this.isDepartamento,
    this.$count,
    this.$min,
    this.$max,
  });

  factory UsuarioGroupByOutputType.fromJson(Map json) =>
      UsuarioGroupByOutputType(
        id: json['id'],
        nome: json['nome'],
        email: json['email'],
        telefone: json['telefone'],
        photoUrl: json['photoUrl'],
        tipoUsuario: json['tipoUsuario'],
        departamentoId: json['departamentoId'],
        sigla: json['sigla'],
        isDepartamento: json['isDepartamento'],
        $count: json['_count'] is Map
            ? _i2.UsuarioCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.UsuarioMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.UsuarioMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? nome;

  final String? email;

  final String? telefone;

  final String? photoUrl;

  final String? tipoUsuario;

  final String? departamentoId;

  final String? sigla;

  final bool? isDepartamento;

  final _i2.UsuarioCountAggregateOutputType? $count;

  final _i2.UsuarioMinAggregateOutputType? $min;

  final _i2.UsuarioMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'departamentoId': departamentoId,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class UsuarioCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioCountOrderByAggregateInput({
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.departamentoId,
    this.sigla,
    this.isDepartamento,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? nome;

  final _i2.SortOrder? email;

  final _i2.SortOrder? telefone;

  final _i2.SortOrder? photoUrl;

  final _i2.SortOrder? tipoUsuario;

  final _i2.SortOrder? departamentoId;

  final _i2.SortOrder? sigla;

  final _i2.SortOrder? isDepartamento;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'departamentoId': departamentoId,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
      };
}

class UsuarioMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioMaxOrderByAggregateInput({
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.departamentoId,
    this.sigla,
    this.isDepartamento,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? nome;

  final _i2.SortOrder? email;

  final _i2.SortOrder? telefone;

  final _i2.SortOrder? photoUrl;

  final _i2.SortOrder? tipoUsuario;

  final _i2.SortOrder? departamentoId;

  final _i2.SortOrder? sigla;

  final _i2.SortOrder? isDepartamento;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'departamentoId': departamentoId,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
      };
}

class UsuarioMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioMinOrderByAggregateInput({
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.departamentoId,
    this.sigla,
    this.isDepartamento,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? nome;

  final _i2.SortOrder? email;

  final _i2.SortOrder? telefone;

  final _i2.SortOrder? photoUrl;

  final _i2.SortOrder? tipoUsuario;

  final _i2.SortOrder? departamentoId;

  final _i2.SortOrder? sigla;

  final _i2.SortOrder? isDepartamento;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'departamentoId': departamentoId,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
      };
}

class UsuarioOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioOrderByWithAggregationInput({
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.departamentoId,
    this.sigla,
    this.isDepartamento,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? nome;

  final _i2.SortOrder? email;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? telefone;

  final _i2.SortOrder? photoUrl;

  final _i2.SortOrder? tipoUsuario;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? departamentoId;

  final _i2.SortOrder? sigla;

  final _i2.SortOrder? isDepartamento;

  final _i2.UsuarioCountOrderByAggregateInput? $count;

  final _i2.UsuarioMaxOrderByAggregateInput? $max;

  final _i2.UsuarioMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'departamentoId': departamentoId,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class UsuarioScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.departamentoId,
    this.sigla,
    this.isDepartamento,
  });

  final _i1.PrismaUnion<_i2.UsuarioScalarWhereWithAggregatesInput,
      Iterable<_i2.UsuarioScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.UsuarioScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.UsuarioScalarWhereWithAggregatesInput,
      Iterable<_i2.UsuarioScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? nome;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? telefone;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? photoUrl;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? tipoUsuario;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? departamentoId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? sigla;

  final _i1.PrismaUnion<_i2.BoolWithAggregatesFilter, bool>? isDepartamento;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'departamentoId': departamentoId,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
      };
}

class UsuarioCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioCountAggregateOutputTypeSelect({
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.departamentoId,
    this.sigla,
    this.isDepartamento,
    this.$all,
  });

  final bool? id;

  final bool? nome;

  final bool? email;

  final bool? telefone;

  final bool? photoUrl;

  final bool? tipoUsuario;

  final bool? departamentoId;

  final bool? sigla;

  final bool? isDepartamento;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'departamentoId': departamentoId,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        '_all': $all,
      };
}

class UsuarioGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioGroupByOutputTypeCountArgs({this.select});

  final _i2.UsuarioCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UsuarioMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioMinAggregateOutputTypeSelect({
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.departamentoId,
    this.sigla,
    this.isDepartamento,
  });

  final bool? id;

  final bool? nome;

  final bool? email;

  final bool? telefone;

  final bool? photoUrl;

  final bool? tipoUsuario;

  final bool? departamentoId;

  final bool? sigla;

  final bool? isDepartamento;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'departamentoId': departamentoId,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
      };
}

class UsuarioGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioGroupByOutputTypeMinArgs({this.select});

  final _i2.UsuarioMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UsuarioMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioMaxAggregateOutputTypeSelect({
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.departamentoId,
    this.sigla,
    this.isDepartamento,
  });

  final bool? id;

  final bool? nome;

  final bool? email;

  final bool? telefone;

  final bool? photoUrl;

  final bool? tipoUsuario;

  final bool? departamentoId;

  final bool? sigla;

  final bool? isDepartamento;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'departamentoId': departamentoId,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
      };
}

class UsuarioGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioGroupByOutputTypeMaxArgs({this.select});

  final _i2.UsuarioMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UsuarioGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsuarioGroupByOutputTypeSelect({
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.photoUrl,
    this.tipoUsuario,
    this.departamentoId,
    this.sigla,
    this.isDepartamento,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? nome;

  final bool? email;

  final bool? telefone;

  final bool? photoUrl;

  final bool? tipoUsuario;

  final bool? departamentoId;

  final bool? sigla;

  final bool? isDepartamento;

  final _i1.PrismaUnion<bool, _i2.UsuarioGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.UsuarioGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.UsuarioGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'email': email,
        'telefone': telefone,
        'photoUrl': photoUrl,
        'tipoUsuario': tipoUsuario,
        'departamentoId': departamentoId,
        'sigla': sigla,
        'isDepartamento': isDepartamento,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateUsuario {
  const AggregateUsuario({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateUsuario.fromJson(Map json) => AggregateUsuario(
        $count: json['_count'] is Map
            ? _i2.UsuarioCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.UsuarioMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.UsuarioMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.UsuarioCountAggregateOutputType? $count;

  final _i2.UsuarioMinAggregateOutputType? $min;

  final _i2.UsuarioMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateUsuarioCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUsuarioCountArgs({this.select});

  final _i2.UsuarioCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUsuarioMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUsuarioMinArgs({this.select});

  final _i2.UsuarioMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUsuarioMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUsuarioMaxArgs({this.select});

  final _i2.UsuarioMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUsuarioSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUsuarioSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateUsuarioCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateUsuarioMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateUsuarioMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}
