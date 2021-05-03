import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard(
      {@required this.iconData,
      @required this.color1,
      @required this.color2,
      @required this.text,
      @required this.value,
      @required this.onTap});

  final String text;
  final String value;
  final IconData iconData;
  final Color color1;
  final Color color2;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                colors: [
                  color1,
                  color2,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )),
          height: MediaQuery.of(context).size.height / 5.5,
          width: MediaQuery.of(context).size.width / 6,
          child: Stack(
            children: [
              Positioned(
                bottom: 20,
                right: 20,
                child: Icon(
                  iconData,
                  color: Colors.white30,
                  size: 80,
                ),
              ),
              Positioned(
                  top: 8,
                  left: 8,
                  child: Text(
                    text,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  )),
              Positioned(
                  bottom: 20,
                  left: 10,
                  child: Text(
                    value,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
