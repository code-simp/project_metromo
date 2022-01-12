import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart';
import 'dart:convert';


class report_month extends StatefulWidget {
  const report_month({Key? key}) : super(key: key);

  @override
  _report_monthState createState() => _report_monthState();
}

class _report_monthState extends State<report_month> {

  List data = [];

  Future<Object> monthly_report(String month) async {
    Response data = await get(Uri.parse('http://10.0.2.2:5000/report_analysis/$month'));
    Object TransTable = jsonDecode(data.body);
    // print(TransTable);
    return TransTable;
  }


  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as List;

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

                    Text('Choose Month',
                      style: TextStyle(
                          fontFamily: 'montserrat',
                          fontWeight: FontWeight.w700,
                          fontSize: 42,
                          color: Color.fromRGBO(25, 6, 25, 1)
                      ),
                    ),

                    SizedBox( height: 400,
                      child: ListView.builder(
                        // scrollDirection: Axis.vertical,
                        // shrinkWrap: true,
                        itemCount: data.length,
                        itemBuilder: (context, index){

                          return Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: InkWell(
                              onTap: () async {
                                Object res = await monthly_report('${ data[index][0].toString().substring(7,13) }');
                                Navigator.pushReplacementNamed(context, '/report_analysis',arguments: res);
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),

                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text('${ data[index][0].toString().substring(7,9) }-${ data[index][0].toString().substring(9,13) }',
                                        style : TextStyle(
                                        fontFamily: 'montserrat',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 22,
                                        color: Color.fromRGBO(25, 6, 25, 1)
                                    )),
                                  ),
                                ),

                              ),
                            ),
                          );

                        },
                      ),
                    ),

                    SizedBox(height: 20,),
                    Center(
                      child: RaisedButton(onPressed: (){
                        Navigator.pop(context);
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
