import 'package:flutter/material.dart';

class report_month extends StatefulWidget {
  const report_month({Key? key}) : super(key: key);

  @override
  _report_monthState createState() => _report_monthState();
}

class _report_monthState extends State<report_month> {

  List data = [
    ['TRANS10012022-', 'trans_id_2', 'card_id_1', 'card_id_2', 'cost', 'trans_source', 'trans_dest'],
    ['TRANS10012022-', 'trans_id_2', 'card_id_1', 'card_id_2', 'cost', 'trans_source', 'trans_dest'],
    ['TRANS10012021-', 'trans_id_2', 'card_id_1', 'card_id_2', 'cost', 'trans_source', 'trans_dest'],
    ['TRANS10122021-', 'trans_id_2', 'card_id_1', 'card_id_2', 'cost', 'trans_source', 'trans_dest'],
    ['TRANS10112021-', 'trans_id_2', 'card_id_1', 'card_id_2', 'cost', 'trans_source', 'trans_dest'],
    ['TRANS10102021-', 'trans_id_2', 'card_id_1', 'card_id_2', 'cost', 'trans_source', 'trans_dest'],
    ['TRANS10102021-', 'trans_id_2', 'card_id_1', 'card_id_2', 'cost', 'trans_source', 'trans_dest'],
  ];


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
                            child: Card(


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
