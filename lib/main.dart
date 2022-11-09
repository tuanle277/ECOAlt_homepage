import 'package:flutter/material.dart';

import 'screens/NewsScreen.dart';
import "screens/GuideScreen.dart";
import "screens/CouponScreen.dart";

import 'widgets/newsCell.dart';
import 'widgets/guideCell.dart';
import 'widgets/couponCell.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<NewsCell> _listOfNews = [
    NewsCell(
        'this is the first text asfjhaosifhasfaoisfhiasfoiasfoiafs',
        'this is the second text asofjoasfioasiofaisjfaosfaojisfojafosaifajsofojafsasiofsoiafoioifajsafoisoifajoijfois',
        "assets/images/mit.jpg"),
    NewsCell('this is the first text', 'this is the second text',
        "assets/images/mit.jpg"),
    NewsCell('this is the first text', 't his is the second text',
        "assets/images/mit.jpg"),
  ];

  final List<GuideCell> _listOfGuides = const [
    GuideCell(
        "assets/images/instagram.png",
        "assets/images/mit.jpg",
        "ECOAlternative LLC",
        "A company on sustainability",
        "Somewhere st, some city, some state, USA"),
    GuideCell(
        "assets/images/instagram.png",
        "assets/images/mit.jpg",
        "ECOAlternative LLC",
        "A company on sustainability",
        "Somewhere st, some city, some state, USA"),
    GuideCell(
        "assets/images/instagram.png",
        "assets/images/mit.jpg",
        "ECOAlternative LLC",
        "A company on sustainability",
        "Somewhere st, some city, some state, USA"),
    GuideCell(
        "assets/images/instagram.png",
        "assets/images/mit.jpg",
        "ECOAlternative LLC",
        "A company on sustainability",
        "Somewhere st, some city, some state, USA"),
    GuideCell(
        "assets/images/instagram.png",
        "assets/images/mit.jpg",
        "ECOAlternative LLC",
        "A company on sustainability",
        "Somewhere st, some city, some state, USA")
  ];

  final List<CouponCell> _listOfCoupon = const [
    CouponCell(
        "assets/images/instagram.png",
        "assets/images/mit.jpg",
        "ECOAlternative LLC",
        "A company on sustainability",
        "Somewhere st, some city, some state, USA",
        "You get to be the best person",
        "KTLIP"),
    CouponCell(
        "assets/images/instagram.png",
        "assets/images/mit.jpg",
        "ECOAlternative LLC",
        "A company on sustainability",
        "Somewhere st, some city, some state, USA",
        "You get to be the best person",
        "KTLIP"),
    CouponCell(
        "assets/images/instagram.png",
        "assets/images/mit.jpg",
        "ECOAlternative LLC",
        "A company on sustainability",
        "Somewhere st, some city, some state, USA",
        "You get to be the best person",
        "KTLIP"),
    CouponCell(
        "assets/images/instagram.png",
        "assets/images/mit.jpg",
        "ECOAlternative LLC",
        "A company on sustainability",
        "Somewhere st, some city, some state, USA",
        "You get to be the best person",
        "KTLIP"),
    CouponCell(
        "assets/images/instagram.png",
        "assets/images/mit.jpg",
        "ECOAlternative LLC",
        "A company on sustainability",
        "Somewhere st, some city, some state, USA",
        "You get to be the best person",
        "KTLIP"),
  ];

  int _selectedIndex = 0;

  void _bottomBarScreen(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    List<Widget> pages = <Widget>[
      NewsScreen(_listOfNews),
      GuideScreen(_listOfGuides),
      CouponScreen(_listOfCoupon),
    ];
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Guide',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.discount),
            label: 'Coupons',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _bottomBarScreen,
      ),
    );
  }
}
