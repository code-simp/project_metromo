import 'package:flutter/material.dart';

class new_card_success extends StatelessWidget {
  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map;


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
                    Center(child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.green,size: 40,)),
                    Center(
                      child: Text('Success',
                        style: TextStyle(
                            fontFamily: 'montserrat',
                            fontWeight: FontWeight.w700,
                            fontSize: 42,
                            color: Colors.green
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Center(
                      child: Text('Here’s your new\ncard number',
                        style: TextStyle(
                            fontFamily: 'montserrat',
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            color: Color.fromRGBO(25, 6, 25, 1)
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    SizedBox(height: 20,),

                    Center(
                      child: Card(
                        elevation: 7,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SelectableText('${data['cardNo']}',style: TextStyle(
                              fontFamily: 'montserrat',
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              color: Color.fromRGBO(25, 6, 25, 1)
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Center(
                        child: RaisedButton(onPressed: (){
                          Navigator.pop(context);
                        },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                              side: BorderSide(color: Colors.green,width: 7)
                          ),

                          color: Color.fromRGBO(255, 228, 211, 1),

                          child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                              child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.green,size: 40,)
                          ),
                        )
                    )
                  ]
              ),
            )
        ));
  }
}
