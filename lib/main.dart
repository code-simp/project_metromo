import 'package:flutter/material.dart';
import 'package:project_metromo/pages/onboard.dart';
import 'package:project_metromo/pages/main_menu.dart';
import 'package:project_metromo/pages/recharge.dart';
import 'package:project_metromo/pages/success.dart';
import 'package:project_metromo/pages/travel_success.dart';
import 'package:project_metromo/pages/new_card.dart';
import 'package:project_metromo/pages/travel.dart';
import 'package:project_metromo/pages/new_card_success.dart';
import 'package:project_metromo/pages/oops2.dart';
import 'package:project_metromo/pages/oops1.dart';

void main() => runApp(MaterialApp(
  initialRoute: 'oops2',

  routes: {
    'onboard': (context) => onboard(),
    'mainMenu': (context) => mainMenu(),
    'recharge':(context) => recharge(),
    'success' : (context) => success(),
    'new_card':(context) => new_card(),
    'new_card_success':(context) => new_card_success(),
    'travel_success':(context) => travel_success(),
    'travel':(context) => travel(),
    'oops1':(context) => oops1(),
    'oops2':(context) => oops2(),
  },
));
