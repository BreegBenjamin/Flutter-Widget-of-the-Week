import 'package:flutter/material.dart';

class HomeTempPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        title: Text('App Temp'),
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[ListBand()],
      ),
    );
  }
}

class ListBand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.1,
      minChildSize: 0.1,
      maxChildSize: 1,
      builder: (context, ScrollController scrollController) {
        return Container(
          child: _crearWidget(scrollController),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        );
      },
    );
  }

  Widget _crearWidget(ScrollController scrollController) {
    List<String> bandas = [
      'Iron Maiden',
      'Stratovarius',
      'Queen',
      'Judas Priest',
      'Rainbow',
      'Scorpions',
      'Helloween',
      'Kraken',
      "Megadeth",
      "Metallica"
    ];
    var result = new List<Widget>();
    bandas.forEach((band) {
      final tempWidget = new ListTile(
        title: Text(band),
        subtitle: Text('Band Description'),
        leading: Icon(
          Icons.android,
          color: Colors.greenAccent,
        ),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {},
      );
      result..add(tempWidget)..add(Divider());
    });

    return ListView(
      controller: scrollController,
      children: result,
    );
  }
}
