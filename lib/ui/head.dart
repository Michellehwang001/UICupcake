import 'package:flutter/material.dart';

class Head extends StatelessWidget implements PreferredSize{
  const Head({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      elevation: 1.1,
      title: Text(
        'Delivery to 1600 Amphitheater Way',
        style: Theme.of(context).textTheme.headline2,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
          child: Icon(
            Icons.keyboard_arrow_down,
            size: 30,
            color: Color(0xFF4B30ED),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(56.0);
}
