import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_mascotas_admin/app/modules/home/ui/descktop/widgets/custom_expansion_tile.dart';
import 'package:todo_mascotas_admin/app/modules/home/ui/descktop/widgets/item_tile.dart';

class HomeDescktopPage extends StatelessWidget {
  GlobalKey<SliderMenuContainerState> _key =
  new GlobalKey<SliderMenuContainerState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SliderMenuContainer(
            appBarPadding: const EdgeInsets.only(top: 0),
            appBarHeight: 33,
            appBarColor: Colors.teal,

            title: Text(''),
            drawerIconSize: 20,
            drawerIconColor: Colors.grey[100],
            key: _key,
            sliderMenuOpenSize: 200,
            sliderMenu: Container(
              color: Colors.grey[50],
              child: ListView(
                children: [
                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.teal.shade800),
                      accountName: Text(
                          'Douglas Natan Martins',
                        style: TextStyle(
                          color: Colors.grey[200],
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      accountEmail: Text(
                          'Administrador',
                        style: GoogleFonts.acme(
                            color: Colors.grey[200]),
                      ),
                    currentAccountPicture: Icon(FontAwesomeIcons.cogs, size: 50, color: Colors.grey[200],)
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
                          iconData: FontAwesomeIcons.userCheck,
                          textTitle: 'Clientes',
                          onTap: (){},
                          onTap2: (){},
                          isSelect: true,
                          isExpansion: true,
                          childIcon: FontAwesomeIcons.userPlus,
                          childIcon2: FontAwesomeIcons.users,
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
                      )
                    ],
                  ),
                ],
              ),
            ),
            sliderMain:Container(
              color: Colors.white,
            ),
          ),
          Positioned(
            top: -3,
            right: 8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Material(
                  color: Colors.transparent,
                  child: IconButton(
                      splashColor: Colors.white30,
                      splashRadius: 18,
                      icon: Icon(FontAwesomeIcons.solidEnvelope, size: 16,),
                      color: Colors.white,
                      onPressed: (){
                        print('email');
                      }
                      ),
                ),
                Material(
                  color: Colors.transparent,
                  child: IconButton(
                      splashRadius: 18,
                      splashColor: Colors.white30,
                      icon: Icon(FontAwesomeIcons.solidBell,
                        color: Colors.white, size: 16),
                      onPressed: (){
                        print('notifications');
                      }
                      ),
                ),
                Material(
                  color: Colors.transparent,
                  child: IconButton(
                    splashColor: Colors.white30,
                      splashRadius: 18,
                      icon: Icon(FontAwesomeIcons.cog,
                          color: Colors.white, size: 16),
                      onPressed: (){
                        print('settings');
                      }
                  ),
                )
              ],
            ),
          ),
        ],
      )
    );

    /*Scaffold(
      drawerScrimColor: Colors.transparent,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  color: Colors.grey[800],
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width /6.5,
                  child: Column(
                    children: [
                      Container(
                        color: Colors.grey[850],
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundImage: AssetImage('packages/flutter_login/assets/images/ecorp.png'),
                                ),
                                const SizedBox(width: 15,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        'Douglas Natan Martins',
                                        style: GoogleFonts.delius(
                                          fontSize: 12,
                                          color: Colors.white
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(top: 10),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Icon(Icons.circle, color: Colors.green, size: 10,),
                                            const SizedBox(width: 5,),
                                            Text(
                                                'Conectado',
                                              style: GoogleFonts.delius(
                                                  fontSize: 10,
                                                  color: Colors.white
                                              ),
                                            )
                                          ],
                                        )
                                    )
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: TextFormField(
                                style: TextStyle(
                                  color: Colors.grey
                                ),
                                decoration: InputDecoration(
                                    focusColor: Colors.red,
                                    filled: true,
                                    fillColor: Colors.grey[700],
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: BorderSide(
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: BorderSide(
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    isDense: true,
                                    hintText: 'Búsqueda',
                                    hintStyle: GoogleFonts.acme(color: Colors.grey)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Expanded(
                          child: ListView(
                            children: [
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: (){},
                                  child: Container(
                                    height: 50,
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Row(
                                      children: [
                                        Icon(FontAwesomeIcons.tachometerAlt, color: Colors.white, size: 20,),
                                        const SizedBox(width: 15,),
                                        Text(
                                          'Dashboard',
                                          style: GoogleFonts.roboto(
                                            color: Colors.white,
                                            fontSize: 14
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              CustomExpansionTile(
                                expansionTitle: 'Productos',
                                iconExpansionTile:FontAwesomeIcons.solidFolder,
                                childTitle: 'Nuevo Producto',
                                iconChild: FontAwesomeIcons.plusSquare,
                                onTapChild: (){},
                                childTitle2: 'Lista de Productos',
                                iconChild2: FontAwesomeIcons.listAlt,
                                onTapChild2: (){},
                              ),
                              CustomExpansionTile(
                                expansionTitle: 'Categorias',
                                iconExpansionTile:FontAwesomeIcons.solidCopy,
                                childTitle: 'Nueva Categoria',
                                iconChild: FontAwesomeIcons.plusSquare,
                                onTapChild: (){},
                                childTitle2: 'Lista de Productos',
                                iconChild2: FontAwesomeIcons.listAlt,
                                onTapChild2: (){},
                              ),
                              CustomExpansionTile(
                                expansionTitle: 'Clientes',
                                iconExpansionTile:FontAwesomeIcons.userFriends,
                                childTitle: 'Nuevo Cliente',
                                iconChild: FontAwesomeIcons.userPlus,
                                onTapChild: (){},
                                childTitle2: 'Lista de Clientes',
                                iconChild2: FontAwesomeIcons.users,
                                onTapChild2: (){},
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );*/
  }
}
