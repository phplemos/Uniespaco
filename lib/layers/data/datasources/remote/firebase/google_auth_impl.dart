import 'package:uniespaco/layers/data/datasources/datasource.dart';
import 'package:uniespaco/layers/data/datasources/google_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:uniespaco/layers/data/dto/usuario_dto.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

class GoogleAuthImpl implements GoogleAuth {
  FirebaseAuth auth = FirebaseAuth.instance;

  final GoogleSignIn googleSignIn = GoogleSignIn();

  final DataSource dataSource;

  GoogleAuthImpl({required this.dataSource});

  @override
  Future<bool> login() async {
    try {
      return _signInWithGoogle().then((value) async {
        var user = value;
        if (user != null) {
          var dominio = _getDominioEmail(user.email);
          if (dominio != 'uesb.edu.br') {
            return false;
          } else {
            await verificarRegistro(
              usuarioInfo: {
                'id': user.uid,
                'nome': user.displayName,
                'email': user.email,
                'photoUrl': user.photoURL,
                'telefone': user.phoneNumber ?? '',
              },
            );
            return true;
          }
        }
        return false;
      });
    } catch (e) {
      throw Exception('Erro Ao logar!');
    }
  }

  @override
  Future<void> logout() async {
    await googleSignIn.signOut();
  }

  Future<User?> _signInWithGoogle() async {
    try {
      //Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      //Obtendo detalhes da requisição
      final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;
      //criando novas credenciais
      final AuthCredential credential = GoogleAuthProvider.credential(accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
      //Logando o usuario com as credenciais
      final UserCredential userCredential = await auth.signInWithCredential(credential);
      final user = userCredential.user;
      if (user != null) {
        return user;
      }
      return null;
    } catch (e) {
      throw Exception('Erro com o google SignIn');
    }
  }

  String _getDominioEmail(String? email) {
    final index = email!.indexOf('@');
    if (index == -1) {
      return '';
    }
    return email.substring(index + 1);
  }

  @override
  Future<void> verificarRegistro({required Map<String, dynamic> usuarioInfo}) async {
    try {
      // Verifica se o usuario ja está cadastrado
      var responseItemById = await dataSource.getItemById(tabela: 'usuario', itemId: usuarioInfo['id']);
      if (responseItemById.isEmpty) {
        // Busca email em lista de precadastro
        var responsePreCadastro = await dataSource.getItensByCampoEspecifico(tabela: 'precadastro', campo: 'email', referencia: usuarioInfo['email']);
        if (responsePreCadastro.isEmpty) {
          usuarioInfo.putIfAbsent('tipoUsuario', () => 'comum');
          dataSource.save(tabela: 'usuario', item: usuarioInfo);
        }
        usuarioInfo.putIfAbsent('tipoUsuario', () => responsePreCadastro.first['tipoUsuario']);
        dataSource.save(tabela: 'usuario', item: usuarioInfo);
      }
      return;
    } catch (e) {
      throw Exception('Erro ao verificar');
    }
  }

  @override
  Future<UsuarioEntity> getUsuario() async {
    try {
      final User? user = auth.currentUser;
      final response = await dataSource.getItemById(tabela: 'usuario', itemId: user!.uid);
      return UsuarioDto.fromMap(response).toEntity();
    } catch (e) {
      throw Exception('Erro ao buscar usuario');
    }
  }
}
