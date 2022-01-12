import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';


class history_cards extends StatefulWidget {

  @override
  _history_cardsState createState() => _history_cardsState();
}

class _history_cardsState extends State<history_cards> {

  List data = [];



  // Future<List> transaction() async {
  //   Response data = await get(Uri.parse('http://10.0.2.2:5000/history_all'));
  //   List TransTable = jsonDecode(data.body);
  //   // print(Balance[0][0]);
  //   return TransTable;
  // }

  // List<info> trans = [
  //   info( card_id : 'CardId1', cost: 50, source: 'src1', dest : 'dest1', trans_id: 'TRNSID1'),
  //   info( card_id : 'CardId2', cost: 50, source: 'src2', dest : 'dest2', trans_id: 'TRNSID2'),
  //   info( card_id : 'CardId1', cost: 50, source: 'src1', dest : 'dest1', trans_id: 'TRNSID1'),
  //   info( card_id : 'CardId2', cost: 50, source: 'src2', dest : 'dest2', trans_id: 'TRNSID2'),
  //   info( card_id : 'CardId1', cost: 50, source: 'src1', dest : 'dest1', trans_id: 'TRNSID1'),
  //   info( card_id : 'CardId2', cost: 50, source: 'src2', dest : 'dest2', trans_id: 'TRNSID2'),
  // ];

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as List;
    List trans = data;


    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/bg.png'),
              fit: BoxFit.cover
          ),


        ),
        child: Column(
          children: [
            SizedBox(height: 20,),
            RaisedButton(onPressed: (){
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

            SizedBox(height: 20,),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: trans.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(20,10,20,10),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 10,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(40,20,40,20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('${trans[index][0]}${trans[index][1]}',
                                style: TextStyle(
                                    fontFamily: 'montserrat',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 22,
                                    color: Color.fromRGBO(25, 6, 25, 1)
                                ),),

                              Text('Transaction ID',
                                style: TextStyle(
                                    fontFamily: 'montserrat',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Color.fromRGBO(25, 6, 25, 1)
                                ),),

                              SizedBox(height: 20,),

                              Text('${trans[index][2]}${trans[index][3]}',
                                style: TextStyle(
                                    fontFamily: 'montserrat',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 22,
                                    color: Color.fromRGBO(25, 6, 25, 1)
                                ),),

                              Text('Card ID',
                                style: TextStyle(
                                    fontFamily: 'montserrat',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Color.fromRGBO(25, 6, 25, 1)
                                ),),

                              SizedBox(height: 20,),

                              Text('${trans[index][5]}',
                                style: TextStyle(
                                    fontFamily: 'montserrat',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 22,
                                    color: Color.fromRGBO(25, 6, 25, 1)
                                ),),

                              Text('Source',
                                style: TextStyle(
                                    fontFamily: 'montserrat',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Color.fromRGBO(25, 6, 25, 1)
                                ),),

                              SizedBox(height: 20,),

                              Text('${trans[index][6]}',
                                style: TextStyle(
                                    fontFamily: 'montserrat',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 22,
                                    color: Color.fromRGBO(25, 6, 25, 1)
                                ),),

                              Text('Destination',
                                style: TextStyle(
                                    fontFamily: 'montserrat',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Color.fromRGBO(25, 6, 25, 1)
                                ),),

                              SizedBox(height: 20,),

                              Text('${trans[index][4]}',
                                style: TextStyle(
                                    fontFamily: 'montserrat',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 22,
                                    color: Color.fromRGBO(25, 6, 25, 1)
                                ),),
                              Text('Price',
                                style: TextStyle(
                                    fontFamily: 'montserrat',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Color.fromRGBO(25, 6, 25, 1)
                                ),),

                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
