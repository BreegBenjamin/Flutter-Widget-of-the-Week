import 'package:flutter/material.dart';
import 'package:app_componentes/src/providers/menu_provider.dart';
import 'package:app_componentes/src/utils/icono_string_utils.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Home Page'),
          elevation: 0,
        ),
        body: _lista(),
      ),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final response = new List<Widget>();
    data.forEach((iVal) {
      final widget = new ListTile(
        leading: getIcon(iVal['icon']),
        title: Text(iVal['texto']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          Navigator.pushNamed(context, iVal['ruta']);
        },
      );
      response..add(widget)..add(Divider());
    });
    return response;
  }
}
