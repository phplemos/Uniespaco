// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:uniespaco/layers/ui/presenters/avaliar_solicitacao_reserva/avaliar_solicitacao_reserva.dart';
import 'package:uniespaco/layers/ui/presenters/cadastro_espaco/cadastro_espaco.dart';
import 'package:uniespaco/layers/ui/presenters/cadastro_usuarios/cadastro_usuario.dart';
import 'package:uniespaco/layers/ui/presenters/home/home.dart';
import 'package:uniespaco/layers/ui/presenters/login/login.dart';
import 'package:uniespaco/layers/ui/presenters/professores_cadastrados/professores_cadastrados.dart';
import 'package:uniespaco/layers/ui/presenters/setores_cadastrados/setores_cadastrados.dart';
import 'package:uniespaco/layers/ui/presenters/vincular_gestor_reserva_ao_espaco/vincular_gestor_reserva_ao_espaco.dart';
import 'package:uniespaco/layers/ui/presenters/vincular_gestor_servico_ao_espaco/vincular_gestor_servico_ao_espaco.dart';
import 'package:uniespaco/layers/ui/presenters/visualizar_gestores_reserva_vinculados_aos_espacos/visualizar_gestores_reserva_vinculados_aos_espacos.dart';
import 'package:uniespaco/layers/ui/presenters/visualizar_gestores_servico_vinculados_aos_espacos/visualizar_gestores_servico_vinculados_aos_espacos.dart';
import 'package:uniespaco/layers/ui/presenters/visualizar_reservas_por_espaco_gerido/visualizar_reservas_por_espaco_gerido.dart';
import 'package:uniespaco/layers/ui/presenters/visualizar_servicos_por_espaco_gerido/visualizar_servicos_por_espaco_gerido.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/cadastro_espaco': (context) => const CadastroEspacoPage(),
        '/vincular_gestor_reserva_ao_espaco': (context) => const VincularGestorReservaAoEspacoPage(),
        '/vincular_gestor_servico_ao_espaco': (context) => const VincularGestorServicoAoEspacoPage(),
        '/cadastro_usuario': (context) => const CadastroUsuarioPage(),
        '/listar_todos_professores_cadastrados': (context) => const ProfessoresCadastradosPage(),
        '/listar_todos_setores_cadastrados': (context) => const SetoresCadastradosPage(),
        '/visualizar_reservas_por_espaco_gerido': (context) => const VisualizarReservasPorEspacoGeridoPage(),
        '/visualizar_servicos_por_espaco_gerido': (context) => const VisualizarServicosPorEspacoGeridoPage(),
        '/visualizar_gestores_reserva_vinculados_aos_espacos': (context) => VisualizarGestoresReservaVinculadosAosEspacosPage(),
        '/visualizar_gestores_servico_vinculados_aos_espacos': (context) => VisualizarGestoresServicoVinculadosAosEspacosPage(),
      },
    );
  }
}
