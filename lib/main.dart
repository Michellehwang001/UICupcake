import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ui_cupcake/ui/head.dart';
import 'package:ui_cupcake/ui/search.dart';
import 'package:ui_cupcake/ui/search_head.dart';
import 'package:ui_cupcake/ui/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
        bottomAppBarColor: Color(0xFF4B30ED),
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: Color(0xFF4B30ED),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
              color: Colors.black, fontSize: 19, fontWeight: FontWeight.w600),
          headline3: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.w600),
          headline4: TextStyle(
              color: Color.fromRGBO(123, 115, 119, 1),
              fontSize: 23,
              fontWeight: FontWeight.w600),
          headline5: TextStyle(
              color: Color.fromRGBO(123, 115, 119, 1), fontSize: 18, height: 2),
          headline6: TextStyle(
              color: Color.fromRGBO(123, 115, 119, 1),
              fontSize: 15,
              fontWeight: FontWeight.w600,
              letterSpacing: 2.0),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Home(),
    Search(),
    Text(
      'Search',
    ),
    Text(
      'Profile',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: _selectedIndex == 0 ? Head() : SearchHead(),
          body: _widgetOptions[_selectedIndex],
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Color(0xFF4B30ED),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black.withOpacity(0.1),
                )
              ],
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
              child: GNav(
                // ????????? ???????????? ??? ????????? ???????????? ??????
                rippleColor: Colors.white,
                hoverColor: Colors.grey[100]!,
                // selected icon and text color
                activeColor: Colors.white,
                iconSize: 30,
                // the tab button gap between icon and text
                gap: 5,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                duration: Duration(milliseconds: 900),
                curve: Curves.easeInOut,
                // selected tab background color
                tabBackgroundColor: Color(0xFF4B30ED),
                // unselected icon color
                color: Colors.white,
                tabActiveBorder: Border.all(width: 2, color: Colors.white),
                tabBorder: Border.all(width: 2, color: Colors.transparent),
                textStyle: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
                tabs: [
                  GButton(
                    icon: Icons.home_outlined,
                    text: 'HOME',
                    // icon ??????
                    iconActiveColor: Colors.white,
                  ),
                  GButton(
                    icon: Icons.search,
                    text: 'SEARCH',
                    iconActiveColor: Colors.white,
                  ),
                  GButton(
                    icon: Icons.shopping_cart_outlined,
                    text: 'CART',
                    iconActiveColor: Colors.white,
                  ),
                  GButton(
                    icon: Icons.person_outline,
                    text: 'Profile',
                    iconActiveColor: Colors.white,
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          )),
    );
  }
}
