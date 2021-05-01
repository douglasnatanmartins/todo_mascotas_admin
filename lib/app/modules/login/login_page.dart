import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:todo_mascotas_admin/app/modules/login/ui/descktop/descktop_widget.dart';
import 'package:todo_mascotas_admin/app/modules/login/ui/mobile/mobile_widget.dart';
import 'package:todo_mascotas_admin/app/modules/login/ui/tablet/tablet_widget.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
        mobile: MobileScreem(),
        tablet: TabletScreem(),
        desktop:DesktopScreem(),
        watch: Container(color: Colors.purple),
    );
  }
}
