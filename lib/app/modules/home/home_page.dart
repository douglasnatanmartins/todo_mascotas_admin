import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:todo_mascotas_admin/app/modules/home/ui/descktop/home_descktop_page.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Container(color: Colors.white,),
      tablet: Container(color: Colors.green,),
      desktop: HomeDescktopPage(),
      watch: Container(color: Colors.purple),
    );
  }
}
