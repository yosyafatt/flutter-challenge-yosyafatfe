import 'package:firstbugs_infosys_test/src/route.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteController.generateRoute,
      theme: ThemeData(fontFamily: 'Montserrat'),
      initialRoute: 'splash',
    );
  }
}
