import 'package:dev_manage/presentation/home/home_screen.dart';
import 'package:flutter/material.dart';

class AppRouter{
  Route onGenerateRoute(RouteSettings settings){
    switch (settings.name){
      case '/':
       return MaterialPageRoute(builder: (context) =>const HomeScreen(),);
    default:
    return MaterialPageRoute(builder: (context) => const SizedBox(),);
    }
  }
}