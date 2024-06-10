// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/layers/shared/usuario_provider.dart';

class ProfileInfoWidget extends StatefulWidget {
  const ProfileInfoWidget({
    super.key,
  });

  @override
  State<ProfileInfoWidget> createState() => _ProfileInfoWidgetState();
}

class _ProfileInfoWidgetState extends State<ProfileInfoWidget> {
  late final UsuarioProvider usuario = GetIt.I.get();

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: usuario,
      builder: (context, child) {
        return Drawer(
          shadowColor: Colors.blue,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountEmail: Text(usuario.value?.email ?? 'Error'),
                accountName: Text(usuario.value?.nome ?? 'Error'),
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: usuario.value?.photoUrl != null ? Image(image: NetworkImage(usuario.value!.photoUrl)) : const Icon(Icons.home),
                ),
                decoration: const BoxDecoration(color: Colors.blue),
              ),
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
