import 'package:flutter/material.dart';

import 'package:app_componentes/src/pages/avatarPages/person_details.dart';
import 'package:app_componentes/src/pages/avatarPages/pet_details.dart';

class AvatarPage extends StatefulWidget {
  @override
  _AvatarPageState createState() => _AvatarPageState();
}

class _AvatarPageState extends State<AvatarPage> {
  int _correntIndex = 0;
  final List<Widget> _listBodyWidgets = [
    PersonDetails(),
    PetDetails(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0,
        title: Text('User Page'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('E C'),
              backgroundColor: Colors.brown,
            ),
          ),
        ],
      ),
      body: _listBodyWidgets[_correntIndex],
      bottomNavigationBar: _navigatorPage(),
    );
  }

  Widget _navigatorPage() {
    return BottomNavigationBar(
      currentIndex: _correntIndex,
      items: <BottomNavigationBarItem>[
        _createNavigatorItem(Icons.person_pin, 'Person', Colors.blue),
        _createNavigatorItem(Icons.pets, 'Details', Colors.blue),
      ],
      onTap: (index) {
        setState(() {
          _correntIndex = index;
        });
      },
    );
  }

  BottomNavigationBarItem _createNavigatorItem(
      IconData icon, String text, Color color) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      title: Text(text),
      backgroundColor: color,
    );
  }
}
