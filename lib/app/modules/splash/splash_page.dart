import 'dart:async';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  Future<Timer> startTime() async {
    return Timer(const Duration(seconds:1), NavigatorPage);
  }

  // ignore: non_constant_identifier_names
  Future<void> NavigatorPage() async {
    Navigator.of(context).pushNamed('/login');
  }

  @override
  void initState()  {
    startTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
