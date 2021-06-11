import 'package:flutter/material.dart';
import 'package:ui_cupcake/ui/popular_snack.dart';
import 'package:ui_cupcake/widget/unicorn_outline_button.dart';

class HomeDetail extends StatefulWidget {
  @override
  _HomeDetailState createState() => _HomeDetailState();
}

class _HomeDetailState extends State<HomeDetail> {
  final PopularSnack popularSnack = PopularSnack();
  bool _isTop = true;
  double padValue = 170.0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            setState(() {
              if (notification.metrics.pixels < 5) {
                _isTop = true;
              } else {
                _isTop = false;
              }
            });
            return true;
          },
          child: Column(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      AnimatedContainer(
                        height: _isTop ? 280 : 70,
                        width: size.width,
                        duration: Duration(seconds: 1),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color.fromRGBO(73, 39, 229, 1),
                                Color.fromRGBO(11, 9, 114, 1),
                              ]),
                        ),
                      ),
                      AnimatedContainer(
                        alignment: Alignment.bottomLeft,
                        height: _isTop ? 280 : 140,
                        duration: Duration(seconds: 1),
                        child: AnimatedPadding(
                          duration: Duration(seconds: 1),
                          padding: EdgeInsets.only(
                              top: _isTop ? 170.0 : 30.0, left: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Cupcake',
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  'A tag line',
                                  style: Theme.of(context).textTheme.headline4,
                                ),
                              ),
                              Text(
                                '\$12.99',
                                style: Theme.of(context).textTheme.headline1,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  //circle container
                  AnimatedPositioned(
                    top: _isTop ? 100 : 40,
                    left: _isTop ? 40 : 200,
                    duration: Duration(seconds: 1),
                    child: AnimatedContainer(
                      width: _isTop ? 350 : 190,
                      height: _isTop ? 350 : 190,
                      duration: Duration(seconds: 1),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/cupcake1.jpeg'),
                          )),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 10,
                    child: Container(
                      width: 48,
                      height: 48,
                      child: FloatingActionButton(
                        child: Icon(Icons.arrow_back),
                        backgroundColor: Color.fromRGBO(50, 31, 138, 1),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(thickness: 2),
              //scroll 가능
              Expanded(
                child: SingleChildScrollView(
                  child: ListBody(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Details',
                                style: Theme.of(context).textTheme.headline6),
                            Text(
                              'A cupcake (also British English: fairy cake; Hiberno-English: '
                              'bun; Australian English: fairy cake or patty cake[1]) '
                              'is a small cake designed to serve one person, which may be baked '
                              'in a small thin paper or aluminum cup. As with larger cakes, '
                              'frosting and other cake decorations such as fruit '
                              'and candy may be applied.'
                              'A cupcake (also British English: fairy cake; Hiberno-English: '
                              'bun; Australian English: fairy cake or patty cake[1]) '
                              'is a small cake designed to serve one person, which may be baked '
                              'in a small thin paper or aluminum cup. As with larger cakes, '
                              'frosting and other cake decorations such as fruit '
                              'and candy may be applied.',
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Text('Ingredients',
                                style: Theme.of(context).textTheme.headline6),
                            Text(
                              'A cupcake (also British English: fairy cake; '
                              'Hiberno-English: bun; Australian English: '
                              'fairy cake or patty cake[1]) is a small cake designed '
                              'to serve one person, which may be baked in a small thin '
                              'paper or aluminum cup. As with larger cakes, '
                              'frosting and other cake decorations such as fruit '
                              'and candy may be applied.',
                              style: Theme.of(context).textTheme.headline5,
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 3,
                      ),
                      ListTile(
                        title: Text(
                          'Customer also bought',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_outlined,
                          color: Color(0xFF4B30ED),
                        ),
                      ),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        width: size.width,
                        alignment: Alignment.topCenter,
                        child: popularSnack,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ListTile(
                        title: Text(
                          'Popular on JetSnack',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_outlined,
                          color: Color(0xFF4B30ED),
                        ),
                      ),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        width: size.width,
                        alignment: Alignment.topCenter,
                        child: popularSnack,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
              // bottomNaviagtionBar
              Divider(
                thickness: 3,
              ),
              Container(
                width: double.infinity,
                height: 70,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        'Qty',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      UnicornOutlineButton(
                        strokeWidth: 2,
                        radius: 40,
                        gradient: LinearGradient(
                          colors: [Color(0XFF86F7FA), Color(0XFF4B30ED)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        child: Icon(Icons.remove),
                        minheight: 30.0,
                        minwidth: 30.0,
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '1',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      UnicornOutlineButton(
                        strokeWidth: 2,
                        radius: 40,
                        gradient: LinearGradient(
                          colors: [Color(0XFF86F7FA), Color(0XFF4B30ED)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        child: Icon(Icons.add),
                        minheight: 30.0,
                        minwidth: 30.0,
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 200,
                        height: 45,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color.fromRGBO(72, 40, 225, 1), Color.fromRGBO(10, 9, 113, 1)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          color: Color(0xFF4B30ED),
                        ),
                        child: Text(
                          'ADD TO CART',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
