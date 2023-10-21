

import 'package:dev_manage/manager/route_manager.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   AppRouter appRouter=AppRouter();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 37, 55, 77),
          useMaterial3: true,
      ),
    onGenerateRoute:appRouter.onGenerateRoute,
    initialRoute: '/', 
    );
  }
}
