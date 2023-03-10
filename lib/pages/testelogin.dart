import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RaoLogin extends StatefulWidget {
  @override
  State<RaoLogin> createState() => _RaoLoginState();
}

class _RaoLoginState extends State<RaoLogin> {
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
                          TextFormField(
                            cursorColor: Colors.green,
                            obscureText: false,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              labelText: 'Email Address',
                              floatingLabelStyle:
                                  TextStyle(color: Colors.yellow),

                              hintText: 'Your email...',

                              hintStyle: TextStyle(color: Colors.lightGreen),
                              //hint text style

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
                          ), //emailogin
                          const SizedBox(height: 20),
                          TextFormField(
                            cursorColor: Colors.green,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              labelText: 'Email Pa1ssWord',
                              floatingLabelStyle:
                                  TextStyle(color: Colors.yellow),
                              hintText: 'Your password...',
                              hintStyle: TextStyle(color: Colors.lightGreen),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.lightGreen,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              filled: true,
                              prefixIconColor: Colors.green,
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
                          ), //password

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
                              'Don???t have an account yet? ',
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
}
