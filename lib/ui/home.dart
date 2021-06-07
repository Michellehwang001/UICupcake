import 'package:flutter/material.dart';
import 'package:ui_cupcake/ui/categories_scroller.dart';
import 'package:ui_cupcake/ui/popular_snack.dart';
import 'package:ui_cupcake/ui/two_cards.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final CategoriesScroller categoriesScroller = CategoriesScroller();
    final PopularSnack popularSnack = PopularSnack();
    final TwoCards twoCards = TwoCards();

    return SingleChildScrollView(
      //child: _widgetOptions.elementAt(_selectedIndex),
      child: Column(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: size.width,
            alignment: Alignment.topCenter,
            child: categoriesScroller,
          ),
          ListTile(
            title: Text('Android\'s picks', style: Theme.of(context).textTheme.headline1,),
            trailing: Icon(Icons.arrow_forward_outlined, color: Color(0xFF4B30ED),),
          ),
          Center(
           child: twoCards,
          ),
          SizedBox(height: 15,),
          Divider(thickness: 3,),
          ListTile(
            title: Text('Popular on Jetsnack', style: Theme.of(context).textTheme.headline1,),
            trailing: Icon(Icons.arrow_forward_outlined, color: Color(0xFF4B30ED),),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: size.width,
            alignment: Alignment.topCenter,
            child: popularSnack,
          ),
          SizedBox(height: 15,),
          Divider(thickness: 3,),
          ListTile(
            title: Text('WFH favorites', style: Theme.of(context).textTheme.headline1,),
            trailing: Icon(Icons.arrow_forward_outlined, color: Color(0xFF4B30ED),),
          ),
          Center(
            child: twoCards,
          ),
          SizedBox(height: 15,),
          Divider(thickness: 3,),
          ListTile(
            title: Text('Newly Added', style: Theme.of(context).textTheme.headline1,),
            trailing: Icon(Icons.arrow_forward_outlined, color: Color(0xFF4B30ED),),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: size.width,
            alignment: Alignment.topCenter,
            child: popularSnack,
          ),
        ],
      ),
    );
  }
}
