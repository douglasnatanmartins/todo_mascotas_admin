import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
//import 'package:responsive_framework/responsive_framework.dart';
import 'package:todo_mascotas_admin/app/modules/login/login_page.dart';
import 'package:todo_mascotas_admin/app/modules/splash/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.teal,
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Todo Mascotas Admin',
      /*builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget),
        minWidth: 450,
        defaultScale: true,
        defaultName: DESKTOP,
        breakpoints: [
          ResponsiveBreakpoint.resize(450, name: MOBILE),
          ResponsiveBreakpoint.autoScale(800, name: TABLET),
          ResponsiveBreakpoint.autoScale(1000, name: TABLET),
          ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
       //background: Container(color: Color(0xFFF5F5F5))
      ),*/
      onGenerateRoute: (RouteSettings settings){
          switch(settings.name){
           case '/login':
            return MaterialPageRoute(builder: (BuildContext context)=> LoginPage());
          /* case '/welcome':
            return MaterialPageRoute(builder: (BuildContext context)=> WelcomePage());
          case '/login':
            return MaterialPageRoute(builder: (BuildContext context)=> LoginPage());*/
            case '/':
            default:
              return MaterialPageRoute(builder: (BuildContext context)=> SplashPage());
          }
        });
  }
}