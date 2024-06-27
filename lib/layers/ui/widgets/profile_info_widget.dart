// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/core/core.dart';
import 'package:uniespaco/core/role_handlers.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/shared/usuario_provider.dart';

class ProfileInfoWidget extends StatefulWidget {
  const ProfileInfoWidget({
    super.key,
  });

  @override
  State<ProfileInfoWidget> createState() => _ProfileInfoWidgetState();
}

class _ProfileInfoWidgetState extends State<ProfileInfoWidget> {
  final UsuarioProvider usuario = GetIt.instance.get<UsuarioProvider>();
  final Core core = GetIt.instance.get<Core>();

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: core.isCompleted,
      builder: (context, child) {
        return Drawer(
          shadowColor: Colors.blue,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountEmail: Text(core.user?.email ?? 'Error'),
                accountName: Text(core.user?.nome ?? 'Error'),
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: core.user?.photoUrl != null ? Image(image: NetworkImage(core.user!.photoUrl)) : const Icon(Icons.home),
                ),
                decoration: const BoxDecoration(color: Colors.blue),
              ),
              WidgetWithRole(
                allowedRoles: const <UserRole>[UserRole.master],
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text("Cadastrar espaco"),
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/cadastro_espaco');
                        //Navegar para outra página
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text("Precadastro Usuario"),
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/cadastro_usuario');
                        //Navegar para outra página
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text("Vincular Gestor de Reserva ao espaco"),
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/vincular_gestor_reserva_ao_espaco');
                        //Navegar para outra página
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text("Vincular Gestor de Servico ao espaco"),
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/vincular_gestor_servico_ao_espaco');
                        //Navegar para outra página
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text("Ver todos professores cadastrados"),
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/listar_todos_professores_cadastrados');
                        //Navegar para outra página
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text("Ver todos setores cadastrados"),
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/listar_todos_setores_cadastrados');
                        //Navegar para outra página
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text("Ver gestores de reserva por espaco"),
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/visualizar_gestores_reserva_vinculados_aos_espacos');
                        //Navegar para outra página
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text("Ver gestores de servico por espaco"),
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/visualizar_gestores_servico_vinculados_aos_espacos');
                        //Navegar para outra página
                      },
                    ),
                  ],
                ),
              ),
              WidgetWithRole(
                allowedRoles: const <UserRole>[UserRole.gestorReserva],
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text("Ver reservas dos espacos ao qual sou gestor"),
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/visualizar_reservas_por_espaco_gerido');
                        //Navegar para outra página
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text("Ver historico reserva por espaco"),
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/ver_historico_reserva');
                        //Navegar para outra página
                      },
                    ),
                  ],
                ),
              ),
              WidgetWithRole(
                allowedRoles: const [UserRole.gestorServico],
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text("Ver servicos dos espacos ao qual sou gestor"),
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/visualizar_servicos_por_espaco_gerido');
                        //Navegar para outra página
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text("Ver historico servico por espaco"),
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/ver_historico_servico');
                        //Navegar para outra página
                      },
                    ),
                  ],
                ),
              ),
              WidgetWithRole(
                allowedRoles: const <UserRole>[
                  UserRole.gestorServico,
                  UserRole.gestorReserva,
                  UserRole.professor,
                  UserRole.setor,
                ],
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text("Ver minhas reservas"),
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/minhas_reservas');
                        //Navegar para outra página
                      },
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Ver meus servicos"),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/meus_servicos');
                  //Navegar para outra página
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout_rounded),
                title: const Text("Logout"),
                onTap: () {
                  usuario.logout();
                  if (context.mounted) {
                    Navigator.pushReplacementNamed(context, '/');
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
