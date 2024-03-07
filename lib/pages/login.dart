import 'package:arun/pages/bottomnav.dart';
import 'package:arun/pages/signup.dart';
import 'package:arun/widgets/widget_support.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  String email="",password="";

  final _formkey=GlobalKey<FormState>();

  TextEditingController useremailcontroller=new TextEditingController();
  TextEditingController userpasswordcontroller=new TextEditingController();


userLogin()async{
  try{
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNav()));
  }on FirebaseAuthException catch(e){
    if(e.code=='user-not-found'){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("No User Found for that Email",style: TextStyle(fontSize: 18.0,color: Colors.black),),));
    }
    else if(e.code=='Wrong-password'){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Wrong Password Provided By the User",style: TextStyle(fontSize: 18.0,color: Colors.black),),));
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
                    height: MediaQuery.of(context).size.height/2.5,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20),),
                    child: Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          SizedBox(height: 30,),
                          Text("Login",style: AppWidget.headLineTextFieldStyle(),),
                          SizedBox(height: 30,),
                          TextFormField(
                            controller: useremailcontroller,
                            validator: (value){
                              if(value==null||value.isEmpty){
                                return 'Please Enter Email';
                              }
                              return null;
                            },
                            decoration: InputDecoration(hintText:"Email",hintStyle: AppWidget.semiBoldTextFieldStyle(),prefixIcon: Icon(Icons.email_outlined)),
                          ),
                          SizedBox(height: 30.0,),
                          TextFormField(
                            controller: userpasswordcontroller,
                            validator: (value){
                              if(value==null||value.isEmpty){
                                return 'Please Enter Password';
                              }
                              return null;
                            },
                            obscureText: true,
                            decoration: InputDecoration(hintText:"Password",hintStyle: AppWidget.semiBoldTextFieldStyle(),prefixIcon: Icon(Icons.password_outlined),),
                          ),
                          SizedBox(height: 18,),
                          Container(
                            alignment: Alignment.topRight,
                            child: Text("Forgot Password?",style: AppWidget.semiBoldTextFieldStyle(),)),
                            SizedBox(height: 0,),
                            GestureDetector(
                              onTap: (){
                                if(_formkey.currentState!.validate()){
                                  setState(() {
                                    email=useremailcontroller.text;
                                    password=userpasswordcontroller.text;
                                  });
                                }
                                userLogin();
                              },
                              child: Material(
                                elevation: 5.0,
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  padding: EdgeInsetsDirectional.symmetric(vertical: 8.0),
                                  width: 200,
                                  decoration: BoxDecoration(color: Color(0xFF38B349),borderRadius: BorderRadius.circular(20)),
                                  child:
                                    Center(child: Text("LOGIN",style: TextStyle(color: Colors.white,fontSize: 18.0,fontFamily: 'poppins',fontWeight: FontWeight.bold),))
                                   ,),
                              ),
                            )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 70.0,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                  },
                  child: Text("Dont have an account? sign up",style: AppWidget.semiBoldTextFieldStyle(),))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}