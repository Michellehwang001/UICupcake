import 'package:flutter/material.dart';

class SearchHead extends StatelessWidget implements PreferredSize {
  const SearchHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 1.1,
      title: Container(
        alignment: Alignment.center,
        height: 40.0,
        child: TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
            ),
            //icon: Icon(Icons.search),
            labelText: '🔎  Search JetSnack',
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(56.0);
}
