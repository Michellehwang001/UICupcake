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
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
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
  String _value = '1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: DropdownButton<String>(
          value: _value,
          icon: const Icon(Icons.keyboard_arrow_down),
          iconSize: 30,
          underline: Container(),
          items: [
            DropdownMenuItem(
              child: Text('Delivery to 1600 Amphitheater Way', style: Theme.of(context).textTheme.headline2,),
              value: '1',
            ),
            DropdownMenuItem(
              child: Text('Delivery to 1800', style: Theme.of(context).textTheme.headline2,),
              value: '2',
            ),
            DropdownMenuItem(
              child: Text('Delivery to 1800', style: Theme.of(context).textTheme.headline2,),
              value: '3',
            ),
            DropdownMenuItem(
              child: Text('Delivery to 1800', style: Theme.of(context).textTheme.headline2,),
              value: '4',
            ),
         ],
          onChanged: (value) {
           setState(() {
             _value = value!;
           });
          },
        ),
      ),
      body: Container(),
    );
  }
}
