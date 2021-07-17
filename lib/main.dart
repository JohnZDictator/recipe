import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_flutter/feature/pages/home/view/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Recipe App',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.menu, color: Color.fromRGBO(228, 58, 130, 1.0),), onPressed: () { },),
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.face, color: Color.fromRGBO(228, 58, 130, 1.0),),
            ),
          ],
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        body: HomePage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
