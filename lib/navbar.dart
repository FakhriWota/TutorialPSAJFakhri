
import 'package:flutter/material.dart';
import 'package:hostonwer/home.dart';
import 'package:hostonwer/new.dart';
import 'package:hostonwer/notif.dart';
import 'package:hostonwer/profil.dart';
import 'package:iconify_flutter/iconify_flutter.dart'; // For Iconify Widget
import 'package:iconify_flutter/icons/zondicons.dart'; // for Non Colorful Icons

class NavBarr extends StatefulWidget {
  const NavBarr({super.key});

  @override
  State<NavBarr> createState() => _NavBarState();
}

class _NavBarState extends State<NavBarr> {
  int _currentIndex = 0;
  List<Widget> pages = const [
   HomePage(),
   NewProduct(),
   Notif(),
   ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex){
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
          label: 'home',
          backgroundColor: Color.fromARGB(255, 59, 55, 59),
          icon: Transform.scale(
            scale: 0.5, // Sesuaikan nilai skala sesuai keinginan Anda
            child: Iconify(Zondicons.home,
            color: Color.fromARGB(255, 146, 131, 146),),
          ),
        ),
          BottomNavigationBarItem(
          label: 'new product',
          backgroundColor: Color.fromARGB(255, 59, 55, 59),
          icon: Transform.scale(
            scale: 0.5, // Sesuaikan nilai skala sesuai keinginan Anda
            child: Iconify(Zondicons.apparel,
            color: Color.fromARGB(255, 146, 131, 146),),
          ),
        ),
          BottomNavigationBarItem(
          label: 'notification',
          backgroundColor: Color.fromARGB(255, 59, 55, 59),
          icon: Transform.scale(
            scale: 0.5, // Sesuaikan nilai skala sesuai keinginan Anda
            child: Iconify(Zondicons.notification,
            color: Color.fromARGB(255, 146, 131, 146),),
          ),
        ),
          BottomNavigationBarItem(
          label: 'me',
          backgroundColor: Color.fromARGB(255, 59, 55, 59),
          icon: Transform.scale(
            scale: 0.5, // Sesuaikan nilai skala sesuai keinginan Anda
            child: Iconify(Zondicons.user,
            color: Color.fromARGB(255, 146, 131, 146),),
          ),
        )
        ],
      ),
    );
  }
}