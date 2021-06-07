import 'package:flutter/material.dart';
import 'package:ui_cupcake/widget/unicorn_outline_button.dart';

class CategoriesScroller extends StatelessWidget {
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
              Container(
                margin: EdgeInsets.only(right: 10),
                child: UnicornOutlineButton(
                  strokeWidth: 2,
                  radius: 40,
                  gradient: LinearGradient(
                    colors: [Color(0XFF86F7FA), Color(0XFF4B30ED)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  child: Icon(Icons.menu_outlined),
                  minheight: 30.0,
                  minwidth: 30.0,
                  onPressed: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: UnicornOutlineButton(
                  strokeWidth: 2,
                  radius: 40,
                  gradient: LinearGradient(
                    colors: [Color(0XFF86F7FA), Color(0XFF4B30ED)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  child: Text('Organic'),
                  minheight: 30.0,
                  minwidth: 88.0,
                  onPressed: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: UnicornOutlineButton(
                  strokeWidth: 2,
                  radius: 40,
                  gradient: LinearGradient(
                    colors: [Color(0XFF86F7FA), Color(0XFF4B30ED)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  child: Text('Gluten-free'),
                  minheight: 30.0,
                  minwidth: 100.0,
                  onPressed: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: UnicornOutlineButton(
                  strokeWidth: 2,
                  radius: 40,
                  gradient: LinearGradient(
                    colors: [Color(0XFF86F7FA), Color(0XFF4B30ED)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  child: Text('Dairy-free'),
                  minheight: 30.0,
                  minwidth: 100.0,
                  onPressed: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: UnicornOutlineButton(
                  strokeWidth: 2,
                  radius: 40,
                  gradient: LinearGradient(
                    colors: [Color(0XFF86F7FA), Color(0XFF4B30ED)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  child: Text('Dairy-free'),
                  minheight: 30.0,
                  minwidth: 100.0,
                  onPressed: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: UnicornOutlineButton(
                  strokeWidth: 2,
                  radius: 40,
                  gradient: LinearGradient(
                    colors: [Color(0XFF86F7FA), Color(0XFF4B30ED)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  child: Text('Dairy-free'),
                  minheight: 30.0,
                  minwidth: 100.0,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
