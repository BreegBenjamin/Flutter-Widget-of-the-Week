import 'package:flutter/material.dart';

class PersonDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DraggableScrollableSheet(
          initialChildSize: 0.2,
          minChildSize: 0.2,
          maxChildSize: 1,
          builder: (context, ScrollController scrollControl) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey[50],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: ListView(
                controller: scrollControl,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  _CardContainerElements('Billetera Virtual', 'wallet'),
                  _CardContainerElements('Pagos Mobiles', 'mobile'),
                  _CardContainerElements('Compras por internet', 'laptop'),
                  _CardContainerElements('Tiendas fisicas', 'shop'),
                  _CardContainerElements('Regalos', 'gift-box'),
                  _CardContainerElements('Historial de compra', 'note'),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}

class _CardContainerElements extends StatelessWidget {
  final String _titulo;
  final String _image;
  _CardContainerElements(this._titulo, this._image);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  child: Image(
                    height: 45.0,
                    image: AssetImage('assets/${_image}.png'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    _titulo,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black38,
            )
          ],
        ),
      ),
    );
  }
}
