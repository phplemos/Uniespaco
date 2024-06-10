// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'model.dart' as _i1;
import 'prisma.dart' as _i2;

class Localizacao {
  const Localizacao({
    this.id,
    this.campus,
    this.pavilhao,
    this.andar,
    this.numero,
    this.espaco,
  });

  factory Localizacao.fromJson(Map json) => Localizacao(
        id: json['id'],
        campus: json['campus'],
        pavilhao: json['pavilhao'],
        andar: json['andar'],
        numero: json['numero'],
        espaco:
            json['espaco'] is Map ? _i1.Espaco.fromJson(json['espaco']) : null,
      );

  final String? id;

  final String? campus;

  final String? pavilhao;

  final int? andar;

  final int? numero;

  final _i1.Espaco? espaco;

  Map<String, dynamic> toJson() => {
        'id': id,
        'campus': campus,
        'pavilhao': pavilhao,
        'andar': andar,
        'numero': numero,
        'espaco': espaco?.toJson(),
      };
}

class Equipamento {
  const Equipamento({
    this.id,
    this.nome,
    this.tipo,
    this.numTombo,
    this.espacoId,
    this.espaco,
  });

  factory Equipamento.fromJson(Map json) => Equipamento(
        id: json['id'],
        nome: json['nome'],
        tipo: json['tipo'],
        numTombo: json['numTombo'],
        espacoId: json['espacoId'],
        espaco:
            json['espaco'] is Map ? _i1.Espaco.fromJson(json['espaco']) : null,
      );

  final String? id;

  final String? nome;

  final String? tipo;

  final String? numTombo;

  final String? espacoId;

  final _i1.Espaco? espaco;

  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'tipo': tipo,
        'numTombo': numTombo,
        'espacoId': espacoId,
        'espaco': espaco?.toJson(),
      };
}

