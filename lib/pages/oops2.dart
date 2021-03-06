import 'package:flutter/material.dart';

class oops2 extends StatelessWidget {
  const oops2({Key? key}) : super(key: key);

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

                    Center(child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.redAccent,size: 40,)),
                    Center(
                      child: Text('Oops..',
                        style: TextStyle(
                            fontFamily: 'montserrat',
                            fontWeight: FontWeight.w700,
                            fontSize: 42,
                            color: Colors.redAccent
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Center(
                      child: Text('Looks like you have\nentered an invalid\nsource or destination',
                        style: TextStyle(
                            fontFamily: 'montserrat',
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            color: Color.fromRGBO(25, 6, 25, 1)
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    SizedBox(height: 30,),

                    Center(
                        child: RaisedButton(onPressed: (){},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                              side: BorderSide(color: Colors.redAccent,width: 7)
                          ),

                          color: Color.fromRGBO(255, 228, 211, 1),

                          child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                              child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.redAccent,size: 40,)
                          ),
                        )
                    )

                  ]
              ),
            )
        ));
  }
}
