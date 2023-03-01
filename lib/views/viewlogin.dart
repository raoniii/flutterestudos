import 'package:flutter/material.dart';

class ViewLogin extends StatefulWidget {
  const ViewLogin({ Key? key }) : super(key: key);

  @override
  _ViewLoginState createState() => _ViewLoginState();
}

class _ViewLoginState extends State<ViewLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ViewLogin111"),),
    );
  }
}