import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:http/http.dart';
import 'dart:convert';

class report_analysis extends StatefulWidget {
  const report_analysis({Key? key}) : super(key: key);

  @override
  _report_analysisState createState() => _report_analysisState();
}

class _report_analysisState extends State<report_analysis> {

  Map month_report = {};
  List<List<dynamic>> Graph_data = [];

  @override
  Widget build(BuildContext context) {

    month_report = month_report.isNotEmpty ? month_report : ModalRoute.of(context)?.settings.arguments as Map;
    print(month_report['data'].length);

    for(List i in month_report['data']) {
      Graph_data.add(i);
    }

    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/bg.png'),
                  fit: BoxFit.cover
              ),


            ),
            width: double.infinity,
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40,40,30,10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/logo.png'),

                    SizedBox(height: 30,),

                    Text('Report Analysis',
                      style: TextStyle(
                          fontFamily: 'montserrat',
                          fontWeight: FontWeight.w700,
                          fontSize: 42,
                          color: Color.fromRGBO(25, 6, 25, 1)
                      ),
                    ),
                    SizedBox(height: 20,),

                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Center(
                              child: Text('Revenue this month',
                                style: TextStyle(
                                    fontFamily: 'montserrat',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24,
                                    color: Color.fromRGBO(25, 6, 25, 1)
                                ),
                              ),
                            ),

                            SizedBox(height: 10,),

                            Center(
                              child: Text('₹ ${ month_report['revenue'] }',
                                style: TextStyle(
                                    fontFamily: 'montserrat',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24,
                                    color: Color.fromRGBO(25, 6, 25, 1)
                                ),
                              ),
                            ),
                            SfCartesianChart(
                              primaryXAxis: CategoryAxis(),
                              title: ChartTitle(text: 'Monthly revenue',
                                textStyle: TextStyle(
                                    fontFamily: 'montserrat',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Color.fromRGBO(25, 6, 25, 1)
                                ),


                              ),
                              legend: Legend( isVisible: false ),
                              tooltipBehavior: TooltipBehavior(enable: true),
                              series: [
                                LineSeries(
                                    dataSource: Graph_data,
                                    xValueMapper: (List data, _) => data[0].toString().substring(5,7),
                                    yValueMapper: (List data, _) => num.parse(data[4]),
                                    name: 'Revenue',
                                    // Enable data label
                                    dataLabelSettings: DataLabelSettings(isVisible: true))
                              ]

                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 10,),

                    Center(
                      child: RaisedButton(onPressed: (){
                        Navigator.pushReplacementNamed(context, '/history');
                      },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: BorderSide(color: Color.fromRGBO(131, 3, 50, 1),width: 4)
                        ),

                        color: Color.fromRGBO(255, 228, 211, 1),

                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                          child: Text('Done', style: TextStyle(
                            fontFamily: 'montserrat',
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            color: Color.fromRGBO(131, 3, 50, 1),
                          ),),
                        ),
                      ),
                    ),

                  ]
              ),
            )
        ));
  }
}
