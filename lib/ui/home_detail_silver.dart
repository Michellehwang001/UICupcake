import 'package:flutter/material.dart';

class HomeDetailSilver extends StatefulWidget {
  const HomeDetailSilver({Key? key}) : super(key: key);

  @override
  _HomeDetailSilverState createState() => _HomeDetailSilverState();
}

class _HomeDetailSilverState extends State<HomeDetailSilver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
           SliverAppBar(
            pinned: true,
            expandedHeight: 500.0,
            // flexibleSpace: FlexibleSpaceBar(
            // ),
             elevation: 0,
           ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('Grid Item $index'),
                );
              },
              childCount: 20,
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: Text('List Item $index'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

