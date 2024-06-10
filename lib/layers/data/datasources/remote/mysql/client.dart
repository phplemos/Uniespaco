// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/dmmf.dart' as _i5;
import 'package:orm/engines/binary.dart' as _i4;
import 'package:orm/orm.dart' as _i1;

import 'model.dart' as _i2;
import 'prisma.dart' as _i3;

class TurnoDelegate {
  const TurnoDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Turno?> findUnique({
    required _i3.TurnoWhereUniqueInput where,
    _i3.TurnoSelect? select,
    _i3.TurnoInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Turno',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Turno?>(
      action: 'findUniqueTurno',
      result: result,
      factory: (e) => e != null ? _i2.Turno.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Turno> findUniqueOrThrow({
    required _i3.TurnoWhereUniqueInput where,
    _i3.TurnoSelect? select,
    _i3.TurnoInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Turno',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Turno>(
      action: 'findUniqueTurnoOrThrow',
      result: result,
      factory: (e) => _i2.Turno.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Turno?> findFirst({
    _i3.TurnoWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TurnoOrderByWithRelationInput>,
            _i3.TurnoOrderByWithRelationInput>?
        orderBy,
    _i3.TurnoWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.TurnoScalar, Iterable<_i3.TurnoScalar>>? distinct,
    _i3.TurnoSelect? select,
    _i3.TurnoInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Turno',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Turno?>(
      action: 'findFirstTurno',
      result: result,
      factory: (e) => e != null ? _i2.Turno.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Turno> findFirstOrThrow({
    _i3.TurnoWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TurnoOrderByWithRelationInput>,
            _i3.TurnoOrderByWithRelationInput>?
        orderBy,
    _i3.TurnoWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.TurnoScalar, Iterable<_i3.TurnoScalar>>? distinct,
    _i3.TurnoSelect? select,
    _i3.TurnoInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Turno',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Turno>(
      action: 'findFirstTurnoOrThrow',
      result: result,
      factory: (e) => _i2.Turno.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Turno>> findMany({
    _i3.TurnoWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TurnoOrderByWithRelationInput>,
            _i3.TurnoOrderByWithRelationInput>?
        orderBy,
    _i3.TurnoWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.TurnoScalar, Iterable<_i3.TurnoScalar>>? distinct,
    _i3.TurnoSelect? select,
    _i3.TurnoInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Turno',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Turno>>(
      action: 'findManyTurno',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Turno.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Turno> create({
    required _i1
        .PrismaUnion<_i3.TurnoCreateInput, _i3.TurnoUncheckedCreateInput>
        data,
    _i3.TurnoSelect? select,
    _i3.TurnoInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Turno',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Turno>(
      action: 'createOneTurno',
      result: result,
      factory: (e) => _i2.Turno.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.TurnoCreateManyInput,
            Iterable<_i3.TurnoCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Turno',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyTurno',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Turno?> update({
    required _i1
        .PrismaUnion<_i3.TurnoUpdateInput, _i3.TurnoUncheckedUpdateInput>
        data,
    required _i3.TurnoWhereUniqueInput where,
    _i3.TurnoSelect? select,
    _i3.TurnoInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Turno',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Turno?>(
      action: 'updateOneTurno',
      result: result,
      factory: (e) => e != null ? _i2.Turno.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.TurnoUpdateManyMutationInput,
            _i3.TurnoUncheckedUpdateManyInput>
        data,
    _i3.TurnoWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Turno',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyTurno',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Turno> upsert({
    required _i3.TurnoWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.TurnoCreateInput, _i3.TurnoUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.TurnoUpdateInput, _i3.TurnoUncheckedUpdateInput>
        update,
    _i3.TurnoSelect? select,
    _i3.TurnoInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Turno',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Turno>(
      action: 'upsertOneTurno',
      result: result,
      factory: (e) => _i2.Turno.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Turno?> delete({
    required _i3.TurnoWhereUniqueInput where,
    _i3.TurnoSelect? select,
    _i3.TurnoInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Turno',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Turno?>(
      action: 'deleteOneTurno',
      result: result,
      factory: (e) => e != null ? _i2.Turno.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.TurnoWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Turno',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyTurno',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.TurnoGroupByOutputType>> groupBy({
    _i3.TurnoWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TurnoOrderByWithAggregationInput>,
            _i3.TurnoOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.TurnoScalar>, _i3.TurnoScalar> by,
    _i3.TurnoScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.TurnoGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Turno',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.TurnoGroupByOutputType>>(
      action: 'groupByTurno',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.TurnoGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateTurno> aggregate({
    _i3.TurnoWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TurnoOrderByWithRelationInput>,
            _i3.TurnoOrderByWithRelationInput>?
        orderBy,
    _i3.TurnoWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateTurnoSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Turno',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateTurno>(
      action: 'aggregateTurno',
      result: result,
      factory: (e) => _i3.AggregateTurno.fromJson(e),
    );
  }
}

class AgendaDelegate {
  const AgendaDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Agenda?> findUnique({
    required _i3.AgendaWhereUniqueInput where,
    _i3.AgendaSelect? select,
    _i3.AgendaInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Agenda',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Agenda?>(
      action: 'findUniqueAgenda',
      result: result,
      factory: (e) => e != null ? _i2.Agenda.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Agenda> findUniqueOrThrow({
    required _i3.AgendaWhereUniqueInput where,
    _i3.AgendaSelect? select,
    _i3.AgendaInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Agenda',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Agenda>(
      action: 'findUniqueAgendaOrThrow',
      result: result,
      factory: (e) => _i2.Agenda.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Agenda?> findFirst({
    _i3.AgendaWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.AgendaOrderByWithRelationInput>,
            _i3.AgendaOrderByWithRelationInput>?
        orderBy,
    _i3.AgendaWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.AgendaScalar, Iterable<_i3.AgendaScalar>>? distinct,
    _i3.AgendaSelect? select,
    _i3.AgendaInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Agenda',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Agenda?>(
      action: 'findFirstAgenda',
      result: result,
      factory: (e) => e != null ? _i2.Agenda.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Agenda> findFirstOrThrow({
    _i3.AgendaWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.AgendaOrderByWithRelationInput>,
            _i3.AgendaOrderByWithRelationInput>?
        orderBy,
    _i3.AgendaWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.AgendaScalar, Iterable<_i3.AgendaScalar>>? distinct,
    _i3.AgendaSelect? select,
    _i3.AgendaInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Agenda',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Agenda>(
      action: 'findFirstAgendaOrThrow',
      result: result,
      factory: (e) => _i2.Agenda.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Agenda>> findMany({
    _i3.AgendaWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.AgendaOrderByWithRelationInput>,
            _i3.AgendaOrderByWithRelationInput>?
        orderBy,
    _i3.AgendaWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.AgendaScalar, Iterable<_i3.AgendaScalar>>? distinct,
    _i3.AgendaSelect? select,
    _i3.AgendaInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Agenda',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Agenda>>(
      action: 'findManyAgenda',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Agenda.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Agenda> create({
    required _i1
        .PrismaUnion<_i3.AgendaCreateInput, _i3.AgendaUncheckedCreateInput>
        data,
    _i3.AgendaSelect? select,
    _i3.AgendaInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Agenda',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Agenda>(
      action: 'createOneAgenda',
      result: result,
      factory: (e) => _i2.Agenda.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.AgendaCreateManyInput,
            Iterable<_i3.AgendaCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Agenda',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyAgenda',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Agenda?> update({
    required _i1
        .PrismaUnion<_i3.AgendaUpdateInput, _i3.AgendaUncheckedUpdateInput>
        data,
    required _i3.AgendaWhereUniqueInput where,
    _i3.AgendaSelect? select,
    _i3.AgendaInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Agenda',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Agenda?>(
      action: 'updateOneAgenda',
      result: result,
      factory: (e) => e != null ? _i2.Agenda.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.AgendaUpdateManyMutationInput,
            _i3.AgendaUncheckedUpdateManyInput>
        data,
    _i3.AgendaWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Agenda',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyAgenda',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Agenda> upsert({
    required _i3.AgendaWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.AgendaCreateInput, _i3.AgendaUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.AgendaUpdateInput, _i3.AgendaUncheckedUpdateInput>
        update,
    _i3.AgendaSelect? select,
    _i3.AgendaInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Agenda',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Agenda>(
      action: 'upsertOneAgenda',
      result: result,
      factory: (e) => _i2.Agenda.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Agenda?> delete({
    required _i3.AgendaWhereUniqueInput where,
    _i3.AgendaSelect? select,
    _i3.AgendaInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Agenda',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Agenda?>(
      action: 'deleteOneAgenda',
      result: result,
      factory: (e) => e != null ? _i2.Agenda.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.AgendaWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Agenda',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyAgenda',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.AgendaGroupByOutputType>> groupBy({
    _i3.AgendaWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.AgendaOrderByWithAggregationInput>,
            _i3.AgendaOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.AgendaScalar>, _i3.AgendaScalar> by,
    _i3.AgendaScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.AgendaGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Agenda',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.AgendaGroupByOutputType>>(
      action: 'groupByAgenda',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.AgendaGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateAgenda> aggregate({
    _i3.AgendaWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.AgendaOrderByWithRelationInput>,
            _i3.AgendaOrderByWithRelationInput>?
        orderBy,
    _i3.AgendaWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateAgendaSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Agenda',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateAgenda>(
      action: 'aggregateAgenda',
      result: result,
      factory: (e) => _i3.AggregateAgenda.fromJson(e),
    );
  }
}

class HorarioDelegate {
  const HorarioDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Horario?> findUnique({
    required _i3.HorarioWhereUniqueInput where,
    _i3.HorarioSelect? select,
    _i3.HorarioInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Horario',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Horario?>(
      action: 'findUniqueHorario',
      result: result,
      factory: (e) => e != null ? _i2.Horario.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Horario> findUniqueOrThrow({
    required _i3.HorarioWhereUniqueInput where,
    _i3.HorarioSelect? select,
    _i3.HorarioInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Horario',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Horario>(
      action: 'findUniqueHorarioOrThrow',
      result: result,
      factory: (e) => _i2.Horario.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Horario?> findFirst({
    _i3.HorarioWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.HorarioOrderByWithRelationInput>,
            _i3.HorarioOrderByWithRelationInput>?
        orderBy,
    _i3.HorarioWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.HorarioScalar, Iterable<_i3.HorarioScalar>>? distinct,
    _i3.HorarioSelect? select,
    _i3.HorarioInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Horario',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Horario?>(
      action: 'findFirstHorario',
      result: result,
      factory: (e) => e != null ? _i2.Horario.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Horario> findFirstOrThrow({
    _i3.HorarioWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.HorarioOrderByWithRelationInput>,
            _i3.HorarioOrderByWithRelationInput>?
        orderBy,
    _i3.HorarioWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.HorarioScalar, Iterable<_i3.HorarioScalar>>? distinct,
    _i3.HorarioSelect? select,
    _i3.HorarioInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Horario',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Horario>(
      action: 'findFirstHorarioOrThrow',
      result: result,
      factory: (e) => _i2.Horario.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Horario>> findMany({
    _i3.HorarioWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.HorarioOrderByWithRelationInput>,
            _i3.HorarioOrderByWithRelationInput>?
        orderBy,
    _i3.HorarioWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.HorarioScalar, Iterable<_i3.HorarioScalar>>? distinct,
    _i3.HorarioSelect? select,
    _i3.HorarioInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Horario',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Horario>>(
      action: 'findManyHorario',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Horario.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Horario> create({
    required _i1
        .PrismaUnion<_i3.HorarioCreateInput, _i3.HorarioUncheckedCreateInput>
        data,
    _i3.HorarioSelect? select,
    _i3.HorarioInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Horario',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Horario>(
      action: 'createOneHorario',
      result: result,
      factory: (e) => _i2.Horario.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.HorarioCreateManyInput,
            Iterable<_i3.HorarioCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Horario',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyHorario',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Horario?> update({
    required _i1
        .PrismaUnion<_i3.HorarioUpdateInput, _i3.HorarioUncheckedUpdateInput>
        data,
    required _i3.HorarioWhereUniqueInput where,
    _i3.HorarioSelect? select,
    _i3.HorarioInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Horario',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Horario?>(
      action: 'updateOneHorario',
      result: result,
      factory: (e) => e != null ? _i2.Horario.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.HorarioUpdateManyMutationInput,
            _i3.HorarioUncheckedUpdateManyInput>
        data,
    _i3.HorarioWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Horario',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyHorario',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Horario> upsert({
    required _i3.HorarioWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.HorarioCreateInput, _i3.HorarioUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.HorarioUpdateInput, _i3.HorarioUncheckedUpdateInput>
        update,
    _i3.HorarioSelect? select,
    _i3.HorarioInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Horario',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Horario>(
      action: 'upsertOneHorario',
      result: result,
      factory: (e) => _i2.Horario.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Horario?> delete({
    required _i3.HorarioWhereUniqueInput where,
    _i3.HorarioSelect? select,
    _i3.HorarioInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Horario',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Horario?>(
      action: 'deleteOneHorario',
      result: result,
      factory: (e) => e != null ? _i2.Horario.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.HorarioWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Horario',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyHorario',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.HorarioGroupByOutputType>> groupBy({
    _i3.HorarioWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.HorarioOrderByWithAggregationInput>,
            _i3.HorarioOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.HorarioScalar>, _i3.HorarioScalar> by,
    _i3.HorarioScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.HorarioGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Horario',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.HorarioGroupByOutputType>>(
      action: 'groupByHorario',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.HorarioGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateHorario> aggregate({
    _i3.HorarioWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.HorarioOrderByWithRelationInput>,
            _i3.HorarioOrderByWithRelationInput>?
        orderBy,
    _i3.HorarioWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateHorarioSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Horario',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateHorario>(
      action: 'aggregateHorario',
      result: result,
      factory: (e) => _i3.AggregateHorario.fromJson(e),
    );
  }
}

class EspacoDelegate {
  const EspacoDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Espaco?> findUnique({
    required _i3.EspacoWhereUniqueInput where,
    _i3.EspacoSelect? select,
    _i3.EspacoInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Espaco',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Espaco?>(
      action: 'findUniqueEspaco',
      result: result,
      factory: (e) => e != null ? _i2.Espaco.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Espaco> findUniqueOrThrow({
    required _i3.EspacoWhereUniqueInput where,
    _i3.EspacoSelect? select,
    _i3.EspacoInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Espaco',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Espaco>(
      action: 'findUniqueEspacoOrThrow',
      result: result,
      factory: (e) => _i2.Espaco.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Espaco?> findFirst({
    _i3.EspacoWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.EspacoOrderByWithRelationInput>,
            _i3.EspacoOrderByWithRelationInput>?
        orderBy,
    _i3.EspacoWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.EspacoScalar, Iterable<_i3.EspacoScalar>>? distinct,
    _i3.EspacoSelect? select,
    _i3.EspacoInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Espaco',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Espaco?>(
      action: 'findFirstEspaco',
      result: result,
      factory: (e) => e != null ? _i2.Espaco.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Espaco> findFirstOrThrow({
    _i3.EspacoWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.EspacoOrderByWithRelationInput>,
            _i3.EspacoOrderByWithRelationInput>?
        orderBy,
    _i3.EspacoWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.EspacoScalar, Iterable<_i3.EspacoScalar>>? distinct,
    _i3.EspacoSelect? select,
    _i3.EspacoInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Espaco',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Espaco>(
      action: 'findFirstEspacoOrThrow',
      result: result,
      factory: (e) => _i2.Espaco.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Espaco>> findMany({
    _i3.EspacoWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.EspacoOrderByWithRelationInput>,
            _i3.EspacoOrderByWithRelationInput>?
        orderBy,
    _i3.EspacoWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.EspacoScalar, Iterable<_i3.EspacoScalar>>? distinct,
    _i3.EspacoSelect? select,
    _i3.EspacoInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Espaco',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Espaco>>(
      action: 'findManyEspaco',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Espaco.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Espaco> create({
    required _i1
        .PrismaUnion<_i3.EspacoCreateInput, _i3.EspacoUncheckedCreateInput>
        data,
    _i3.EspacoSelect? select,
    _i3.EspacoInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Espaco',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Espaco>(
      action: 'createOneEspaco',
      result: result,
      factory: (e) => _i2.Espaco.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.EspacoCreateManyInput,
            Iterable<_i3.EspacoCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Espaco',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyEspaco',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Espaco?> update({
    required _i1
        .PrismaUnion<_i3.EspacoUpdateInput, _i3.EspacoUncheckedUpdateInput>
        data,
    required _i3.EspacoWhereUniqueInput where,
    _i3.EspacoSelect? select,
    _i3.EspacoInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Espaco',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Espaco?>(
      action: 'updateOneEspaco',
      result: result,
      factory: (e) => e != null ? _i2.Espaco.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.EspacoUpdateManyMutationInput,
            _i3.EspacoUncheckedUpdateManyInput>
        data,
    _i3.EspacoWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Espaco',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyEspaco',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Espaco> upsert({
    required _i3.EspacoWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.EspacoCreateInput, _i3.EspacoUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.EspacoUpdateInput, _i3.EspacoUncheckedUpdateInput>
        update,
    _i3.EspacoSelect? select,
    _i3.EspacoInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Espaco',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Espaco>(
      action: 'upsertOneEspaco',
      result: result,
      factory: (e) => _i2.Espaco.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Espaco?> delete({
    required _i3.EspacoWhereUniqueInput where,
    _i3.EspacoSelect? select,
    _i3.EspacoInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Espaco',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Espaco?>(
      action: 'deleteOneEspaco',
      result: result,
      factory: (e) => e != null ? _i2.Espaco.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.EspacoWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Espaco',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyEspaco',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.EspacoGroupByOutputType>> groupBy({
    _i3.EspacoWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.EspacoOrderByWithAggregationInput>,
            _i3.EspacoOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.EspacoScalar>, _i3.EspacoScalar> by,
    _i3.EspacoScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.EspacoGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Espaco',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.EspacoGroupByOutputType>>(
      action: 'groupByEspaco',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.EspacoGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateEspaco> aggregate({
    _i3.EspacoWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.EspacoOrderByWithRelationInput>,
            _i3.EspacoOrderByWithRelationInput>?
        orderBy,
    _i3.EspacoWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateEspacoSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Espaco',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateEspaco>(
      action: 'aggregateEspaco',
      result: result,
      factory: (e) => _i3.AggregateEspaco.fromJson(e),
    );
  }
}

class LocalizacaoDelegate {
  const LocalizacaoDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Localizacao?> findUnique({
    required _i3.LocalizacaoWhereUniqueInput where,
    _i3.LocalizacaoSelect? select,
    _i3.LocalizacaoInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Localizacao',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Localizacao?>(
      action: 'findUniqueLocalizacao',
      result: result,
      factory: (e) => e != null ? _i2.Localizacao.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Localizacao> findUniqueOrThrow({
    required _i3.LocalizacaoWhereUniqueInput where,
    _i3.LocalizacaoSelect? select,
    _i3.LocalizacaoInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Localizacao',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Localizacao>(
      action: 'findUniqueLocalizacaoOrThrow',
      result: result,
      factory: (e) => _i2.Localizacao.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Localizacao?> findFirst({
    _i3.LocalizacaoWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.LocalizacaoOrderByWithRelationInput>,
            _i3.LocalizacaoOrderByWithRelationInput>?
        orderBy,
    _i3.LocalizacaoWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.LocalizacaoScalar, Iterable<_i3.LocalizacaoScalar>>?
        distinct,
    _i3.LocalizacaoSelect? select,
    _i3.LocalizacaoInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Localizacao',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Localizacao?>(
      action: 'findFirstLocalizacao',
      result: result,
      factory: (e) => e != null ? _i2.Localizacao.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Localizacao> findFirstOrThrow({
    _i3.LocalizacaoWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.LocalizacaoOrderByWithRelationInput>,
            _i3.LocalizacaoOrderByWithRelationInput>?
        orderBy,
    _i3.LocalizacaoWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.LocalizacaoScalar, Iterable<_i3.LocalizacaoScalar>>?
        distinct,
    _i3.LocalizacaoSelect? select,
    _i3.LocalizacaoInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Localizacao',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Localizacao>(
      action: 'findFirstLocalizacaoOrThrow',
      result: result,
      factory: (e) => _i2.Localizacao.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Localizacao>> findMany({
    _i3.LocalizacaoWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.LocalizacaoOrderByWithRelationInput>,
            _i3.LocalizacaoOrderByWithRelationInput>?
        orderBy,
    _i3.LocalizacaoWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.LocalizacaoScalar, Iterable<_i3.LocalizacaoScalar>>?
        distinct,
    _i3.LocalizacaoSelect? select,
    _i3.LocalizacaoInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Localizacao',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Localizacao>>(
      action: 'findManyLocalizacao',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Localizacao.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Localizacao> create({
    required _i1.PrismaUnion<_i3.LocalizacaoCreateInput,
            _i3.LocalizacaoUncheckedCreateInput>
        data,
    _i3.LocalizacaoSelect? select,
    _i3.LocalizacaoInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Localizacao',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Localizacao>(
      action: 'createOneLocalizacao',
      result: result,
      factory: (e) => _i2.Localizacao.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.LocalizacaoCreateManyInput,
            Iterable<_i3.LocalizacaoCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Localizacao',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyLocalizacao',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Localizacao?> update({
    required _i1.PrismaUnion<_i3.LocalizacaoUpdateInput,
            _i3.LocalizacaoUncheckedUpdateInput>
        data,
    required _i3.LocalizacaoWhereUniqueInput where,
    _i3.LocalizacaoSelect? select,
    _i3.LocalizacaoInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Localizacao',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Localizacao?>(
      action: 'updateOneLocalizacao',
      result: result,
      factory: (e) => e != null ? _i2.Localizacao.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.LocalizacaoUpdateManyMutationInput,
            _i3.LocalizacaoUncheckedUpdateManyInput>
        data,
    _i3.LocalizacaoWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Localizacao',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyLocalizacao',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Localizacao> upsert({
    required _i3.LocalizacaoWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.LocalizacaoCreateInput,
            _i3.LocalizacaoUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.LocalizacaoUpdateInput,
            _i3.LocalizacaoUncheckedUpdateInput>
        update,
    _i3.LocalizacaoSelect? select,
    _i3.LocalizacaoInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Localizacao',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Localizacao>(
      action: 'upsertOneLocalizacao',
      result: result,
      factory: (e) => _i2.Localizacao.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Localizacao?> delete({
    required _i3.LocalizacaoWhereUniqueInput where,
    _i3.LocalizacaoSelect? select,
    _i3.LocalizacaoInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Localizacao',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Localizacao?>(
      action: 'deleteOneLocalizacao',
      result: result,
      factory: (e) => e != null ? _i2.Localizacao.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.LocalizacaoWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Localizacao',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyLocalizacao',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.LocalizacaoGroupByOutputType>> groupBy({
    _i3.LocalizacaoWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.LocalizacaoOrderByWithAggregationInput>,
            _i3.LocalizacaoOrderByWithAggregationInput>?
        orderBy,
    required _i1
        .PrismaUnion<Iterable<_i3.LocalizacaoScalar>, _i3.LocalizacaoScalar>
        by,
    _i3.LocalizacaoScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.LocalizacaoGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Localizacao',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.LocalizacaoGroupByOutputType>>(
      action: 'groupByLocalizacao',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.LocalizacaoGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateLocalizacao> aggregate({
    _i3.LocalizacaoWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.LocalizacaoOrderByWithRelationInput>,
            _i3.LocalizacaoOrderByWithRelationInput>?
        orderBy,
    _i3.LocalizacaoWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateLocalizacaoSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Localizacao',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateLocalizacao>(
      action: 'aggregateLocalizacao',
      result: result,
      factory: (e) => _i3.AggregateLocalizacao.fromJson(e),
    );
  }
}

class EquipamentoDelegate {
  const EquipamentoDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Equipamento?> findUnique({
    required _i3.EquipamentoWhereUniqueInput where,
    _i3.EquipamentoSelect? select,
    _i3.EquipamentoInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Equipamento',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Equipamento?>(
      action: 'findUniqueEquipamento',
      result: result,
      factory: (e) => e != null ? _i2.Equipamento.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Equipamento> findUniqueOrThrow({
    required _i3.EquipamentoWhereUniqueInput where,
    _i3.EquipamentoSelect? select,
    _i3.EquipamentoInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Equipamento',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Equipamento>(
      action: 'findUniqueEquipamentoOrThrow',
      result: result,
      factory: (e) => _i2.Equipamento.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Equipamento?> findFirst({
    _i3.EquipamentoWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.EquipamentoOrderByWithRelationInput>,
            _i3.EquipamentoOrderByWithRelationInput>?
        orderBy,
    _i3.EquipamentoWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.EquipamentoScalar, Iterable<_i3.EquipamentoScalar>>?
        distinct,
    _i3.EquipamentoSelect? select,
    _i3.EquipamentoInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Equipamento',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Equipamento?>(
      action: 'findFirstEquipamento',
      result: result,
      factory: (e) => e != null ? _i2.Equipamento.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Equipamento> findFirstOrThrow({
    _i3.EquipamentoWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.EquipamentoOrderByWithRelationInput>,
            _i3.EquipamentoOrderByWithRelationInput>?
        orderBy,
    _i3.EquipamentoWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.EquipamentoScalar, Iterable<_i3.EquipamentoScalar>>?
        distinct,
    _i3.EquipamentoSelect? select,
    _i3.EquipamentoInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Equipamento',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Equipamento>(
      action: 'findFirstEquipamentoOrThrow',
      result: result,
      factory: (e) => _i2.Equipamento.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Equipamento>> findMany({
    _i3.EquipamentoWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.EquipamentoOrderByWithRelationInput>,
            _i3.EquipamentoOrderByWithRelationInput>?
        orderBy,
    _i3.EquipamentoWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.EquipamentoScalar, Iterable<_i3.EquipamentoScalar>>?
        distinct,
    _i3.EquipamentoSelect? select,
    _i3.EquipamentoInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Equipamento',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Equipamento>>(
      action: 'findManyEquipamento',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Equipamento.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Equipamento> create({
    required _i1.PrismaUnion<_i3.EquipamentoCreateInput,
            _i3.EquipamentoUncheckedCreateInput>
        data,
    _i3.EquipamentoSelect? select,
    _i3.EquipamentoInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Equipamento',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Equipamento>(
      action: 'createOneEquipamento',
      result: result,
      factory: (e) => _i2.Equipamento.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.EquipamentoCreateManyInput,
            Iterable<_i3.EquipamentoCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Equipamento',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyEquipamento',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Equipamento?> update({
    required _i1.PrismaUnion<_i3.EquipamentoUpdateInput,
            _i3.EquipamentoUncheckedUpdateInput>
        data,
    required _i3.EquipamentoWhereUniqueInput where,
    _i3.EquipamentoSelect? select,
    _i3.EquipamentoInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Equipamento',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Equipamento?>(
      action: 'updateOneEquipamento',
      result: result,
      factory: (e) => e != null ? _i2.Equipamento.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.EquipamentoUpdateManyMutationInput,
            _i3.EquipamentoUncheckedUpdateManyInput>
        data,
    _i3.EquipamentoWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Equipamento',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyEquipamento',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Equipamento> upsert({
    required _i3.EquipamentoWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.EquipamentoCreateInput,
            _i3.EquipamentoUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.EquipamentoUpdateInput,
            _i3.EquipamentoUncheckedUpdateInput>
        update,
    _i3.EquipamentoSelect? select,
    _i3.EquipamentoInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Equipamento',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Equipamento>(
      action: 'upsertOneEquipamento',
      result: result,
      factory: (e) => _i2.Equipamento.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Equipamento?> delete({
    required _i3.EquipamentoWhereUniqueInput where,
    _i3.EquipamentoSelect? select,
    _i3.EquipamentoInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Equipamento',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Equipamento?>(
      action: 'deleteOneEquipamento',
      result: result,
      factory: (e) => e != null ? _i2.Equipamento.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.EquipamentoWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Equipamento',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyEquipamento',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.EquipamentoGroupByOutputType>> groupBy({
    _i3.EquipamentoWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.EquipamentoOrderByWithAggregationInput>,
            _i3.EquipamentoOrderByWithAggregationInput>?
        orderBy,
    required _i1
        .PrismaUnion<Iterable<_i3.EquipamentoScalar>, _i3.EquipamentoScalar>
        by,
    _i3.EquipamentoScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.EquipamentoGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Equipamento',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.EquipamentoGroupByOutputType>>(
      action: 'groupByEquipamento',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.EquipamentoGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateEquipamento> aggregate({
    _i3.EquipamentoWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.EquipamentoOrderByWithRelationInput>,
            _i3.EquipamentoOrderByWithRelationInput>?
        orderBy,
    _i3.EquipamentoWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateEquipamentoSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Equipamento',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateEquipamento>(
      action: 'aggregateEquipamento',
      result: result,
      factory: (e) => _i3.AggregateEquipamento.fromJson(e),
    );
  }
}

class PrecadastroUsuarioDelegate {
  const PrecadastroUsuarioDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.PrecadastroUsuario?> findUnique({
    required _i3.PrecadastroUsuarioWhereUniqueInput where,
    _i3.PrecadastroUsuarioSelect? select,
  }) {
    final args = {
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PrecadastroUsuario',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PrecadastroUsuario?>(
      action: 'findUniquePrecadastroUsuario',
      result: result,
      factory: (e) => e != null ? _i2.PrecadastroUsuario.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.PrecadastroUsuario> findUniqueOrThrow({
    required _i3.PrecadastroUsuarioWhereUniqueInput where,
    _i3.PrecadastroUsuarioSelect? select,
  }) {
    final args = {
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PrecadastroUsuario',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PrecadastroUsuario>(
      action: 'findUniquePrecadastroUsuarioOrThrow',
      result: result,
      factory: (e) => _i2.PrecadastroUsuario.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.PrecadastroUsuario?> findFirst({
    _i3.PrecadastroUsuarioWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PrecadastroUsuarioOrderByWithRelationInput>,
            _i3.PrecadastroUsuarioOrderByWithRelationInput>?
        orderBy,
    _i3.PrecadastroUsuarioWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PrecadastroUsuarioScalar,
            Iterable<_i3.PrecadastroUsuarioScalar>>?
        distinct,
    _i3.PrecadastroUsuarioSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PrecadastroUsuario',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PrecadastroUsuario?>(
      action: 'findFirstPrecadastroUsuario',
      result: result,
      factory: (e) => e != null ? _i2.PrecadastroUsuario.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.PrecadastroUsuario> findFirstOrThrow({
    _i3.PrecadastroUsuarioWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PrecadastroUsuarioOrderByWithRelationInput>,
            _i3.PrecadastroUsuarioOrderByWithRelationInput>?
        orderBy,
    _i3.PrecadastroUsuarioWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PrecadastroUsuarioScalar,
            Iterable<_i3.PrecadastroUsuarioScalar>>?
        distinct,
    _i3.PrecadastroUsuarioSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PrecadastroUsuario',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PrecadastroUsuario>(
      action: 'findFirstPrecadastroUsuarioOrThrow',
      result: result,
      factory: (e) => _i2.PrecadastroUsuario.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.PrecadastroUsuario>> findMany({
    _i3.PrecadastroUsuarioWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PrecadastroUsuarioOrderByWithRelationInput>,
            _i3.PrecadastroUsuarioOrderByWithRelationInput>?
        orderBy,
    _i3.PrecadastroUsuarioWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PrecadastroUsuarioScalar,
            Iterable<_i3.PrecadastroUsuarioScalar>>?
        distinct,
    _i3.PrecadastroUsuarioSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PrecadastroUsuario',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.PrecadastroUsuario>>(
      action: 'findManyPrecadastroUsuario',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.PrecadastroUsuario.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.PrecadastroUsuario> create({
    required _i1.PrismaUnion<_i3.PrecadastroUsuarioCreateInput,
            _i3.PrecadastroUsuarioUncheckedCreateInput>
        data,
    _i3.PrecadastroUsuarioSelect? select,
  }) {
    final args = {
      'data': data,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PrecadastroUsuario',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PrecadastroUsuario>(
      action: 'createOnePrecadastroUsuario',
      result: result,
      factory: (e) => _i2.PrecadastroUsuario.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.PrecadastroUsuarioCreateManyInput,
            Iterable<_i3.PrecadastroUsuarioCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PrecadastroUsuario',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyPrecadastroUsuario',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.PrecadastroUsuario?> update({
    required _i1.PrismaUnion<_i3.PrecadastroUsuarioUpdateInput,
            _i3.PrecadastroUsuarioUncheckedUpdateInput>
        data,
    required _i3.PrecadastroUsuarioWhereUniqueInput where,
    _i3.PrecadastroUsuarioSelect? select,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PrecadastroUsuario',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PrecadastroUsuario?>(
      action: 'updateOnePrecadastroUsuario',
      result: result,
      factory: (e) => e != null ? _i2.PrecadastroUsuario.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.PrecadastroUsuarioUpdateManyMutationInput,
            _i3.PrecadastroUsuarioUncheckedUpdateManyInput>
        data,
    _i3.PrecadastroUsuarioWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PrecadastroUsuario',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyPrecadastroUsuario',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.PrecadastroUsuario> upsert({
    required _i3.PrecadastroUsuarioWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.PrecadastroUsuarioCreateInput,
            _i3.PrecadastroUsuarioUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.PrecadastroUsuarioUpdateInput,
            _i3.PrecadastroUsuarioUncheckedUpdateInput>
        update,
    _i3.PrecadastroUsuarioSelect? select,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PrecadastroUsuario',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PrecadastroUsuario>(
      action: 'upsertOnePrecadastroUsuario',
      result: result,
      factory: (e) => _i2.PrecadastroUsuario.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.PrecadastroUsuario?> delete({
    required _i3.PrecadastroUsuarioWhereUniqueInput where,
    _i3.PrecadastroUsuarioSelect? select,
  }) {
    final args = {
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PrecadastroUsuario',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PrecadastroUsuario?>(
      action: 'deleteOnePrecadastroUsuario',
      result: result,
      factory: (e) => e != null ? _i2.PrecadastroUsuario.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.PrecadastroUsuarioWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PrecadastroUsuario',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyPrecadastroUsuario',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.PrecadastroUsuarioGroupByOutputType>> groupBy({
    _i3.PrecadastroUsuarioWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PrecadastroUsuarioOrderByWithAggregationInput>,
            _i3.PrecadastroUsuarioOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.PrecadastroUsuarioScalar>,
            _i3.PrecadastroUsuarioScalar>
        by,
    _i3.PrecadastroUsuarioScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.PrecadastroUsuarioGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PrecadastroUsuario',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.PrecadastroUsuarioGroupByOutputType>>(
      action: 'groupByPrecadastroUsuario',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.PrecadastroUsuarioGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregatePrecadastroUsuario> aggregate({
    _i3.PrecadastroUsuarioWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PrecadastroUsuarioOrderByWithRelationInput>,
            _i3.PrecadastroUsuarioOrderByWithRelationInput>?
        orderBy,
    _i3.PrecadastroUsuarioWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregatePrecadastroUsuarioSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PrecadastroUsuario',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregatePrecadastroUsuario>(
      action: 'aggregatePrecadastroUsuario',
      result: result,
      factory: (e) => _i3.AggregatePrecadastroUsuario.fromJson(e),
    );
  }
}

class ReservaDelegate {
  const ReservaDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Reserva?> findUnique({
    required _i3.ReservaWhereUniqueInput where,
    _i3.ReservaSelect? select,
    _i3.ReservaInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Reserva',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Reserva?>(
      action: 'findUniqueReserva',
      result: result,
      factory: (e) => e != null ? _i2.Reserva.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Reserva> findUniqueOrThrow({
    required _i3.ReservaWhereUniqueInput where,
    _i3.ReservaSelect? select,
    _i3.ReservaInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Reserva',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Reserva>(
      action: 'findUniqueReservaOrThrow',
      result: result,
      factory: (e) => _i2.Reserva.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Reserva?> findFirst({
    _i3.ReservaWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ReservaOrderByWithRelationInput>,
            _i3.ReservaOrderByWithRelationInput>?
        orderBy,
    _i3.ReservaWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ReservaScalar, Iterable<_i3.ReservaScalar>>? distinct,
    _i3.ReservaSelect? select,
    _i3.ReservaInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Reserva',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Reserva?>(
      action: 'findFirstReserva',
      result: result,
      factory: (e) => e != null ? _i2.Reserva.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Reserva> findFirstOrThrow({
    _i3.ReservaWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ReservaOrderByWithRelationInput>,
            _i3.ReservaOrderByWithRelationInput>?
        orderBy,
    _i3.ReservaWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ReservaScalar, Iterable<_i3.ReservaScalar>>? distinct,
    _i3.ReservaSelect? select,
    _i3.ReservaInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Reserva',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Reserva>(
      action: 'findFirstReservaOrThrow',
      result: result,
      factory: (e) => _i2.Reserva.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Reserva>> findMany({
    _i3.ReservaWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ReservaOrderByWithRelationInput>,
            _i3.ReservaOrderByWithRelationInput>?
        orderBy,
    _i3.ReservaWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ReservaScalar, Iterable<_i3.ReservaScalar>>? distinct,
    _i3.ReservaSelect? select,
    _i3.ReservaInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Reserva',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Reserva>>(
      action: 'findManyReserva',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Reserva.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Reserva> create({
    required _i1
        .PrismaUnion<_i3.ReservaCreateInput, _i3.ReservaUncheckedCreateInput>
        data,
    _i3.ReservaSelect? select,
    _i3.ReservaInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Reserva',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Reserva>(
      action: 'createOneReserva',
      result: result,
      factory: (e) => _i2.Reserva.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.ReservaCreateManyInput,
            Iterable<_i3.ReservaCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Reserva',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyReserva',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Reserva?> update({
    required _i1
        .PrismaUnion<_i3.ReservaUpdateInput, _i3.ReservaUncheckedUpdateInput>
        data,
    required _i3.ReservaWhereUniqueInput where,
    _i3.ReservaSelect? select,
    _i3.ReservaInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Reserva',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Reserva?>(
      action: 'updateOneReserva',
      result: result,
      factory: (e) => e != null ? _i2.Reserva.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.ReservaUpdateManyMutationInput,
            _i3.ReservaUncheckedUpdateManyInput>
        data,
    _i3.ReservaWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Reserva',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyReserva',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Reserva> upsert({
    required _i3.ReservaWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.ReservaCreateInput, _i3.ReservaUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.ReservaUpdateInput, _i3.ReservaUncheckedUpdateInput>
        update,
    _i3.ReservaSelect? select,
    _i3.ReservaInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Reserva',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Reserva>(
      action: 'upsertOneReserva',
      result: result,
      factory: (e) => _i2.Reserva.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Reserva?> delete({
    required _i3.ReservaWhereUniqueInput where,
    _i3.ReservaSelect? select,
    _i3.ReservaInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Reserva',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Reserva?>(
      action: 'deleteOneReserva',
      result: result,
      factory: (e) => e != null ? _i2.Reserva.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.ReservaWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Reserva',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyReserva',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.ReservaGroupByOutputType>> groupBy({
    _i3.ReservaWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ReservaOrderByWithAggregationInput>,
            _i3.ReservaOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.ReservaScalar>, _i3.ReservaScalar> by,
    _i3.ReservaScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.ReservaGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Reserva',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.ReservaGroupByOutputType>>(
      action: 'groupByReserva',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.ReservaGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateReserva> aggregate({
    _i3.ReservaWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ReservaOrderByWithRelationInput>,
            _i3.ReservaOrderByWithRelationInput>?
        orderBy,
    _i3.ReservaWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateReservaSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Reserva',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateReserva>(
      action: 'aggregateReserva',
      result: result,
      factory: (e) => _i3.AggregateReserva.fromJson(e),
    );
  }
}

class ServicoDelegate {
  const ServicoDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Servico?> findUnique({
    required _i3.ServicoWhereUniqueInput where,
    _i3.ServicoSelect? select,
    _i3.ServicoInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Servico',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Servico?>(
      action: 'findUniqueServico',
      result: result,
      factory: (e) => e != null ? _i2.Servico.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Servico> findUniqueOrThrow({
    required _i3.ServicoWhereUniqueInput where,
    _i3.ServicoSelect? select,
    _i3.ServicoInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Servico',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Servico>(
      action: 'findUniqueServicoOrThrow',
      result: result,
      factory: (e) => _i2.Servico.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Servico?> findFirst({
    _i3.ServicoWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ServicoOrderByWithRelationInput>,
            _i3.ServicoOrderByWithRelationInput>?
        orderBy,
    _i3.ServicoWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ServicoScalar, Iterable<_i3.ServicoScalar>>? distinct,
    _i3.ServicoSelect? select,
    _i3.ServicoInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Servico',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Servico?>(
      action: 'findFirstServico',
      result: result,
      factory: (e) => e != null ? _i2.Servico.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Servico> findFirstOrThrow({
    _i3.ServicoWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ServicoOrderByWithRelationInput>,
            _i3.ServicoOrderByWithRelationInput>?
        orderBy,
    _i3.ServicoWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ServicoScalar, Iterable<_i3.ServicoScalar>>? distinct,
    _i3.ServicoSelect? select,
    _i3.ServicoInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Servico',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Servico>(
      action: 'findFirstServicoOrThrow',
      result: result,
      factory: (e) => _i2.Servico.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Servico>> findMany({
    _i3.ServicoWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ServicoOrderByWithRelationInput>,
            _i3.ServicoOrderByWithRelationInput>?
        orderBy,
    _i3.ServicoWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ServicoScalar, Iterable<_i3.ServicoScalar>>? distinct,
    _i3.ServicoSelect? select,
    _i3.ServicoInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Servico',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Servico>>(
      action: 'findManyServico',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Servico.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Servico> create({
    required _i1
        .PrismaUnion<_i3.ServicoCreateInput, _i3.ServicoUncheckedCreateInput>
        data,
    _i3.ServicoSelect? select,
    _i3.ServicoInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Servico',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Servico>(
      action: 'createOneServico',
      result: result,
      factory: (e) => _i2.Servico.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.ServicoCreateManyInput,
            Iterable<_i3.ServicoCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Servico',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyServico',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Servico?> update({
    required _i1
        .PrismaUnion<_i3.ServicoUpdateInput, _i3.ServicoUncheckedUpdateInput>
        data,
    required _i3.ServicoWhereUniqueInput where,
    _i3.ServicoSelect? select,
    _i3.ServicoInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Servico',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Servico?>(
      action: 'updateOneServico',
      result: result,
      factory: (e) => e != null ? _i2.Servico.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.ServicoUpdateManyMutationInput,
            _i3.ServicoUncheckedUpdateManyInput>
        data,
    _i3.ServicoWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Servico',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyServico',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Servico> upsert({
    required _i3.ServicoWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.ServicoCreateInput, _i3.ServicoUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.ServicoUpdateInput, _i3.ServicoUncheckedUpdateInput>
        update,
    _i3.ServicoSelect? select,
    _i3.ServicoInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Servico',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Servico>(
      action: 'upsertOneServico',
      result: result,
      factory: (e) => _i2.Servico.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Servico?> delete({
    required _i3.ServicoWhereUniqueInput where,
    _i3.ServicoSelect? select,
    _i3.ServicoInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Servico',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Servico?>(
      action: 'deleteOneServico',
      result: result,
      factory: (e) => e != null ? _i2.Servico.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.ServicoWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Servico',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyServico',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.ServicoGroupByOutputType>> groupBy({
    _i3.ServicoWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ServicoOrderByWithAggregationInput>,
            _i3.ServicoOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.ServicoScalar>, _i3.ServicoScalar> by,
    _i3.ServicoScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.ServicoGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Servico',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.ServicoGroupByOutputType>>(
      action: 'groupByServico',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.ServicoGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateServico> aggregate({
    _i3.ServicoWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ServicoOrderByWithRelationInput>,
            _i3.ServicoOrderByWithRelationInput>?
        orderBy,
    _i3.ServicoWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateServicoSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Servico',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateServico>(
      action: 'aggregateServico',
      result: result,
      factory: (e) => _i3.AggregateServico.fromJson(e),
    );
  }
}

class UsuarioDelegate {
  const UsuarioDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Usuario?> findUnique({
    required _i3.UsuarioWhereUniqueInput where,
    _i3.UsuarioSelect? select,
    _i3.UsuarioInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Usuario',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Usuario?>(
      action: 'findUniqueUsuario',
      result: result,
      factory: (e) => e != null ? _i2.Usuario.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Usuario> findUniqueOrThrow({
    required _i3.UsuarioWhereUniqueInput where,
    _i3.UsuarioSelect? select,
    _i3.UsuarioInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Usuario',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Usuario>(
      action: 'findUniqueUsuarioOrThrow',
      result: result,
      factory: (e) => _i2.Usuario.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Usuario?> findFirst({
    _i3.UsuarioWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UsuarioOrderByWithRelationInput>,
            _i3.UsuarioOrderByWithRelationInput>?
        orderBy,
    _i3.UsuarioWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.UsuarioScalar, Iterable<_i3.UsuarioScalar>>? distinct,
    _i3.UsuarioSelect? select,
    _i3.UsuarioInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Usuario',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Usuario?>(
      action: 'findFirstUsuario',
      result: result,
      factory: (e) => e != null ? _i2.Usuario.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Usuario> findFirstOrThrow({
    _i3.UsuarioWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UsuarioOrderByWithRelationInput>,
            _i3.UsuarioOrderByWithRelationInput>?
        orderBy,
    _i3.UsuarioWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.UsuarioScalar, Iterable<_i3.UsuarioScalar>>? distinct,
    _i3.UsuarioSelect? select,
    _i3.UsuarioInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Usuario',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Usuario>(
      action: 'findFirstUsuarioOrThrow',
      result: result,
      factory: (e) => _i2.Usuario.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Usuario>> findMany({
    _i3.UsuarioWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UsuarioOrderByWithRelationInput>,
            _i3.UsuarioOrderByWithRelationInput>?
        orderBy,
    _i3.UsuarioWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.UsuarioScalar, Iterable<_i3.UsuarioScalar>>? distinct,
    _i3.UsuarioSelect? select,
    _i3.UsuarioInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Usuario',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Usuario>>(
      action: 'findManyUsuario',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Usuario.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Usuario> create({
    required _i1
        .PrismaUnion<_i3.UsuarioCreateInput, _i3.UsuarioUncheckedCreateInput>
        data,
    _i3.UsuarioSelect? select,
    _i3.UsuarioInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Usuario',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Usuario>(
      action: 'createOneUsuario',
      result: result,
      factory: (e) => _i2.Usuario.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.UsuarioCreateManyInput,
            Iterable<_i3.UsuarioCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Usuario',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyUsuario',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Usuario?> update({
    required _i1
        .PrismaUnion<_i3.UsuarioUpdateInput, _i3.UsuarioUncheckedUpdateInput>
        data,
    required _i3.UsuarioWhereUniqueInput where,
    _i3.UsuarioSelect? select,
    _i3.UsuarioInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Usuario',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Usuario?>(
      action: 'updateOneUsuario',
      result: result,
      factory: (e) => e != null ? _i2.Usuario.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.UsuarioUpdateManyMutationInput,
            _i3.UsuarioUncheckedUpdateManyInput>
        data,
    _i3.UsuarioWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Usuario',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyUsuario',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Usuario> upsert({
    required _i3.UsuarioWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.UsuarioCreateInput, _i3.UsuarioUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.UsuarioUpdateInput, _i3.UsuarioUncheckedUpdateInput>
        update,
    _i3.UsuarioSelect? select,
    _i3.UsuarioInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Usuario',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Usuario>(
      action: 'upsertOneUsuario',
      result: result,
      factory: (e) => _i2.Usuario.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Usuario?> delete({
    required _i3.UsuarioWhereUniqueInput where,
    _i3.UsuarioSelect? select,
    _i3.UsuarioInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Usuario',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Usuario?>(
      action: 'deleteOneUsuario',
      result: result,
      factory: (e) => e != null ? _i2.Usuario.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.UsuarioWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Usuario',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyUsuario',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.UsuarioGroupByOutputType>> groupBy({
    _i3.UsuarioWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UsuarioOrderByWithAggregationInput>,
            _i3.UsuarioOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.UsuarioScalar>, _i3.UsuarioScalar> by,
    _i3.UsuarioScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.UsuarioGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Usuario',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.UsuarioGroupByOutputType>>(
      action: 'groupByUsuario',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.UsuarioGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateUsuario> aggregate({
    _i3.UsuarioWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UsuarioOrderByWithRelationInput>,
            _i3.UsuarioOrderByWithRelationInput>?
        orderBy,
    _i3.UsuarioWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateUsuarioSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Usuario',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateUsuario>(
      action: 'aggregateUsuario',
      result: result,
      factory: (e) => _i3.AggregateUsuario.fromJson(e),
    );
  }
}

class PrismaClient {
  const PrismaClient._(
    this._engine,
    this.$transaction,
    this.$metrics,
  );

  factory PrismaClient({
    String? datasourceUrl,
    Map<String, String>? datasources,
  }) {
    datasources ??= {
      'db':
          'postgresql://uniespaco:uniespaco@localhost:5432/uniespaco?schema=public'
    };
    if (datasourceUrl != null) {
      datasources = datasources.map((
        key,
        value,
      ) =>
          MapEntry(
            key,
            datasourceUrl,
          ));
    }
    final engine = _i4.BinaryEngine(
      schema:
          '// This is your Prisma schema file,\n// learn more about it in the docs: https://pris.ly/d/prisma-schema\n\n// Looking for ways to speed up your queries, or scale easily with your serverless or edge functions?\n// Try Prisma Accelerate: https://pris.ly/cli/accelerate-init\n\ngenerator client {\n  provider = "dart run orm"\n  output   = "../lib/layers/data/datasources/remote/mysql"\n}\n\ndatasource db {\n  provider = "postgres"\n  url      = env("DATABASE_URL")\n}\n\n// Models\nmodel Turno {\n  id       String   @id @default(uuid()) @db.VarChar(36)\n  nome     String   @unique\n  agenda   Agenda[]\n  espacoId String\n  espaco   Espaco   @relation(fields: [espacoId], references: [id], onDelete: Cascade, onUpdate: Cascade)\n}\n\nmodel Agenda {\n  id         String    @id @default(uuid()) @db.VarChar(36)\n  observacao String?\n  turnoId    String\n  turno      Turno     @relation(fields: [turnoId], references: [id], onDelete: Cascade, onUpdate: Cascade)\n  horarios   Horario[]\n}\n\nmodel Horario {\n  id                  String   @id @default(uuid()) @db.VarChar(36)\n  inicio              String\n  fim                 String\n  agendaId            String\n  agenda              Agenda   @relation(fields: [agendaId], references: [id], onDelete: Cascade, onUpdate: Cascade)\n  gestorServicoId     String\n  gestorServico       Usuario? @relation("gestorServico", fields: [gestorServicoId], references: [id])\n  gestorReservaId     String\n  gestorReserva       Usuario? @relation("gestorReserva", fields: [gestorReservaId], references: [id])\n  isReserved          Boolean\n  reservaSolicitadaId String\n  reservaSolicitada   Reserva  @relation(fields: [reservaSolicitadaId], references: [id])\n  servicoSolicitadoId String\n  servicoSolicitado   Servico  @relation(fields: [servicoSolicitadoId], references: [id])\n}\n\nmodel Espaco {\n  id                    String        @id @default(uuid()) @db.VarChar(36)\n  localizacaoId         String        @unique\n  localizacao           Localizacao   @relation(fields: [localizacaoId], references: [id], onDelete: Cascade, onUpdate: Cascade)\n  capacidadePessoas     Int\n  equipamentoDisponivel Equipamento[]\n  acessibilidade        Boolean\n  turnos                Turno[]\n  reservas              Reserva[]\n  servicos              Servico[]\n}\n\nmodel Localizacao {\n  id       String  @id @default(uuid()) @db.VarChar(36)\n  campus   String\n  pavilhao String\n  andar    Int\n  numero   Int\n  espaco   Espaco?\n}\n\nmodel Equipamento {\n  id       String @id @default(uuid()) @db.VarChar(36)\n  nome     String\n  tipo     String\n  numTombo String\n  espacoId String\n  espaco   Espaco @relation(fields: [espacoId], references: [id], onDelete: Cascade, onUpdate: Cascade)\n}\n\nmodel PrecadastroUsuario {\n  id          String @id @default(uuid()) @db.VarChar(36)\n  email       String @unique\n  tipoUsuario String\n}\n\nmodel Reserva {\n  id            String    @id @default(uuid()) @db.VarChar(36)\n  espacoId      String\n  espaco        Espaco    @relation(fields: [espacoId], references: [id], onDelete: Cascade, onUpdate: Cascade)\n  solicitanteId String\n  solicitante   Usuario   @relation(fields: [solicitanteId], references: [id], onDelete: Cascade, onUpdate: Cascade)\n  descricao     String\n  status        String\n  periodo       Horario[]\n}\n\nmodel Servico {\n  id            String    @id @default(uuid()) @db.VarChar(36)\n  espacoId      String\n  espaco        Espaco    @relation(fields: [espacoId], references: [id], onDelete: Cascade, onUpdate: Cascade)\n  solicitanteId String\n  solicitante   Usuario   @relation(fields: [solicitanteId], references: [id], onDelete: Cascade, onUpdate: Cascade)\n  descricao     String\n  status        String\n  periodo       Horario[]\n}\n\nmodel Usuario {\n  id                    String    @id @default(uuid()) @db.VarChar(36)\n  nome                  String\n  email                 String    @unique\n  telefone              String?\n  photoUrl              String\n  tipoUsuario           String\n  departamentoId        String?   @unique\n  departamento          Usuario?  @relation("pertenceAoDepartamento", fields: [departamentoId], references: [id])\n  departamentoSetor     Usuario?  @relation("pertenceAoDepartamento")\n  sigla                 String\n  isDepartamento        Boolean\n  gestorReservaHorarios Horario[] @relation(name: "gestorReserva")\n  gestorServicoHorarios Horario[] @relation(name: "gestorServico")\n  reservas              Reserva[]\n  servicos              Servico[]\n}\n',
      datasources: datasources,
    );
    final metrics = _i1.MetricsClient(engine);
    createClientWithTransaction(
            _i1.TransactionClient<PrismaClient> transaction) =>
        PrismaClient._(
          engine,
          transaction,
          metrics,
        );
    final transaction = _i1.TransactionClient<PrismaClient>(
      engine,
      createClientWithTransaction,
    );
    return createClientWithTransaction(transaction);
  }

  static final datamodel = _i5.DataModel.fromJson({
    'enums': [],
    'models': [
      {
        'name': 'Turno',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {
              'name': 'uuid',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'nome',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'agenda',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Agenda',
            'relationName': 'AgendaToTurno',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'espacoId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'espaco',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Espaco',
            'relationName': 'EspacoToTurno',
            'relationFromFields': ['espacoId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Agenda',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {
              'name': 'uuid',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'observacao',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'turnoId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'turno',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Turno',
            'relationName': 'AgendaToTurno',
            'relationFromFields': ['turnoId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'horarios',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Horario',
            'relationName': 'AgendaToHorario',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Horario',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {
              'name': 'uuid',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'inicio',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'fim',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'agendaId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'agenda',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Agenda',
            'relationName': 'AgendaToHorario',
            'relationFromFields': ['agendaId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'gestorServicoId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'gestorServico',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Usuario',
            'relationName': 'gestorServico',
            'relationFromFields': ['gestorServicoId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'gestorReservaId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'gestorReserva',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Usuario',
            'relationName': 'gestorReserva',
            'relationFromFields': ['gestorReservaId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'isReserved',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Boolean',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'reservaSolicitadaId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'reservaSolicitada',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Reserva',
            'relationName': 'HorarioToReserva',
            'relationFromFields': ['reservaSolicitadaId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'servicoSolicitadoId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'servicoSolicitado',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Servico',
            'relationName': 'HorarioToServico',
            'relationFromFields': ['servicoSolicitadoId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Espaco',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {
              'name': 'uuid',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'localizacaoId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'localizacao',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Localizacao',
            'relationName': 'EspacoToLocalizacao',
            'relationFromFields': ['localizacaoId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'capacidadePessoas',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'equipamentoDisponivel',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Equipamento',
            'relationName': 'EquipamentoToEspaco',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'acessibilidade',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Boolean',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'turnos',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Turno',
            'relationName': 'EspacoToTurno',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'reservas',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Reserva',
            'relationName': 'EspacoToReserva',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'servicos',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Servico',
            'relationName': 'EspacoToServico',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Localizacao',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {
              'name': 'uuid',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'campus',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'pavilhao',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'andar',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'numero',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'espaco',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Espaco',
            'relationName': 'EspacoToLocalizacao',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Equipamento',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {
              'name': 'uuid',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'nome',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'tipo',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'numTombo',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'espacoId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'espaco',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Espaco',
            'relationName': 'EquipamentoToEspaco',
            'relationFromFields': ['espacoId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'PrecadastroUsuario',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {
              'name': 'uuid',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'email',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'tipoUsuario',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Reserva',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {
              'name': 'uuid',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'espacoId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'espaco',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Espaco',
            'relationName': 'EspacoToReserva',
            'relationFromFields': ['espacoId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'solicitanteId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'solicitante',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Usuario',
            'relationName': 'ReservaToUsuario',
            'relationFromFields': ['solicitanteId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'descricao',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'status',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'periodo',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Horario',
            'relationName': 'HorarioToReserva',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Servico',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {
              'name': 'uuid',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'espacoId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'espaco',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Espaco',
            'relationName': 'EspacoToServico',
            'relationFromFields': ['espacoId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'solicitanteId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'solicitante',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Usuario',
            'relationName': 'ServicoToUsuario',
            'relationFromFields': ['solicitanteId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'descricao',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'status',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'periodo',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Horario',
            'relationName': 'HorarioToServico',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Usuario',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {
              'name': 'uuid',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'nome',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'email',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'telefone',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'photoUrl',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'tipoUsuario',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'departamentoId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': true,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'departamento',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Usuario',
            'relationName': 'pertenceAoDepartamento',
            'relationFromFields': ['departamentoId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'departamentoSetor',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Usuario',
            'relationName': 'pertenceAoDepartamento',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'sigla',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'isDepartamento',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Boolean',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'gestorReservaHorarios',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Horario',
            'relationName': 'gestorReserva',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'gestorServicoHorarios',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Horario',
            'relationName': 'gestorServico',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'reservas',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Reserva',
            'relationName': 'ReservaToUsuario',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'servicos',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Servico',
            'relationName': 'ServicoToUsuario',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
    ],
    'types': [],
  });

  final _i1.MetricsClient $metrics;

  final _i1.TransactionClient<PrismaClient> $transaction;

  final _i1.Engine _engine;

  Future<void> $connect() => _engine.start();

  Future<void> $disconnect() => _engine.stop();

  TurnoDelegate get turno => TurnoDelegate._(this);

  AgendaDelegate get agenda => AgendaDelegate._(this);

  HorarioDelegate get horario => HorarioDelegate._(this);

  EspacoDelegate get espaco => EspacoDelegate._(this);

  LocalizacaoDelegate get localizacao => LocalizacaoDelegate._(this);

  EquipamentoDelegate get equipamento => EquipamentoDelegate._(this);

  PrecadastroUsuarioDelegate get precadastroUsuario =>
      PrecadastroUsuarioDelegate._(this);

  ReservaDelegate get reserva => ReservaDelegate._(this);

  ServicoDelegate get servico => ServicoDelegate._(this);

  UsuarioDelegate get usuario => UsuarioDelegate._(this);

  _i1.RawClient<PrismaClient> get $raw => _i1.RawClient<PrismaClient>(
        _engine,
        datamodel,
        $transaction,
      );
}
