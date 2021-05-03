import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconsSidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -3,
      right: 8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Material(
            color: Colors.transparent,
            child: IconButton(
                splashColor: Colors.white30,
                splashRadius: 18,
                icon: Icon(FontAwesomeIcons.solidEnvelope, size: 16,),
                color: Colors.teal.shade400,
                onPressed: (){
                  print('email');
                }
            ),
          ),
          Material(
            color: Colors.transparent,
            child: IconButton(
                splashRadius: 18,
                splashColor: Colors.white30,
                icon: Icon(FontAwesomeIcons.solidBell,
                    color: Colors.teal.shade400, size: 16),
                onPressed: (){
                  print('notifications');
                }
            ),
          ),
          Material(
            color: Colors.transparent,
            child: IconButton(
                splashColor: Colors.white30,
                splashRadius: 18,
                icon: Icon(FontAwesomeIcons.cog,
                    color: Colors.teal.shade400, size: 16),
                onPressed: (){
                  print('settings');
                }
            ),
          )
        ],
      ),
    );
  }
}
