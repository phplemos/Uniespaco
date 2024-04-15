// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ProfileInfoWidget extends StatefulWidget {
  final String accountEmail;
  final String accountName;
  final String currentAccountPicture;
  final Function logout;

  const ProfileInfoWidget({
    super.key,
    required this.accountEmail,
    required this.accountName,
    required this.currentAccountPicture,
    required this.logout,
  });

  @override
  State<ProfileInfoWidget> createState() => _ProfileInfoWidgetState();
}

class _ProfileInfoWidgetState extends State<ProfileInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shadowColor: Colors.blue,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text(widget.accountEmail),
            accountName: Text(widget.accountName),
            currentAccountPicture: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image(
                image: NetworkImage(widget.currentAccountPicture),
              ),
            ),
            decoration: const BoxDecoration(color: Colors.blue),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Visualizar minhas solicitações de manutenção"),
            onTap: () {
              Navigator.pushNamed(context, '/visualizar_servicos');
              //Navegar para outra página
            },
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
            title: const Text("Cadastrar professor"),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/cadastro_professor');
              //Navegar para outra página
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Cadastrar setor"),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/cadastro_setor');
              //Navegar para outra página
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Ver Espaços"),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/visualizar_espaco');
              //Navegar para outra página
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout_rounded),
            title: const Text("Logout"),
            onTap: () {
              widget.logout();
            },
          ),
        ],
      ),
    );
  }
}
