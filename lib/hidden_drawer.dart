import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:hiddendrawer/page.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];
  final customTextStyle = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20);

  @override
  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Home",
            baseStyle: const TextStyle(color: Colors.white),
            selectedStyle: customTextStyle,
            colorLineSelected: Colors.white),
        const SelectedPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "User",
            baseStyle: const TextStyle(color: Colors.white),
            selectedStyle: customTextStyle,
            colorLineSelected: Colors.white),
        const SelectedPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Buy",
            baseStyle: const TextStyle(color: Colors.white),
            selectedStyle: customTextStyle,
            colorLineSelected: Colors.white),
        const SelectedPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Settings",
            baseStyle: const TextStyle(color: Colors.white),
            selectedStyle: customTextStyle,
            colorLineSelected: Colors.white),
        const SelectedPage(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.green.shade700,
      screens: _pages,
      initPositionSelected: 0,
      slidePercent: 50,
      contentCornerRadius: 30,
    );
  }
}
