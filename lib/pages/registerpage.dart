import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register a new Narnian!!!"),
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
                          TextFormField(
                            obscureText: false,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              labelText: 'Nome Completo',
                              hintText: 'Digite eu nome completo...',
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.lightGreen,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              filled: true,
                              prefixIcon: Icon(
                                Icons.email_outlined,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            obscureText: false,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              labelText: 'Digite seu e-mail keeggo',
                              hintText: 'Digite e-mail aqui...',
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.lightGreen,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              filled: true,
                              prefixIcon: Icon(
                                Icons.lock_outline,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            obscureText: false,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              labelText: 'Digite seu e-mail cliente',
                              hintText: 'Digite e-mail do cliente...',
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.lightGreen,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              filled: true,
                              prefixIcon: Icon(
                                Icons.lock_outline,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            obscureText: false,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              labelText: 'Digite seu e-mail cliente',
                              hintText: 'Digite e-mail do cliente...',
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.lightGreen,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              filled: true,
                              prefixIcon: Icon(
                                Icons.lock_outline,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            obscureText: false,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              labelText: 'Email PassWord',
                              hintText: 'Your password...',
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.lightGreen,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              filled: true,
                              prefixIcon: Icon(
                                Icons.lock_outline,
                              ),
                              suffixIcon: Align(
                                widthFactor: 1.0,
                                heightFactor: 1.0,
                                child: Icon(
                                  Icons.visibility_outlined,
                                ),
                              ),
                            ),
                          ),
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
}
