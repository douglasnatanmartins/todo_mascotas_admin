import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {

  CustomAppBar({Key key}) : preferredSize = Size.fromHeight(35), super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.grey[50],
      elevation: 1,
      actions: [
        IconButton(
          splashRadius: 20,
            icon: Icon(
              FontAwesomeIcons.solidEnvelope,
              size: 18,
              color: Colors.teal.shade400,
            ),
            onPressed: (){
            print('email');
            }
        ),
        const SizedBox(width: 15,),
        IconButton(
            splashRadius: 20,
            icon: Icon(
              FontAwesomeIcons.solidBell,
              size: 18,
              color: Colors.teal.shade400,
            ),
            onPressed: (){

              print('notifications');
            }
        ),
        const SizedBox(width: 15,),
        IconButton(
            splashRadius: 20,
            icon: Icon(
              FontAwesomeIcons.cog,
              size: 18,
              color: Colors.teal.shade400,
            ),
            onPressed: (){
              print('settings');
            }
        ),
        const SizedBox(width: 10,),
      ],
    );
  }
}

