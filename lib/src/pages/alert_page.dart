import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Alert Page'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buttonAlert1(context),
            _buttonAlert2(context),
          ],
        ),
      ),
    );
  }

  void _ejecutarAlerta(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (contex) => AlertDialog(
        title: Text('Titulo Alerta'),
        content: FlutterLogo(
          size: 100.0,
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Cancel', style: TextStyle(color: Colors.blue)),
            onPressed: () => Navigator.of(context).pop(),
          ),
          FlatButton(
            child: Text('OK', style: TextStyle(color: Colors.blue)),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }

  Widget _buttonAlert1(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Text(
          'Lanzar Alerta',
          style: TextStyle(color: Colors.white),
        ),
        color: Colors.blue,
        onPressed: () => _ejecutarAlerta(context),
      ),
    );
  }

  Widget _buttonAlert2(BuildContext context) {
    return Center(
      child: FlatButton(
        color: Colors.blueGrey,
        shape: StadiumBorder(),
        child: Text(
          'Nueva Alerta',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () => _showAlertCustom(context),
      ),
    );
  }

  void _showAlertCustom(BuildContext context) {
    final alert = AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            alignment: Alignment.topRight,
            child: FlatButton(
              shape: CircleBorder(),
              onPressed: () => Navigator.of(context).pop(),
              child: Icon(Icons.close),
            ),
          ),
          Container(
            child: Image(
              height: 130.0,
              image: AssetImage('assets/giftbox.png'),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              children: [
                Text(
                  'Acabas de recibir un regalo',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('Contiene una gema especial'),
                Text('¿Deseas abrirlo?')
              ],
            ),
          ),
          Container(
            child: ButtonTheme(
              minWidth: 200.0,
              height: 50.0,
              child: RaisedButton(
                textColor: Colors.white,
                shape: StadiumBorder(),
                color: Colors.red[400],
                child: Text(
                  'Abrir',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
    showDialog(
      context: context,
      builder: (contex) => alert,
      barrierDismissible: false,
    );
  }
}
