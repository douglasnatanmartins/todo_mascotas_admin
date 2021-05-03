import 'package:flutter/material.dart';
import 'package:todo_mascotas_admin/app/global_widgets/custom_drawer/desktop/custom_drawer.dart';
import 'package:todo_mascotas_admin/app/global_widgets/custom_appBar/custom_appbar.dart';

class PedidosPageDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: CustomAppBar(),
        body: Row(
          children: [
            CustomDrawer(),
        const SizedBox(width: 20,),
            Expanded(child:
                Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.yellow,
                  width: MediaQuery.of(context).size.width/1.2,
                ))
          ],
        ));
  }
}
