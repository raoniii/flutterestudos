import 'package:flutter/material.dart';

const _tituloAppBar = 'Bem vindo!';

class Dashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DashboardState();
  }
}

class DashboardState extends State<Dashboard> {
  static const IconData attach_money_sharp =
      IconData(0xe7b0, fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          onTap: onItemTap,
          fixedColor: Colors.green,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.sports_soccer), label: "TImes"),
            BottomNavigationBarItem(
                icon: Icon(Icons.people), label: "Jogadores"),
            BottomNavigationBarItem(
                icon: Icon(Icons.engineering), label: "Técnicos"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.key_rounded,
                ),
                label: "Config"),
          ]),
    );
  }
}

void onItemTap(int selectedItems) {
  var pageController;
  pageController.jumpToPage(selectedItems);
}
