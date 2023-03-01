import 'package:flutter/material.dart';
import 'package:untitled1/appbarbutton/homepage.dart';
import 'package:untitled1/appbarbutton/search.dart';
import 'package:untitled1/appbarbutton/settibg.dart';
import 'package:untitled1/views/viewcard.dart';
import 'package:untitled1/views/viewlocator.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController pageController = PageController();
  List<Widget> pages = [Home(), ViewLocator(), ViewCard()];

  int selectIndex = 0;

  void onPageChanged(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  void onItemTap(int selectedItems) {
    pageController.jumpToPage(selectedItems);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: pages,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: BottomNavigationBar(

        onTap: onItemTap,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.sports_soccer,
                color: selectIndex == 1 ? Colors.green : Colors.black,
              ),
              label: "HOME1"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.gps_fixed,
                color: selectIndex == 1 ? Colors.green : Colors.black,
              ),
              label: "MAPA"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: selectIndex == 1 ? Colors.green : Colors.black,
              ),
              label: "Perfil"),
        ],
      ),
    );
  }
}
