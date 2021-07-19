import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context){
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){},icon: Icon(Icons.menu, size: 24.0,color: Color.fromRGBO(228, 58, 130, 1.0),)),
        actions: [
          IconButton(onPressed: (){} ,icon: Icon(Icons.face, color: Color.fromRGBO(228, 58, 130, 1.0),),)
        ],
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Stack(
          
            // overflow: Overflow.visible,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 70),
                child: ListView(
                  // shrinkWrap: true,
                  children: [
                    Stack(
                      overflow: Overflow.visible,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(228, 180, 58, 0.75),
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 160,
                                    child: Text(
                                      'The Best In Food Recipe', 
                                      style: GoogleFonts.roboto(fontSize: 22, color: Colors.white),
                                      textWidthBasis: TextWidthBasis.longestLine,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10, 
                                  ),
                                  Container(
                                    width: 124,
                                    height: 40,
                                    child: ElevatedButton(
                                      onPressed: (){}, 
                                      child: Center(child: Text('Recipe', style: GoogleFonts.roboto(fontSize: 16, color: Colors.white),)),
                                      style: ElevatedButton.styleFrom(
                                        primary: Color.fromRGBO(228, 58, 130, 1.0),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 30,
                          right: 30,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset('images/home_food.jpeg', width: 150, height: 150, fit: BoxFit.fill,),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(25, 10, 15, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Categories', style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold),),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 70,
                            child: ListView(
                              shrinkWrap: true,
                              physics: ClampingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              children: List.generate(10, (index) => CategoriesCardView(title: 'Burger', iconData: Icon(Icons.burst_mode),))
                            )
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(25, 10, 15, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Popular Now', style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold),),
                              InkWell( onTap: () {},child: Text('View All +', style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromRGBO(228, 180, 58, 0.75),),))
                            ],
                          ),
                          SizedBox(height: 20,),
                          Container(
                            height: 300,
                            child: ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              children: List.generate(5, (index) => ListCardView()),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
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
        ),
      ),
    );
  }
}

class CategoriesCardView extends StatelessWidget{

  final String title;
  final Icon iconData;


  const CategoriesCardView({Key? key, required this.title, required this.iconData}) : super(key: key);
  @override
  Widget build(BuildContext context){
    
    return Row(
      children: [
        ElevatedButton.icon(
          onPressed: (){
            
          },
          icon: iconData,
          label: Text('$title', style: GoogleFonts.roboto(fontSize: 16, color: Colors.white),),
          style: ElevatedButton.styleFrom(
            primary: Color.fromRGBO(228, 58, 130, 1.0),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
          ), 
        ),
        SizedBox(width:10),
      ],
    );
  }
}

class ListCardView extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromRGBO(228, 58, 130, 1.0),
            ),
            width: 210,
            height: 200,
            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Beef Burger', style: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text('Cheesy Mozarella', style: GoogleFonts.roboto(fontSize: 20, color: Colors.grey),),
                SizedBox(height: 10,),
                Text('\$ 6.79', style: GoogleFonts.roboto(fontSize: 24, color: Colors.grey),),
              ],
            ),
          ),        
          Positioned(
            bottom: 200,
            right: 50,
            child: Image.asset('images/food.jpg', width: 100, height: 100, fit: BoxFit.fill,),
          )
        ],
      ),
    );
  }
}