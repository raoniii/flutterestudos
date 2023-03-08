import 'package:flutter/material.dart';

class RaoButton extends StatelessWidget {
  final TextEditingController? controlador;
  final String? rotulo;
  final String? dica;
  final IconData? icone;

  RaoButton(
      {Key? key,
      required this.controlador,
      required this.rotulo,
      required this.dica,
      this.icone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        child: const Text("Login"),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.green, // elevation color
          elevation: 5, // elevation of button
        ),
      ),
    );
  }
}
