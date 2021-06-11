import 'package:flutter/material.dart';
import 'package:ui_cupcake/widget/unicorn_outline_button.dart';

class PopularSnack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final double categoryHeight = MediaQuery.of(context).size.height * 0.085 - 50;

    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: FittedBox(
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/smooth.jpeg'),
                        )),
                  ),
                  Text(
                    'Smooth',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/chips.jpeg'),
                        )),
                  ),
                  Text(
                    'Chip',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/pretzel.jpeg'),
                        )),
                  ),
                  Text(
                    'Pretzel',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/cupcake1.jpeg'),
                        )),
                  ),
                  Text(
                    'Cupcake',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/smooth.jpeg'),
                        )),
                  ),
                  Text(
                    'Smooth',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
