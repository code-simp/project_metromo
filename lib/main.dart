import 'package:flutter/material.dart';
import 'package:project_metromo/pages/onboard.dart';
import 'package:project_metromo/pages/main_menu.dart';
import 'package:project_metromo/pages/recharge.dart';

void main() => runApp(MaterialApp(
  initialRoute: 'recharge',

  routes: {
    'onboard': (context) => onboard(),
    'mainMenu': (context) => mainMenu(),
    'recharge':(context) => recharge(),
  },
));
