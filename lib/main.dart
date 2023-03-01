import 'package:flutter/material.dart';
import 'package:untitled1/appbarbutton/myhomepage.dart';
import 'package:untitled1/views/viewcard.dart';
import 'package:untitled1/views/viewlocator.dart';
import 'package:untitled1/views/viewlogin.dart';

void main() => runApp(DQuebrada());


class DQuebrada extends StatelessWidget {
  const DQuebrada({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      theme: ThemeData.dark(),

    );
  }
}