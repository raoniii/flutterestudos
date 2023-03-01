import 'package:flutter/material.dart';

class ViewLoading extends StatefulWidget {
  const ViewLoading({ Key? key }) : super(key: key);

  @override
  _ViewLoadingState createState() => _ViewLoadingState();
}

class _ViewLoadingState extends State<ViewLoading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("loading screen"),
    );
  }
}