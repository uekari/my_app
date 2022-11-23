// 下のメニュー参考：https://dev.classmethod.jp/articles/flutter-bottom-navigation/

import 'package:flutter/material.dart';
import 'package:my_app/next.dart';
import 'package:my_app/next2.dart';
import 'package:my_app/next3.dart';
import 'package:my_app/next4.dart';
import 'package:my_app/home.dart';

import 'next.dart';
import 'next2.dart';
import 'next3.dart';
import 'next4.dart';
import 'home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  static var _screens = [NextPage(), NextPage3(), NextPage4(), Homepage()];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム'),
            BottomNavigationBarItem(
                icon: Icon(Icons.refresh_sharp), label: 'Roulette'),
            BottomNavigationBarItem(
                icon: Icon(Icons.access_time_filled), label: 'Time'),
            BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm), label: 'アラーム'),
          ],
          type: BottomNavigationBarType.fixed,
        ));
  }
}
