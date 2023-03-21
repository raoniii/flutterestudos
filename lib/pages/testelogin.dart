import 'package:flutter/material.dart';
import 'package:untitled1/pages/components/custompasswordfield.dart';
import 'package:untitled1/pages/components/custontextfield.dart';

class RaoLogin extends StatefulWidget {
  @override
  State<RaoLogin> createState() => _RaoLoginState();
}

class _RaoLoginState extends State<RaoLogin> {

  final _formKey = GlobalKey<FormState>();
  final _tEmail = TextEditingController();
  final _tSenha = TextEditingController();
  final _focusSenha = FocusNode();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Narnian!!!"),
      ),
      body: Form(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.contain,
                          image: Image.asset('arquivos/narnia.jpg').image)),
                )
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CustomTextFormField(controller: _tEmail, labelText: 'Email Address',hintText: 'Your email...',prefixIconData: Icons.email_outlined),
                          const SizedBox(height: 20),
                          CustomPasswordField(controller: _tSenha, labelText: "Senha", hintText: "digite sua senha aqui"), //password
                          const SizedBox(height: 20),
                          Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 2, 0, 20),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  primary: Colors.green,
                                  shadowColor: Colors.greenAccent,
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(32.0)),
                                  minimumSize: Size(200, 50), //////// HERE
                                ),
                                onPressed: () {},
                                child: Text('Come in'),
                              )),

                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(1, 0, 0, 1),
                            child: Text(
                              'Don’t have an account yet? ',
                            ),
                          ),

                          Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 2, 0, 20),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  primary: Colors.lightGreen,
                                  shadowColor: Colors.greenAccent,
                                   elevation: 3,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(32.0)),
                                  minimumSize: Size(200, 50), //////// HERE
                                ),
                                onPressed: () {},
                                child: Text('Register Now!'),
                              )),
                          const SizedBox(height: 40),
                          // Generated code for this TextField Widget...
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onClickLogin() {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    String login = _tEmail.text;
    String senha = _tSenha.text;

    print("Login: $login, Senha: $senha");
  }

  String? _validateLogin(String text) {
    if (text.isEmpty) {
      return "Digite o login";
    }
    return null;
  }

  String? _validateSenha(String text) {
    if (text.isEmpty) {
      return "Digite a senha";
    }
    if (text.length < 3) {
      return "A senha precisa ter pelo menos 3 números";
    }
    return null;
  }

  @override
  void dispose() {
    super.dispose();
  }

}
