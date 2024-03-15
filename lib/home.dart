import 'package:flutter/material.dart';
import 'package:hostonwer/component/akses.dart';
import 'package:hostonwer/component/club.dart';
import 'package:hostonwer/component/header.dart';
import 'package:hostonwer/component/menus.dart';
import 'package:hostonwer/component/news.dart';
import 'package:hostonwer/component/search.dart';
import 'package:hostonwer/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: black,
          elevation: 0,
          toolbarHeight: 71,
          title: const Header()),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [Search(), Menus()],
      )),
    );
  }
}