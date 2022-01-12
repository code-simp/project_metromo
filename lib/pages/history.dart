import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';


class history extends StatelessWidget {
  const history({Key? key}) : super(key: key);

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

                    Text('History',
                      style: TextStyle(
                          fontFamily: 'montserrat',
                          fontWeight: FontWeight.w700,
                          fontSize: 42,
                          color: Color.fromRGBO(25, 6, 25, 1)
                      ),
                    ),
                    SizedBox(height: 40,),
                    history_form(),
                  ]
              ),
            )
        ));
  }
}

class history_form extends StatelessWidget {
  history_form({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Future<List> transaction() async {
      Response data = await get(Uri.parse('http://10.0.2.2:5000/history_all'));
      List TransTable = jsonDecode(data.body);
      // print(Balance[0][0]);
      return TransTable;
    }

    Future<List> card_history(card_id) async {
      Response data = await get(Uri.parse('http://10.0.2.2:5000/history/$card_id'));
      List TransTable = jsonDecode(data.body);
      // print(Balance[0][0]);
      return TransTable;
    }

    Future<List> get_months() async {
      Response data = await get(Uri.parse('http://10.0.2.2:5000/report_month'));
      List TransTable = jsonDecode(data.body);
      // print(Balance[0][0]);
      return TransTable;
    }

    final cardIdEditingController = TextEditingController();

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

          SizedBox(height: 10,),


          SizedBox(height: 0,),
          Row(
            children: [
              Center(
                  child: RaisedButton(onPressed: () async{
                    String card_id = cardIdEditingController.text;
                    List data = await card_history(card_id);
                    Navigator.pushReplacementNamed(context, '/history_cards',arguments: data);

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
              ),


            ],
          ),
          SizedBox(height: 10,),
          Center(
            child: Text('or ',
              style: TextStyle(
                fontFamily: 'montserrat',
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: Color.fromRGBO(25, 6, 25, 1),
              ),

            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: TextButton(onPressed: () async{
              List data = await transaction();
              Navigator.pushReplacementNamed(context, '/history_cards',arguments: data);
            }, child: Text('View all transactions',
              style: TextStyle(
                fontFamily: 'montserrat',
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: Color.fromRGBO(25, 6, 25, 1),
                  decoration: TextDecoration.underline
              ),

            )
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: Text('or ',
              style: TextStyle(
                fontFamily: 'montserrat',
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: Color.fromRGBO(25, 6, 25, 1),
              ),

            ),
          ),

          SizedBox(height: 20,),
          Center(
            child: TextButton(onPressed: () async{
              List data = await get_months();
              Navigator.pushReplacementNamed(context, '/report_month',arguments: data);
            }, child: Text('View monthly report',
              style: TextStyle(
                  fontFamily: 'montserrat',
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Color.fromRGBO(25, 6, 25, 1),
                  decoration: TextDecoration.underline
              ),

            )
            ),
          )

        ],
      ),
    );
  }
}

