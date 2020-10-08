import 'package:app_componentes/src/pages/alert_page.dart';
import 'package:flutter/material.dart';

import 'package:app_componentes/src/routes/routes.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: getApplicationRoutes(),
      onGenerateRoute: (settings) =>
          MaterialPageRoute(builder: (BuildContext contex) => AlertPage()),
    );
  }
}
