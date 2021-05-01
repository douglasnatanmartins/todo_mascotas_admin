import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {

  CustomAppBar({Key key}) : preferredSize = Size.fromHeight(35), super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
            icon: Icon(
              FontAwesomeIcons.solidEnvelope,
              size: 18,
            ),
            onPressed: (){}
        ),
        const SizedBox(width: 15,),
        IconButton(
            icon: Icon(
              FontAwesomeIcons.solidBell,
              size: 18,
            ),
            onPressed: (){}
        ),
        const SizedBox(width: 15,),
        IconButton(
            icon: Icon(
              FontAwesomeIcons.cogs,
              size: 18,
            ),
            onPressed: (){}
        ),
        const SizedBox(width: 10,),
      ],
    );
  }
}

