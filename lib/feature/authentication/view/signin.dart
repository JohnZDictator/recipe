import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninPage extends StatefulWidget{
  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage>{
  
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                validator: (input){
                  if(input!.isEmpty){
                    return 'Please Enter Email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8.0,),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                validator: (input){
                  if(input!.isEmpty){
                    return 'Please Enter Password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 32.0,),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: signin, 
                  child: Text(
                    'Log in', 
                    style: GoogleFonts.roboto(fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey
                  ),
                ),
              ),
              const SizedBox(height: 16.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t Have an Account? ', style: GoogleFonts.roboto(fontSize: 18),),
                  GestureDetector(
                    onTap: (){
                      Get.toNamed('/signup');
                    },
                    child: Text('Sign up', style: GoogleFonts.roboto(fontSize: 18, color: Colors.blue),),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> signin() async{
    final formState = _formKey.currentState;
    if(formState!.validate()){
      formState.save();
      try{
        UserCredential user = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text, password: _passwordController.text);
          
        Get.toNamed('/home');
      }on FirebaseException catch(e){
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
        }
      }catch(e){
        print(e);
      }
    }
  }

  @override
  void dispose(){
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }
}