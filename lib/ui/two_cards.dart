import 'package:flutter/material.dart';
import 'package:ui_cupcake/ui/home_detail.dart';

class TwoCards extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height * 0.30;

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeDetail())),
          child: Stack(
            children: [
              // 전체 컨테이너
                Container(
                  width: size.width/2 - 25,
                  margin: EdgeInsets.only(right: 20),
                  height: categoryHeight,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromRGBO(86, 75, 243, 1),
                          Color.fromRGBO(110, 231, 249, 1),
                        ]),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(
                          5.0,
                          5.0,
                        ),
                        color: Colors.grey,
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      )
                    ],
                  ),
                ),
              // 흰부분 컨테이너와 글짜
              Positioned(
                bottom: 0,
                child: Container(
                    width: size.width/2 - 25,
                    margin: EdgeInsets.only(right: 20),
                    height: categoryHeight / 2 + 20,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0))
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 80.0, left: 20),
                          child: Text(
                            'Cupcake',
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 5),
                          child: Text('A tag line', style: TextStyle(fontSize: 15, color: Colors.grey[600]),),
                        ),
                      ],
                    ),
                  ),
              ),
              // circle
              Positioned(
                top: 50,
                child: Container(
                  width: size.width/2 - 25,
                  height: 140,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/cupcake1.jpeg'),
                      )),
                ),
              ),
            ],
          ),
        ),
        Stack(
          children: [
            // 전체 컨테이너
            Container(
              width: size.width/2 - 25,
              margin: EdgeInsets.only(right: 20),
              height: categoryHeight,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromRGBO(86, 75, 243, 1),
                      Color.fromRGBO(110, 231, 249, 1),
                    ]),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(
                      5.0,
                      5.0,
                    ),
                    color: Colors.grey,
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  )
                ],
              ),
            ),
            // 흰부분 컨테이너와 글짜
            Positioned(
              bottom: 0,
              child: Container(
                width: size.width/2 - 25,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight / 2 + 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 80.0, left: 20),
                      child: Text(
                        'Donut',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 5),
                      child: Text('A tag line', style: TextStyle(fontSize: 15, color: Colors.grey[600]),),
                    ),
                  ],
                ),
              ),
            ),
            // circle
            Positioned(
              top: 50,
              child: Container(
                width: size.width/2 - 25,
                height: 140,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/donut.jpeg'),
                    )),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
