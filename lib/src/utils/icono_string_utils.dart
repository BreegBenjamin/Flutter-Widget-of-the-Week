import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'whatshot': Icons.whatshot,
  'folder_open': Icons.folder_open
};
Icon getIcon(String nombreIcono) => Icon(
      _icons[nombreIcono],
      color: Colors.blue,
    );
