import 'package:flutter/material.dart';

import '../model/category.dart';

class Search extends StatelessWidget {
  List<Category> categories = [
    Category(' Chips &\ncracker', 'smooth.jpeg'),
    Category(' Fruit \nsnacks', 'cupcake1.jpeg'),
    Category(' Desserts', 'smooth.jpeg'),
    Category(' Nuts', 'pretzel.jpeg'),
  ];

  List<Category> lifeStyles = [
    Category('Organic', 'smooth.jpeg'),
    Category('Gluten\nFree', 'cupcake1.jpeg'),
    Category('Paleo', 'smooth.jpeg'),
    Category('Vegan', 'pretzel.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            ListTile(
              title: Text(
                'Categories',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(10.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
              ),
              itemCount: categories.length,
              itemBuilder: (BuildContext context, int index) {
                return Stack(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(110, 228, 249, 1),
                            Color.fromRGBO(121, 143, 246, 1)
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Color(0xFF4B30ED),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          categories[index].title,
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ),
                    ),
                    Positioned.fromRect(
                      rect: Rect.fromCenter(center: Offset(190.0, 70.0), width: 160, height: 160),
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('images/${categories[index].img}'),
                            )),
                      ),
                    ),
                  ],
                );
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text(
                'Lifestyles',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(10.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
              ),
              itemCount: categories.length,
              itemBuilder: (BuildContext context, int index) {
                return Stack(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(238, 159, 194, 1),
                            Color.fromRGBO(144, 81, 227, 1)
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Color(0xFF4B30ED),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          lifeStyles[index].title,
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ),
                    ),
                    Positioned.fromRect(
                      rect: Rect.fromCenter(center: Offset(190.0, 70.0), width: 160, height: 160),
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('images/${lifeStyles[index].img}'),
                            )),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
