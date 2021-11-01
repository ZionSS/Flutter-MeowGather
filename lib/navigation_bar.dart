import 'package:flutter/material.dart';
import 'package:meowgather/MainPage/adopt_page.dart';
import 'package:meowgather/MainPage/clinic_page.dart';
import 'package:meowgather/MainPage/setting_page.dart';
import 'package:meowgather/tab_item.dart';
import 'MainPage/shop_page.dart';
import 'MainPage/home_page.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
   final List<Widget> pages = [
    ShopPage(
      key: PageStorageKey('Page1'),
    ),
    AdoptPage(
      key: PageStorageKey('Page2'),
    ),
    HomePage(
      key: PageStorageKey('Page3'),
    ),
    ClinicPage(
      key: PageStorageKey('Page4'),
    ),
    SettingPage(
      key: PageStorageKey('Page5'),
    ),
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  int _selectedIndex = 2;

  get selectedItemColor => null;

  Widget _bottomNavigationBar(int selectedIndex) => BottomNavigationBar(
        onTap: (int index) => setState(() => _selectedIndex = index),
        currentIndex: selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Shop',
              ),
          BottomNavigationBarItem(
              icon: Icon(Icons.catching_pokemon), label: 'Adopt'),
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_hospital), label: 'Clinic'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Setting'),
        ],
        selectedItemColor: Colors.amber[500],
        unselectedItemColor: Colors.black54,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(_selectedIndex),
      body: PageStorage(
        child: pages[_selectedIndex],
        bucket: bucket,
      ),
    );
  }
}