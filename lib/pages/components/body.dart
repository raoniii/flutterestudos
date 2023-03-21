import 'package:flutter/material.dart';
import 'package:untitled1/constant.dart';
import 'package:untitled1/pages/components/header_with_seachbox.dart';
import 'package:untitled1/pages/components/titlewithmorebtn.dart';


class Body extends StatelessWidget {
@override
Widget build(BuildContext context) {
  // It will provie us total height  and width of our screen
  Size size = MediaQuery.of(context).size;
  // it enable scrolling on small device
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        HeaderWithSearchBox(size: size),
        TitleWithMoreBtn(title: "Recomendado", press: () {}),
        TitleWithMoreBtn(title: "Novidades", press: () {}),
        SizedBox(height: kDefaultPadding),
      ],
    ),
  );
}
}