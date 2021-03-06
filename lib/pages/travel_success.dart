import 'package:flutter/material.dart';

class travel_success extends StatelessWidget {
  const travel_success({Key? key}) : super(key: key);

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

                    SizedBox(height: 90,),

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
                      child: Text('Your travel is\nrecorded',
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
                        child: RaisedButton(onPressed: (){},
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
