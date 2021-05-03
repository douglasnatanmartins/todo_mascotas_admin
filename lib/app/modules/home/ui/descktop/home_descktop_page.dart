import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todo_mascotas_admin/app/global_widgets/custom_drawer/desktop/custom_drawer.dart';
import 'package:todo_mascotas_admin/app/global_widgets/navbar/page_reader.dart';
import 'package:todo_mascotas_admin/app/global_widgets/custom_appBar/custom_appbar.dart';
import 'package:todo_mascotas_admin/app/modules/home/ui/descktop/widgets/custom_card.dart';

class HomeDescktopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: Row(
          children: [
            CustomDrawer(),
            Expanded(
                child: Container(
              color: Colors.white,
              child: ListView(
                children: [
                  PageHeader(text: 'DASHBOARD'),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomCard(
                            iconData: FontAwesomeIcons.cartArrowDown,
                            color1: Colors.blue[700],
                            color2: Colors.blue[400],
                            text: 'Ctd. Pedidos',
                            value: '125',
                            onTap: (){
                              print('Pedidos');
                            },
                        ),
                        CustomCard(
                            iconData: FontAwesomeIcons.calendarCheck,
                            color1: Colors.red[700],
                            color2: Colors.red[400],
                            text: 'Agendas',
                            value: '12',
                          onTap: (){
                            print('Agenda');
                          },
                        ),
                        CustomCard(
                            iconData: FontAwesomeIcons.userPlus,
                            color1: Colors.lightGreen.shade700,
                            color2: Colors.lightGreenAccent,
                            text: 'Nuevos Usuarios',
                            value: '23',
                          onTap: (){
                            print('Novos Usuarios');
                          },
                        ),
                        CustomCard(
                            iconData: FontAwesomeIcons.cartArrowDown,
                            color1: Colors.teal.shade600,
                            color2: Colors.teal.shade300,
                            text: 'Total del Día',
                            value: 'G\$ 1.200.000',
                          onTap: (){
                            print('Total geral');
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ));
  }
}
