import 'package:dev_manage/presentation/add_edit/add_edit_screen.dart';
import 'package:dev_manage/presentation/home/home_screen.dart';
import 'package:flutter/material.dart';

class AppRouter{
  Route onGenerateRoute(RouteSettings settings){
    switch (settings.name){
      case '/':
       return MaterialPageRoute(builder: (context) =>const HomeScreen(),);
    case '/AddOrEdit Screen':
    AddEditScreen addOrEditScreen=settings.arguments as AddEditScreen;
    return MaterialPageRoute(builder: (context) => AddEditScreen(addOrEdit: addOrEditScreen.addOrEdit),);
    default:
    return MaterialPageRoute(builder: (context) => const SizedBox(),);
    }
  }
}