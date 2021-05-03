import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:todo_mascotas_admin/app/modules/pedidos/descktop/pedidos_page_descktop.dart';

class PedidosPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Container(color: Colors.white,),
      tablet: Container(color: Colors.green,),
      desktop: PedidosPageDesktop(),
      watch: Container(color: Colors.purple),
    );
  }
}