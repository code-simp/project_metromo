import 'package:flutter/material.dart';
import 'package:project_metromo/pages/onboard.dart';
import 'package:project_metromo/pages/main_menu.dart';

void main() => runApp(MaterialApp(
  initialRoute: 'mainMenu',

  routes: {
    'onboard': (context) => onboard(),
    'mainMenu': (context) => mainMenu(),
  },
));
