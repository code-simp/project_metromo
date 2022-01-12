import 'package:flutter/material.dart';

class report_analysis extends StatefulWidget {
  const report_analysis({Key? key}) : super(key: key);

  @override
  _report_analysisState createState() => _report_analysisState();
}

class _report_analysisState extends State<report_analysis> {

  Map month_report = {
    'revenue' : 450,
    'data' : [
      ['TRANS10012022-', 'trans_id_2', 'card_id_1', 'card_id_2', '200', 'trans_source', 'trans_dest'],
      ['TRANS10122021-', 'trans_id_2', 'card_id_1', 'card_id_2', '30', 'trans_source', 'trans_dest'],
      ['TRANS10112021-', 'trans_id_2', 'card_id_1', 'card_id_2', '50', 'trans_source', 'trans_dest'],
      ['TRANS10102021-', 'trans_id_2', 'card_id_1', 'card_id_2', '150', 'trans_source', 'trans_dest'],
      ['TRANS10112021-', 'trans_id_2', 'card_id_1', 'card_id_2', '543', 'trans_source', 'trans_dest'],
      ['TRANS10112021-', 'trans_id_2', 'card_id_1', 'card_id_2', '300', 'trans_source', 'trans_dest'],
      ['TRANS10112021-', 'trans_id_2', 'card_id_1', 'card_id_2', '50', 'trans_source', 'trans_dest'],
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
                  ]
              ),
            )
        ));
  }
}
