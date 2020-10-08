import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(25),
        children: [
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.bluetooth_searching,
              color: Colors.blue,
            ),
            title: Text('My Primera Tarjeta'),
            subtitle: Text('Descripción de mi tarjeta xd'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                child: Text(
                  'Cancel',
                  style: TextStyle(color: Colors.blue),
                ),
                onPressed: () {},
              ),
              FlatButton(
                child: Text(
                  'Ok',
                  style: TextStyle(color: Colors.blue),
                ),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return ClipRRect(
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.circular(20),
      child: Card(
        child: Column(
          children: [
            FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(
                  'https://media-exp1.licdn.com/dms/image/C561BAQGEbvT3SFyR9Q/company-background_10000/0?e=2159024400&v=beta&t=hI9WfHDdxBHKVfJmjvSggOVF8VBYIwilVWHqR_ChmdM'),
              fadeInDuration: Duration(milliseconds: 200),
              fit: BoxFit.cover,
              height: 250.0,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text('Descripción de Imagen'),
            )
          ],
        ),
      ),
    );
  }
}
