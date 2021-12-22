import 'package:flutter/material.dart';

class travel extends StatelessWidget {
  const travel({Key? key}) : super(key: key);

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

                    Text('Travel',
                      style: TextStyle(
                          fontFamily: 'montserrat',
                          fontWeight: FontWeight.w700,
                          fontSize: 42,
                          color: Color.fromRGBO(25, 6, 25, 1)
                      ),
                    ),
                    SizedBox(height: 20,),

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
                            decoration:InputDecoration(
                              label: Text('Enter you card number',style: TextStyle(
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
                    Text('Source',style: TextStyle(
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
                            decoration:InputDecoration(
                              label: Text('Enter the source',style: TextStyle(
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
                    Text('Destination',style: TextStyle(
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
                            decoration:InputDecoration(
                              label: Text('Enter the destination',style: TextStyle(
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
                            child: RaisedButton(onPressed: (){},
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
                              child: RaisedButton(onPressed: (){},
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
