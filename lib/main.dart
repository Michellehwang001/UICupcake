import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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
          headline2: TextStyle(
              color: Colors.black, fontSize: 19, fontWeight: FontWeight.w600),
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
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
    ),
    Text(
      'Likes',
    ),
    Text(
      'Search',
    ),
    Text(
      'Profile',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          elevation: 1.1,
          title: Text(
            'Delivery to 1600 Amphitheater Way',
            style: Theme.of(context).textTheme.headline2,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: Icon(
                Icons.keyboard_arrow_down,
                size: 30,
                color: Color(0xFF4B30ED),
              ),
            ),
          ],
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Color(0xFF4B30ED),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                // 버튼을 클릭했을 때 물결이 퍼지듯이 효과
                rippleColor: Colors.white,
                hoverColor: Colors.grey[100]!,
                gap: 10,
                activeColor: Colors.white,
                iconSize: 30,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                duration: Duration(milliseconds: 400),
                curve: Curves.easeInOut,
                tabBackgroundColor: Color(0xFF4B30ED),
                color: Colors.white,
                tabActiveBorder: Border.all(width: 2.5, color: Colors.white),
                textStyle: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
                tabs: [
                  GButton(
                    icon: Icons.home_outlined,
                    text: 'HOME',
                    // icon 컬러
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
          ),
        ));
  }
}
