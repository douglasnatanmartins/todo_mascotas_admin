import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:todo_mascotas_admin/app/global_store/page_store.dart';
import 'package:todo_mascotas_admin/app/modules/base/base_page.dart';
import 'package:todo_mascotas_admin/app/modules/login/login_page.dart';
import 'package:todo_mascotas_admin/app/modules/splash/splash_page.dart';

void main() {
  setupLocators();
  runApp(MyApp());
}

void setupLocators() {
  GetIt.I.registerSingleton(PageStore());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.teal,
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Todo Mascotas Admin',
      onGenerateRoute: (RouteSettings settings){
          switch(settings.name){
           case '/login':
            return MaterialPageRoute(builder: (BuildContext context)=> LoginPage());
            case '/base':
              return MaterialPageRoute(builder: (BuildContext context)=> BasePage());
            case '/':
            default:
              return MaterialPageRoute(builder: (BuildContext context)=> SplashPage());
          }
        });
  }
}