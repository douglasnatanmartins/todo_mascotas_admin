import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomExpansionTile extends StatelessWidget {
  CustomExpansionTile(
      {this.childTitle,
      this.childTitle2,
      this.childTitle3,
      this.expansionTitle,
      this.onTapChild,
      this.onTapChild2,
      this.iconChild,
      this.iconChild2,
      this.iconExpansionTile});
  final String expansionTitle;
  final IconData iconExpansionTile;
  final String childTitle;
  final String childTitle2;
  final String childTitle3;
  final Function onTapChild;
  final Function onTapChild2;
  final IconData iconChild;
  final IconData iconChild2;


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: ExpansionTile(
        backgroundColor: Colors.grey[700],
        title: Row(
          children: [
            Icon(
              iconExpansionTile,
              color: Colors.white,
              size: 18,
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              expansionTitle,
              style: GoogleFonts.roboto(color: Colors.white, fontSize: 14),
            )
          ],
        ),
        children: [
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTapChild,
              child: Container(
                height: 50,
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Icon(
                      iconChild,
                      color: Colors.white,
                      size: 15,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      childTitle,
                      style:
                          GoogleFonts.roboto(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTapChild2,
              child: Container(
                height: 50,
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Icon(
                      iconChild2,
                      //FontAwesomeIcons.listAlt,
                      color: Colors.white,
                      size: 15,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      childTitle2,
                      style:
                          GoogleFonts.delius(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
