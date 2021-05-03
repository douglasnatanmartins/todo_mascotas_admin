import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:todo_mascotas_admin/app/global_store/page_store.dart';
import 'package:mobx/mobx.dart';
import 'package:todo_mascotas_admin/app/global_widgets/custom_drawer/desktop/custom_drawer.dart';
import 'package:todo_mascotas_admin/app/modules/home/home_page.dart';
import 'package:todo_mascotas_admin/app/global_widgets/custom_appBar/custom_appbar.dart';
import 'package:todo_mascotas_admin/app/modules/pedidos/pedidos_page.dart';

class BasePage extends StatefulWidget {
  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  final PageStore pageStore = GetIt.I<PageStore>();
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();

    reaction((_) => pageStore.page,
        (page) => _pageController.jumpToPage(page as int));
  }

  @override
  Widget build(BuildContext context) {
    print('chamou page view');
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: _pageController,
      children: [
        HomePage(),
        PedidosPage(),
        ///TROCAR
        Scaffold(
            appBar: CustomAppBar(),
            body: Row(
              children: [
                CustomDrawer(),
                const SizedBox(width: 20,),
                Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.indigoAccent,
                  width: MediaQuery.of(context).size.width/1.2,
                )
              ],
            )),
        Scaffold(
            appBar: CustomAppBar(),
            body: Row(
              children: [
                CustomDrawer(),
                const SizedBox(width: 20,),
                Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.blue,
                  width: MediaQuery.of(context).size.width/1.2,
                )
              ],
            )),
        Scaffold(
            appBar: CustomAppBar(),
            body: Row(
              children: [
                CustomDrawer(),
                const SizedBox(width: 20,),
                Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.red,
                  width: MediaQuery.of(context).size.width/1.2,
                )
              ],
            )),
        Scaffold(
            appBar: CustomAppBar(),
            body: Row(
              children: [
                CustomDrawer(),
                const SizedBox(width: 20,),
                Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.deepOrange,
                  width: MediaQuery.of(context).size.width/1.2,
                )
              ],
            )),
        Scaffold(
            appBar: CustomAppBar(),
            body: Row(
              children: [
                CustomDrawer(),
                const SizedBox(width: 20,),
                Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.purple,
                  width: MediaQuery.of(context).size.width/1.2,
                )
              ],
            )),
      ],
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
