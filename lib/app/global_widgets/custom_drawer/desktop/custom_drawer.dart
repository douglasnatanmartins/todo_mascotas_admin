
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:todo_mascotas_admin/app/global_store/page_store.dart';
import 'package:todo_mascotas_admin/app/modules/home/ui/descktop/widgets/item_tile.dart';
import 'custom_drawer_header.dart';

class CustomDrawer extends StatelessWidget {
  final PageStore pageStore = GetIt.I<PageStore>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Drawer(
        elevation: 2,
        child: Container(
          color: Colors.grey[100].withOpacity(0.95),
          child: Stack(
            children: [
              ListView(
                children: [
                  CustomDrawerHeader(titleName: 'Douglas', typeUser: 'Administrator'),
                  Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Divider(
                        color: Colors.grey[600],
                      )),
                  ItemTile(
                    iconData: FontAwesomeIcons.tachometerAlt,
                    textTitle: 'Dashboard',
                    onTap: () => pageStore.setPage(0),
                    isSelect: pageStore.page == 0,
                    isExpansion: false,
                  ),
                  ItemTile(
                    iconData: FontAwesomeIcons.cartArrowDown,
                    textTitle: 'Pedidos',
                    onTap: () => pageStore.setPage(1),
                    isSelect: pageStore.page == 1,
                    isExpansion: false,
                  ),
                  ItemTile(
                    iconData: FontAwesomeIcons.calendar,
                    textTitle: 'Agendas',
                    onTap: () => pageStore.setPage(2),
                    isSelect: pageStore.page == 2,
                    isExpansion: false,
                  ),
                  ItemTile(
                    iconData: FontAwesomeIcons.userCheck,
                    textTitle: 'Clientes',
                    onTap: () => pageStore.setPage(3),
                    isSelect: pageStore.page == 3,
                    onTap2: () => pageStore.setPage(4),
                    isSelect2: pageStore.page == 4,
                    isExpansion: true,
                    childIcon: FontAwesomeIcons.plusSquare,
                    childIcon2: FontAwesomeIcons.listAlt,
                    childTitle: 'Nuevo Cliente',
                    childTitle2: 'Lista de Clientes',
                  ),
                  ItemTile(
                    iconData: FontAwesomeIcons.solidFolder,
                    textTitle: 'Produtos',
                    onTap: () => pageStore.setPage(5),
                    isSelect: pageStore.page == 5,
                    onTap2: () => pageStore.setPage(6),
                    isSelect2: pageStore.page == 6,
                    isExpansion: true,
                    childIcon: FontAwesomeIcons.plusSquare,
                    childIcon2: FontAwesomeIcons.listAlt,
                    childTitle: 'Nuevo Producto',
                    childTitle2: 'Lista de Productos',
                  ),
                  ItemTile(
                    iconData: FontAwesomeIcons.clipboardList,
                    textTitle: 'Categorias',
                    onTap: () => pageStore.setPage(7),
                    isSelect: pageStore.page == 7,
                    onTap2: () => pageStore.setPage(8),
                    isSelect2: pageStore.page == 8,
                    isExpansion: true,
                    childIcon: FontAwesomeIcons.plusSquare,
                    childIcon2: FontAwesomeIcons.listAlt,
                    childTitle: 'Nueva Categoria',
                    childTitle2: 'Lista de Categorias',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 30,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

/*
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todo_mascotas_admin/app/global_widgets/custom_drawer/desktop/custom_drawer_header.dart';
import 'package:todo_mascotas_admin/app/global_widgets/custom_drawer/desktop/icons_sidebar.dart';
import 'package:todo_mascotas_admin/app/modules/home/ui/descktop/widgets/item_tile.dart';

class CustomDrawer extends StatelessWidget {

  CustomDrawer({@required this.body});
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return
      Stack(
      children: [
        SliderMenuContainer(
          appBarPadding: const EdgeInsets.only(top: 0),
          appBarHeight: 33,
          appBarColor: Colors.grey[50],
          title: Text(''),
          drawerIconSize: 20,
          drawerIconColor: Colors.teal.shade400,
          sliderMenuOpenSize: 200,
          sliderMenu: Container(
            color: Colors.grey[50],
            child: ListView(
              children: [
                CustomDrawerHeader(
                    titleName: 'Douglas Natan Martins',
                    typeUser: 'Administrador'
                ),
                Column(
                  children: [
                    ItemTile(
                      iconData: FontAwesomeIcons.tachometerAlt,
                      textTitle: 'Dashboard',
                      onTap: (){},
                      isSelect: false,
                      isExpansion: false,
                    ),
                    ItemTile(
                      iconData: FontAwesomeIcons.cartArrowDown,
                      textTitle: 'Pedidos',
                      onTap: (){},
                      isSelect: true,
                      isExpansion: false,
                    ),
                    ItemTile(
                      iconData: FontAwesomeIcons.calendar,
                      textTitle: 'Agendas',
                      onTap: (){},
                      isSelect: true,
                      isExpansion: false,
                    ),
                    ItemTile(
                      iconData: FontAwesomeIcons.userCheck,
                      textTitle: 'Clientes',
                      onTap: (){},
                      onTap2: (){},
                      isSelect: true,
                      isExpansion: true,
                      childIcon: FontAwesomeIcons.plusSquare,
                      childIcon2: FontAwesomeIcons.listAlt,
                      childTitle: 'Nuevo Cliente',
                      childTitle2: 'Lista de Clientes',
                    ),
                    ItemTile(
                      iconData: FontAwesomeIcons.solidFolder,
                      textTitle: 'Produtos',
                      onTap: (){},
                      onTap2: (){},
                      isSelect: true,
                      isExpansion: true,
                      childIcon: FontAwesomeIcons.plusSquare,
                      childIcon2: FontAwesomeIcons.listAlt,
                      childTitle: 'Nuevo Producto',
                      childTitle2: 'Lista de Productos',
                    ),
                    ItemTile(
                      iconData: FontAwesomeIcons.clipboardList,
                      textTitle: 'Categorias',
                      onTap: (){},
                      onTap2: (){},
                      isSelect: true,
                      isExpansion: true,
                      childIcon: FontAwesomeIcons.plusSquare,
                      childIcon2: FontAwesomeIcons.listAlt,
                      childTitle: 'Nueva Categoria',
                      childTitle2: 'Lista de Categorias',
                    ),
                  ],
                ),
              ],
            ),
          ),
          ///Aqui vai  o conteudo de cada Pagina
          sliderMain: body
        ),
        IconsSidebar()
      ],
    );
  }
}

*/