import 'package:flutter/material.dart';
import 'package:uniespaco/layers/ui/presenters/pre_cadastro_usuarios/pre_cadastro_usuario_controller.dart';

class FormPreCadastroUsuarioWidget extends StatelessWidget {
  final PreCadastroUsuarioController controller;

  const FormPreCadastroUsuarioWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: controller.email,
              decoration: const InputDecoration(
                label: Text("Email"),
                border: OutlineInputBorder(),
              ),
              validator: controller.validatorEmail,
            ),
            const SizedBox(
              height: 20,
            ),
            DropdownButton<String>(
                isExpanded: true,
                value: controller.tipoUsuario,
                onChanged: (newValue) {
                  if (newValue != null) {
                    controller.tipoUsuario = newValue;
                  }
                },
                items: ['setor', 'professor'].map((String tipoUsuario) {
                  return DropdownMenuItem<String>(
                      value: tipoUsuario, child: Text(tipoUsuario));
                }).toList()),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    confirmarPrecadastro(context);
                  }
                },
                child: const Text("Fazer precadastro"))
          ],
        ),
      ),
    );
  }

  void confirmarPrecadastro(BuildContext context) {
    controller.save();
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('PreCadastro efetuado com sucesso!')));
    if (context.mounted) {
      Navigator.pushReplacementNamed(context, '/home');
    }
  }
}
