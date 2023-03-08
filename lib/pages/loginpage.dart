import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carr1os"),
      ),

      body: _body(),
    );
  }

  _body() {
    return

      Container(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: <Widget>[

          Text("Logins"),
          TextFormField(),
          SizedBox(height: 10,),
          Text("Senhas"),
          TextFormField(
            obscureText: true,
          ),
          SizedBox(height: 20,),
          Container(
            height: 46,
            child: ElevatedButton(
                onPressed: () {
                },
                child: const Text("Login")),
          )
        ],
      ),
    );
  }
}
