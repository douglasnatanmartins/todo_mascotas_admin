import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo_mascotas_admin/app/modules/login/ui/tablet/widgets/widget_left_teal_tablet.dart';
import 'package:todo_mascotas_admin/app/modules/login/ui/tablet/widgets/widget_rigth_white_tablet.dart';

class TabletScreem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/fundo_login06.jpg'),
                fit: BoxFit.cover
            )
        ),
        child: Center(
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            elevation: 20,
            child: Container(
              height: MediaQuery.of(context).size.height / 1.3,
              width: MediaQuery.of(context).size.width / 1.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children: [
                  WidgetLeftTealTablet(),
                  WidgetRigthWhiteTablet()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