class Servico {
  const Servico({
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

  factory Servico.fromJson(Map json) => Servico(
        id: json['id'],
        espacoId: json['espacoId'],
        solicitanteId: json['solicitanteId'],
        descricao: json['descricao'],
        status: json['status'],
        espaco:
            json['espaco'] is Map ? _i1.Espaco.fromJson(json['espaco']) : null,
        solicitante: json['solicitante'] is Map
            ? _i1.Usuario.fromJson(json['solicitante'])
            : null,
        periodo: (json['periodo'] as Iterable?)
            ?.map((json) => _i1.Horario.fromJson(json)),
        $count: json['_count'] is Map
            ? _i2.ServicoCountOutputType.fromJson(json['_count'])
            : null,
      );

  final String? id;

  final String? espacoId;

  final String? solicitanteId;

  final String? descricao;

  final String? status;

  final _i1.Espaco? espaco;

  final _i1.Usuario? solicitante;

  final Iterable<_i1.Horario>? periodo;

  final _i2.ServicoCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
        'espaco': espaco?.toJson(),
        'solicitante': solicitante?.toJson(),
        'periodo': periodo?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

class Espaco {
  const Espaco({
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

  factory Espaco.fromJson(Map json) => Espaco(
        id: json['id'],
        localizacaoId: json['localizacaoId'],
        capacidadePessoas: json['capacidadePessoas'],
        acessibilidade: json['acessibilidade'],
        localizacao: json['localizacao'] is Map
            ? _i1.Localizacao.fromJson(json['localizacao'])
            : null,
        equipamentoDisponivel: (json['equipamentoDisponivel'] as Iterable?)
            ?.map((json) => _i1.Equipamento.fromJson(json)),
        turnos: (json['turnos'] as Iterable?)
            ?.map((json) => _i1.Turno.fromJson(json)),
        reservas: (json['reservas'] as Iterable?)
            ?.map((json) => _i1.Reserva.fromJson(json)),
        servicos: (json['servicos'] as Iterable?)
            ?.map((json) => _i1.Servico.fromJson(json)),
        $count: json['_count'] is Map
            ? _i2.EspacoCountOutputType.fromJson(json['_count'])
            : null,
      );

  final String? id;

  final String? localizacaoId;

  final int? capacidadePessoas;

  final bool? acessibilidade;

  final _i1.Localizacao? localizacao;

  final Iterable<_i1.Equipamento>? equipamentoDisponivel;

  final Iterable<_i1.Turno>? turnos;

  final Iterable<_i1.Reserva>? reservas;

  final Iterable<_i1.Servico>? servicos;

  final _i2.EspacoCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'id': id,
        'localizacaoId': localizacaoId,
        'capacidadePessoas': capacidadePessoas,
        'acessibilidade': acessibilidade,
        'localizacao': localizacao?.toJson(),
        'equipamentoDisponivel': equipamentoDisponivel?.map((e) => e.toJson()),
        'turnos': turnos?.map((e) => e.toJson()),
        'reservas': reservas?.map((e) => e.toJson()),
        'servicos': servicos?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

class Reserva {
  const Reserva({
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

  factory Reserva.fromJson(Map json) => Reserva(
        id: json['id'],
        espacoId: json['espacoId'],
        solicitanteId: json['solicitanteId'],
        descricao: json['descricao'],
        status: json['status'],
        espaco:
            json['espaco'] is Map ? _i1.Espaco.fromJson(json['espaco']) : null,
        solicitante: json['solicitante'] is Map
            ? _i1.Usuario.fromJson(json['solicitante'])
            : null,
        periodo: (json['periodo'] as Iterable?)
            ?.map((json) => _i1.Horario.fromJson(json)),
        $count: json['_count'] is Map
            ? _i2.ReservaCountOutputType.fromJson(json['_count'])
            : null,
      );

  final String? id;

  final String? espacoId;

  final String? solicitanteId;

  final String? descricao;

  final String? status;

  final _i1.Espaco? espaco;

  final _i1.Usuario? solicitante;

  final Iterable<_i1.Horario>? periodo;

  final _i2.ReservaCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'id': id,
        'espacoId': espacoId,
        'solicitanteId': solicitanteId,
        'descricao': descricao,
        'status': status,
        'espaco': espaco?.toJson(),
        'solicitante': solicitante?.toJson(),
        'periodo': periodo?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

class Usuario {
  const Usuario({
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

  factory Usuario.fromJson(Map json) => Usuario(
        id: json['id'],
        nome: json['nome'],
        email: json['email'],
        telefone: json['telefone'],
        photoUrl: json['photoUrl'],
        tipoUsuario: json['tipoUsuario'],
        departamentoId: json['departamentoId'],
        sigla: json['sigla'],
        isDepartamento: json['isDepartamento'],
        departamento: json['departamento'] is Map
            ? _i1.Usuario.fromJson(json['departamento'])
            : null,
        departamentoSetor: json['departamentoSetor'] is Map
            ? _i1.Usuario.fromJson(json['departamentoSetor'])
            : null,
        gestorReservaHorarios: (json['gestorReservaHorarios'] as Iterable?)
            ?.map((json) => _i1.Horario.fromJson(json)),
        gestorServicoHorarios: (json['gestorServicoHorarios'] as Iterable?)
            ?.map((json) => _i1.Horario.fromJson(json)),
        reservas: (json['reservas'] as Iterable?)
            ?.map((json) => _i1.Reserva.fromJson(json)),
        servicos: (json['servicos'] as Iterable?)
            ?.map((json) => _i1.Servico.fromJson(json)),
        $count: json['_count'] is Map
            ? _i2.UsuarioCountOutputType.fromJson(json['_count'])
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

  final _i1.Usuario? departamento;

  final _i1.Usuario? departamentoSetor;

  final Iterable<_i1.Horario>? gestorReservaHorarios;

  final Iterable<_i1.Horario>? gestorServicoHorarios;

  final Iterable<_i1.Reserva>? reservas;

  final Iterable<_i1.Servico>? servicos;

  final _i2.UsuarioCountOutputType? $count;

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
        'departamento': departamento?.toJson(),
        'departamentoSetor': departamentoSetor?.toJson(),
        'gestorReservaHorarios': gestorReservaHorarios?.map((e) => e.toJson()),
        'gestorServicoHorarios': gestorServicoHorarios?.map((e) => e.toJson()),
        'reservas': reservas?.map((e) => e.toJson()),
        'servicos': servicos?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

class Horario {
  const Horario({
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

  factory Horario.fromJson(Map json) => Horario(
        id: json['id'],
        inicio: json['inicio'],
        fim: json['fim'],
        agendaId: json['agendaId'],
        gestorServicoId: json['gestorServicoId'],
        gestorReservaId: json['gestorReservaId'],
        isReserved: json['isReserved'],
        reservaSolicitadaId: json['reservaSolicitadaId'],
        servicoSolicitadoId: json['servicoSolicitadoId'],
        agenda:
            json['agenda'] is Map ? _i1.Agenda.fromJson(json['agenda']) : null,
        gestorServico: json['gestorServico'] is Map
            ? _i1.Usuario.fromJson(json['gestorServico'])
            : null,
        gestorReserva: json['gestorReserva'] is Map
            ? _i1.Usuario.fromJson(json['gestorReserva'])
            : null,
        reservaSolicitada: json['reservaSolicitada'] is Map
            ? _i1.Reserva.fromJson(json['reservaSolicitada'])
            : null,
        servicoSolicitado: json['servicoSolicitado'] is Map
            ? _i1.Servico.fromJson(json['servicoSolicitado'])
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

  final _i1.Agenda? agenda;

  final _i1.Usuario? gestorServico;

  final _i1.Usuario? gestorReserva;

  final _i1.Reserva? reservaSolicitada;

  final _i1.Servico? servicoSolicitado;

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
        'agenda': agenda?.toJson(),
        'gestorServico': gestorServico?.toJson(),
        'gestorReserva': gestorReserva?.toJson(),
        'reservaSolicitada': reservaSolicitada?.toJson(),
        'servicoSolicitado': servicoSolicitado?.toJson(),
      };
}

class Agenda {
  const Agenda({
    this.id,
    this.observacao,
    this.turnoId,
    this.turno,
    this.horarios,
    this.$count,
  });

  factory Agenda.fromJson(Map json) => Agenda(
        id: json['id'],
        observacao: json['observacao'],
        turnoId: json['turnoId'],
        turno: json['turno'] is Map ? _i1.Turno.fromJson(json['turno']) : null,
        horarios: (json['horarios'] as Iterable?)
            ?.map((json) => _i1.Horario.fromJson(json)),
        $count: json['_count'] is Map
            ? _i2.AgendaCountOutputType.fromJson(json['_count'])
            : null,
      );

  final String? id;

  final String? observacao;

  final String? turnoId;

  final _i1.Turno? turno;

  final Iterable<_i1.Horario>? horarios;

  final _i2.AgendaCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'id': id,
        'observacao': observacao,
        'turnoId': turnoId,
        'turno': turno?.toJson(),
        'horarios': horarios?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

class Turno {
  const Turno({
    this.id,
    this.nome,
    this.espacoId,
    this.agenda,
    this.espaco,
    this.$count,
  });

  factory Turno.fromJson(Map json) => Turno(
        id: json['id'],
        nome: json['nome'],
        espacoId: json['espacoId'],
        agenda: (json['agenda'] as Iterable?)
            ?.map((json) => _i1.Agenda.fromJson(json)),
        espaco:
            json['espaco'] is Map ? _i1.Espaco.fromJson(json['espaco']) : null,
        $count: json['_count'] is Map
            ? _i2.TurnoCountOutputType.fromJson(json['_count'])
            : null,
      );

  final String? id;

  final String? nome;

  final String? espacoId;

  final Iterable<_i1.Agenda>? agenda;

  final _i1.Espaco? espaco;

  final _i2.TurnoCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'espacoId': espacoId,
        'agenda': agenda?.map((e) => e.toJson()),
        'espaco': espaco?.toJson(),
        '_count': $count?.toJson(),
      };
}

class PrecadastroUsuario {
  const PrecadastroUsuario({
    this.id,
    this.email,
    this.tipoUsuario,
  });

  factory PrecadastroUsuario.fromJson(Map json) => PrecadastroUsuario(
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
