import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class new_card extends StatelessWidget {
  Future<String> getPosts() async {
    Response card_no = await get(Uri.parse('http://10.0.2.2:5000/add_card'));
    print(card_no.body);
    List CardNo = jsonDecode(card_no.body);
    return CardNo[0][0];
  }


  const new_card({Key? key}) : super(key: key);

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

                    Text('Add new card',
                      style: TextStyle(
                          fontFamily: 'montserrat',
                          fontWeight: FontWeight.w700,
                          fontSize: 42,
                          color: Color.fromRGBO(25, 6, 25, 1)
                      ),
                    ),
                    SizedBox(height: 30,),
                    Text('A new card can be\nacquired at rs 100 ',
                      style: TextStyle(
                          fontFamily: 'montserrat',
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: Color.fromRGBO(25, 6, 25, 1)
                      ),),
                    SizedBox(height: 20,),

                    Row(
                      children: [
                        Center(
                            child: RaisedButton(onPressed: () async{
                                String card_id = await getPosts();
                                Navigator.pushReplacementNamed(context, '/new_card_success',arguments: {
                                  'cardNo' : card_id
                                } );
                                // print(card_id);
                            },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              color: Color.fromRGBO(131, 3, 50, 1),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                                child: Text('Confirm', style: TextStyle(
                                    fontFamily: 'montserrat',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24,
                                    color: Colors.white
                                ),),
                              ),
                            )
                        ),



                        Flexible(
                          child: Center(
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
                                  child: Text('Cancel', style: TextStyle(
                                    fontFamily: 'montserrat',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24,
                                    color: Color.fromRGBO(131, 3, 50, 1),
                                  ),),
                                ),
                              )
                          ),
                        )

                      ],
                    ),
                  ]
              ),
            )
        ));
  }
}
