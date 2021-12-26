import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class recharge extends StatelessWidget {
  const recharge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        resizeToAvoidBottomInset: false,
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

            Text('Recharge',
              style: TextStyle(
                  fontFamily: 'montserrat',
                  fontWeight: FontWeight.w700,
                  fontSize: 42,
                  color: Color.fromRGBO(25, 6, 25, 1)
              ),
            ),
              SizedBox(height: 40,),
              recharge_form(),
              ]
          ),
        )
    ));
  }
}

class recharge_form extends StatelessWidget {
  recharge_form({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Future<String> recharge_card(card_id,amount) async {
      Response balance = await get(Uri.parse('http://10.0.2.2:5000/recharge_card/$card_id/$amount'));
      List Balance = jsonDecode(balance.body);
      // print(Balance[0][0]);
      return Balance[0][0];
    }

    final cardIdEditingController = TextEditingController();
    final amountEditingController = TextEditingController();
    String card_id = '';
    var amount = -1;

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text('Card Number',style: TextStyle(
              fontFamily: 'montserrat',
              fontWeight: FontWeight.w700,
              fontSize: 24,),),

            Container(
              padding:EdgeInsets.only(top:10,right:0,left:0),
              child:Card(
                shape:RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(20),
                ),
                color:Colors.white,
                child: Container(
                  padding:EdgeInsets.only(left:20),
                  child: TextFormField(
                    controller: cardIdEditingController,
                    decoration:InputDecoration(
                      label: Text('Enter your card ID',style: TextStyle(
                        fontFamily: 'montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 18,),),
                      border:InputBorder.none,
                      fillColor:Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20,),

            Text('Amount',style: TextStyle(
              fontFamily: 'montserrat',
              fontWeight: FontWeight.w700,
              fontSize: 24,),),

            Container(
              padding:EdgeInsets.only(top:10,right:0,left:0),
              child:Card(
                shape:RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(20),
                ),
                color:Colors.white,
                child: Container(
                  padding:EdgeInsets.only(left:20),
                  child: TextFormField(
                    controller: amountEditingController,
                    decoration:InputDecoration(
                      label: Text('Enter recharge amount',style: TextStyle(
                        fontFamily: 'montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 18,),),
                      border:InputBorder.none,
                      fillColor:Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Center(
                    child: RaisedButton(onPressed: ()async {
                      String card_id=cardIdEditingController.text;
                      String amount=amountEditingController.text;
                      String bal = await recharge_card(card_id,amount);
                      Navigator.pushReplacementNamed(context, '/recharge_success',arguments: {
                        'balance' : bal
                      } );
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

    ],
      ),
    );
  }
}

