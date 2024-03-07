import 'package:flutter/material.dart';

class AppWidget{

  static TextStyle boldTextFieldStyle(){
    return const TextStyle(
      color: Color(0xFF38B349),
      fontSize:25,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins' ,
    );
  }

  static TextStyle headLineTextFieldStyle(){
    return const TextStyle(
      color: Color(0xFF38B349),
      fontSize:29,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins' ,
    );
  }

  static TextStyle lightTextFieldStyle(){
    return const TextStyle(
      color: Color.fromARGB(255, 141, 180, 146),
      fontSize:16,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins' ,
    );
  }
  static TextStyle lightTextBlackFieldStyle(){
    return const TextStyle(
      color: Colors.black,
      fontSize:16,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins' ,
    );
  }
  static TextStyle semiBoldTextFieldStyle(){
    return const TextStyle(
      color: Colors.black,
      fontSize:19,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins' ,
    );
  }
}