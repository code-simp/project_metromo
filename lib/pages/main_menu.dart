import 'package:flutter/material.dart';

class mainMenu extends StatelessWidget {
  const mainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

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

                Text('Menu',
                    style: TextStyle(
                    fontFamily: 'montserrat',
                    fontWeight: FontWeight.w700,
                    fontSize: 42,
                    color: Color.fromRGBO(25, 6, 25, 1)
                ),
                ),

                SizedBox(height: 20,),

                Row(
                  children: [
                    InkWell(
                      onTap: (){
                          Navigator.pushNamed(context, '/new_card');
                      },
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(

                            children: [

                              Icon(Icons.add,color: Colors.white, size: 50,),

                              Text('Create\nnew card',
                                style: TextStyle(
                                    fontFamily: 'montserrat',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 22,
                                    color: Colors.white
                                ),),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                        ),
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/card1.png'),
                              fit: BoxFit.cover
                          ),

                        )

                      ),
                    ),
                    SizedBox(width: 20,),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, '/recharge');
                      },
                      child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(18),
                            child: Column(

                              children: [

                                Icon(Icons.add,color: Color.fromRGBO(25, 6, 25, 1), size: 50,),

                                SizedBox(height: 20,),

                                Text('Recharge',
                                  style: TextStyle(
                                      fontFamily: 'montserrat',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 22,
                                      color: Color.fromRGBO(25, 6, 25, 1)
                                  ),),
                              ],
                              crossAxisAlignment: CrossAxisAlignment.start,
                            ),
                          ),
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/card2.png'),
                                fit: BoxFit.cover
                            ),

                          )

                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, '/travel');
                      },
                      child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(

                              children: [

                                Icon(Icons.add,color: Colors.white, size: 50,),

                                SizedBox(height: 20,),

                                Text('Travel',
                                  style: TextStyle(
                                      fontFamily: 'montserrat',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 22,
                                      color: Colors.white
                                  ),),
                              ],
                              crossAxisAlignment: CrossAxisAlignment.start,
                            ),
                          ),
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/card3.png'),
                                fit: BoxFit.cover
                            ),

                          )

                      ),
                    ),
                    SizedBox(width: 20,),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, '/history');
                      },
                      child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(18),
                            child: Column(

                              children: [

                                Icon(Icons.add,color: Color.fromRGBO(25, 6, 25, 1), size: 50,),



                                Text('History /\nBalance',
                                  style: TextStyle(
                                      fontFamily: 'montserrat',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 22,
                                      color: Color.fromRGBO(25, 6, 25, 1)
                                  ),),
                              ],
                              crossAxisAlignment: CrossAxisAlignment.start,
                            ),
                          ),
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/card4.png'),
                                fit: BoxFit.cover
                            ),

                          )

                      ),
                    )
                  ],


                ),
                SizedBox(height: 20,),
                Center(
                  child: Text('Choose any of the\nabove to continue',
                    style: TextStyle(
                        fontFamily: 'montserrat',
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Color.fromRGBO(25, 6, 25, 1)
                    ),),
                )

              ],
            ),
          ),
        ),

      ),
    );
  }
}
