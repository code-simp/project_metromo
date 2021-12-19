import 'package:flutter/material.dart';

class onboard extends StatelessWidget {
  const onboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/onboard_bg.png'),
                  fit: BoxFit.cover
              ),

            ),
            width: double.infinity,
            height: double.infinity,

            child: Padding(
              padding: const EdgeInsets.fromLTRB(40,410,30,10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                    // Image.asset('assets/logo.png'),
                  Text('The\nMetro Demo',
                    style: TextStyle(
                      fontFamily: 'montserrat',
                      fontWeight: FontWeight.w700,
                      fontSize: 42,
                      color: Colors.white
                    ),
                  ),
                  SizedBox(height: 20,),

                  Text('Know how your\nmetro card works',
                    style: TextStyle(
                        fontFamily: 'montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: Colors.white
                    ),
                  ),

                  SizedBox(height: 10,),

                  Flexible(
                    child: Center(
                    child: Flexible(
                      child: RaisedButton(onPressed: (){},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        color: Color.fromRGBO(131, 3, 50, 1),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text('Demo it', style: TextStyle(
                              fontFamily: 'montserrat',
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              color: Colors.white
                          ),),
                        ),
                      ),
                    )
                    ),
                  )


                ],
              ),
            ),
          ),
        ),
    );
  }
}
