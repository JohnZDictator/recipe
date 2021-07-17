import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context){
    final screenSize = MediaQuery.of(context).size;
    return Stack(
        // overflow: Overflow.visible,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 70),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                ),
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.home, color: Color.fromRGBO(228, 58, 130, 1.0), size: 32,),
                            ),
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(228, 58, 130, 1.0)
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: (){},
                              // icon: Icon(Icons.favorite_outline, color: Color.fromRGBO(196, 196, 196, 1.0), size: 32,),
                              icon: Icon(Icons.favorite_outline, color: Colors.white, size: 32,),
                            ),
                            Container(
                              width: 10,
                              height: 10,
                              // decoration: BoxDecoration(
                              //   shape: BoxShape.circle,
                              //   color: Color.fromRGBO(228, 58, 130, 1.0),
                              // ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Stack(
                          overflow: Overflow.visible,
                          children: [
                            Positioned(
                              right: -5,
                              bottom: 35,
                              child: Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color.fromRGBO(228, 58, 130, 1.0),
                                ),
                                child: Center(
                                  child: FittedBox(
                                    child: Text('100', style: TextStyle(color: Colors.white),),
                                  ),
                                )
                              )
                            ),
                            Column(
                              children: [
                                IconButton(
                                  onPressed: (){},
                                  // icon: Icon(Icons.notifications, color: Color.fromRGBO(196, 196, 196, 1.0), size: 32,),
                                  icon: Icon(Icons.notifications, color: Colors.white, size: 32,),
                                ),
                                Container(
                                  width: 10,
                                  height: 10,
                                //   decoration: BoxDecoration(
                                //     shape: BoxShape.circle,
                                //     color: Color.fromRGBO(228, 58, 130, 1.0)
                                //   ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Stack(
                          overflow: Overflow.visible,
                          children: [
                            Positioned(
                              right: -5,
                              bottom: 35,
                              child: Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color.fromRGBO(228, 58, 130, 1.0),
                                ),
                                child: Center(
                                  child: FittedBox(
                                    child: Text('101', style: TextStyle(color: Colors.white),),
                                  ),
                                )
                              )
                            ),
                            Column(
                              children: [
                                IconButton(
                                  onPressed: (){},
                                  // icon: Icon(Icons.shopping_cart, color: Color.fromRGBO(196, 196, 196, 1.0), size: 32,),
                                  icon: Icon(Icons.shopping_cart, color: Colors.white, size: 32,),
                                ),
                                Container(
                                  width: 10,
                                  height: 10,
                                  // decoration: BoxDecoration(
                                  //   shape: BoxShape.circle,
                                  //   color: Color.fromRGBO(228, 58, 130, 1.0)
                                  // ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Positioned(
                      right: screenSize.width / 2.6,
                      bottom: 5,
                      child: Container(
                        width: 70,
                        height: 70,
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: FloatingActionButton(
                          onPressed: (){},
                          child: Icon(Icons.search_outlined, size: 30,),
                          backgroundColor: Color.fromRGBO(228, 58, 130, 1.0),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ]
          ),
        ],
    );
  }
}