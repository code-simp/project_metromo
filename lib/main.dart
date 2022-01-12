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
import 'package:project_metromo/pages/history.dart';
import 'package:project_metromo/pages/history_cards.dart';
import 'package:project_metromo/pages/report_month.dart';
import 'package:project_metromo/pages/widgets/display_month.dart';
import 'package:project_metromo/pages/widgets/report_analysis.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/mainMenu',

  routes: {
    '/onboard': (context) => onboard(),
    '/mainMenu': (context) => mainMenu(),
    '/recharge':(context) => recharge(),
    '/recharge_success' : (context) => success(),
    '/new_card':(context) => new_card(),
    '/new_card_success':(context) => new_card_success(),
    '/travel_success':(context) => travel_success(),
    '/travel':(context) => travel(),
    '/oops1':(context) => oops1(),
    '/oops2':(context) => oops2(),
    '/history':(context) => history(),
    '/history_cards':(context) => history_cards(),
    '/report_month':(context) => report_month(),
    '/display_month':(context) => display_month(),
    '/report_analysis':(context) => report_analysis()
  },
));
