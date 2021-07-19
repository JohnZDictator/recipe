import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:recipe_flutter/feature/pages/home/view/home.dart';
import 'feature/authentication/view/signin.dart';

import 'feature/authentication/view/signup.dart';
Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      title: 'Recipe App',
      home: HomePage(),
      getPages: [
        GetPage(name: '/home', page: () => HomePage()),
        GetPage(name: '/signup', page: () => SignupPage()),
        GetPage(name: '/signin', page: () => SigninPage()),
        // GetPage(name: '/details', page: () => Page()),
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}
