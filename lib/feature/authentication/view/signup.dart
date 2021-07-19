import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatefulWidget{
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage>{
  
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
                validator: (input){
                  if(input!.isEmpty){
                    return 'Please Enter Name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8.0,),
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
                  onPressed: signup, 
                  child: Text(
                    'Create Account', 
                    style: GoogleFonts.roboto(fontSize: 18, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green[600]
                  ),
                ),
              ),
              const SizedBox(height: 16.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already Have an Account? ', style: GoogleFonts.roboto(fontSize: 18),),
                  GestureDetector(
                    onTap: (){
                      Get.toNamed('/signin');
                    },
                    child: Text('Sign in', style: GoogleFonts.roboto(fontSize: 18, color: Colors.blue),),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> signup() async{
    final formState = _formKey.currentState;
    if(formState!.validate()){
      formState.save();
      try{
        UserCredential user = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text, password: _passwordController.text);

        Get.toNamed('/signin');
      }on FirebaseException catch(e){
        if (e.code == 'weak-password') {
          print('The password provided is too weak');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email');
        }
      }catch(e){
        print(e);
      }
    }
  }

  @override
  void dispose(){
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();

  }
}