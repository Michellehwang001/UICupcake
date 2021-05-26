import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 1.1,
        title: Text('Delivery to 1600 Amphitheater Way', style: Theme.of(context).textTheme.headline2,),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Icon(Icons.keyboard_arrow_down, size: 30, color: Color(0xFF4B30ED),),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
