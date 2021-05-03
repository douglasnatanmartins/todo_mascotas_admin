import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDrawerHeader extends StatelessWidget {

  CustomDrawerHeader({@required this.titleName, @required this.typeUser});
  final String titleName;
  final String typeUser;

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
        decoration: BoxDecoration(color: Colors.teal.shade400,),
        accountName: Text(
          titleName,
          style: TextStyle(
              color: Colors.grey[200],
              fontWeight: FontWeight.w500
          ),
        ),
        accountEmail: Text(
          typeUser,
          style: GoogleFonts.acme(
              color: Colors.grey[200]),
        ),
        currentAccountPicture: Icon(FontAwesomeIcons.cogs, size: 50, color: Colors.grey[200],)
    );
  }
}
