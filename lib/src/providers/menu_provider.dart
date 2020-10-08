import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider {
  List<dynamic> opciones = [];

  Future<List<dynamic>> cargarData() async {
    final response = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(response);
    opciones = dataMap['rutas'];
    return opciones;
  }
}

final menuProvider = new _MenuProvider();
