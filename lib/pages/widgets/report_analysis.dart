import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class report_analysis extends StatefulWidget {
  const report_analysis({Key? key}) : super(key: key);

  @override
  _report_analysisState createState() => _report_analysisState();
}

class _report_analysisState extends State<report_analysis> {

  Map month_report = {
    'revenue' : 450,
    'data' : [
      ['TRANS10012021-', 'trans_id_2', 'card_id_1', 'card_id_2', 200, 'trans_source', 'trans_dest'],
      ['TRANS11012021-', 'trans_id_2', 'card_id_1', 'card_id_2', 30, 'trans_source', 'trans_dest'],
      ['TRANS11012021-', 'trans_id_2', 'card_id_1', 'card_id_2', 50, 'trans_source', 'trans_dest'],
      ['TRANS11012021-', 'trans_id_2', 'card_id_1', 'card_id_2', 150, 'trans_source', 'trans_dest'],
      ['TRANS13012021-', 'trans_id_2', 'card_id_1', 'card_id_2', 543, 'trans_source', 'trans_dest'],
      ['TRANS18012021-', 'trans_id_2', 'card_id_1', 'card_id_2', 300, 'trans_source', 'trans_dest'],
      ['TRANS25012021-', 'trans_id_2', 'card_id_1', 'card_id_2', 50, 'trans_source', 'trans_dest'],
    ]
  };

  @override
  Widget build(BuildContext context) {
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
                                    dataSource: month_report['data'],
                                    xValueMapper: (List data, _) => data[0].toString().substring(5,7),
                                    yValueMapper: (List data, _) => data[4],
                                    name: 'Revenue',
                                    // Enable data label
                                    dataLabelSettings: DataLabelSettings(isVisible: true))
                              ]

                            ),
                          ],
                        ),
                      ),
                    )

                  ]
              ),
            )
        ));
  }
}
