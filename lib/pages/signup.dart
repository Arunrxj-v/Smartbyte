import 'package:arun/pages/bottomnav.dart';
import 'package:arun/pages/login.dart';
import 'package:arun/widgets/widget_support.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  String email="",password="",name="";

  TextEditingController namecontroller= new TextEditingController();
  TextEditingController passwordcontroller= new TextEditingController();
  TextEditingController mailcontroller= new TextEditingController();

  final _formkey= GlobalKey<FormState>();

  registration()async{
    if(password!=null){
      try{
        UserCredential userCredential=await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
        ScaffoldMessenger.of(context).showSnackBar((SnackBar(
          backgroundColor: Colors.redAccent,
          content:Text("Registered Successfully",
          style: TextStyle(fontSize: 20.0),))));
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNav()));
      }on FirebaseException catch(e){
        if(e.code=='Weak-password'){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.orangeAccent,
            content:Text("Password provided is too weak",style: TextStyle(fontSize: 18.0),)));
        }
        else if(e.code=="email already in use"){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.orangeAccent,
            content:Text("Account Already exists",style: TextStyle(fontSize: 18.0),)));
        }
      }
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/2.5,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [
                Color.fromARGB(255, 32, 247, 60),
                Color(0xFF38B349),
              ])
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/3),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),),
            child: Text(""),
          ),
          Container(
            margin: EdgeInsets.only(top: 60.0,left: 20,right: 20),
            child: Column(
              children: [
                Center(child: Image.asset('assets/images/delivery.png',width: MediaQuery.of(context).size.width/2,fit: BoxFit.cover,)),
                SizedBox(height: 100.0,),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.only(left: 20.0,right: 20.0),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/2.1,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20),),
                    child: Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          SizedBox(height: 30,),
                          Text("Sign up",style: AppWidget.headLineTextFieldStyle(),),
                          SizedBox(height: 30,),
                          TextFormField(
                            controller: namecontroller,
                            validator: (value){
                              if(value==null|| value.isEmpty){
                                return 'Please Enter Name';
                              }
                              return null;
                            },
                            decoration: InputDecoration(hintText:"Name",hintStyle: AppWidget.semiBoldTextFieldStyle(),prefixIcon: Icon(Icons.person_outlined)),
                          ),
                                                  SizedBox(height: 30,),
                          TextFormField(
                            controller: mailcontroller,
                            validator:(value){
                              if(value==null|| value.isEmpty){
                                return 'Please Enter Email';
                              }
                              return null;
                            } ,
                            decoration: InputDecoration(hintText:"Email",hintStyle: AppWidget.semiBoldTextFieldStyle(),prefixIcon: Icon(Icons.email_outlined)),
                          ),
                      
                          SizedBox(height: 30.0,),
                          TextFormField(
                            controller: passwordcontroller ,
                            validator: (value){
                              if(value==null||value.isEmpty){
                                return 'Please Enter Password';
                              }
                              return null;
                            },
                            obscureText: true,
                            decoration: InputDecoration(hintText:"Password",hintStyle: AppWidget.semiBoldTextFieldStyle(),prefixIcon: Icon(Icons.password_outlined),),
                          ),
                            SizedBox(height: 9.0,),
                            GestureDetector(
                              onTap:()async{
                                if(_formkey.currentState!.validate()){
                                  setState(() {
                                    email=mailcontroller.text;
                                    name=namecontroller.text;
                                    password=passwordcontroller.text;
                                  });
                                }
                                registration();
                              },
                              child: Material(
                                elevation: 5.0,
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  padding: EdgeInsetsDirectional.symmetric(vertical: 8.0),
                                  width: 200,
                                  decoration: BoxDecoration(color: Color(0xFF38B349),borderRadius: BorderRadius.circular(20)),
                                  child:
                                    Center(child: Text("Sign up",style: TextStyle(color: Colors.white,fontSize: 18.0,fontFamily: 'poppins',fontWeight: FontWeight.bold),))
                                   ,),
                              ),
                            )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40.0,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LogIn()));
                  },
                  child: Text("Already have an account? Login",style: AppWidget.semiBoldTextFieldStyle(),))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}