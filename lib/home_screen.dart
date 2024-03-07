import 'package:flutter/material.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor:const Color(0xFF38B349),
      ),
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      
      
      backgroundColor:const Color(0xFF38B349),
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
         SizedBox(
          width: 400,
           child: TextField(
              decoration: InputDecoration(filled: true,
                fillColor: Colors.white,
                hintText: "Search",
                prefixIcon:const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                )
              ),
            ),
         ),
         const SizedBox(
            height: 230,
          ),
          Container(
           width: 430,
          height: 558,
          decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          ),
        ),
       child: Column(
        
        
        children: [
         const SizedBox(
            height: 24,
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 117,
                height: 145,
                decoration: ShapeDecoration(
              image:const DecorationImage(
              image: AssetImage('assets/images/Rectangle 6.png'),
              fit: BoxFit.fill,
              ),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                ),
              ),
          ),
          Container(
            width: 117,
                height: 145,
                decoration: ShapeDecoration(
              image:const DecorationImage(
              image: AssetImage('assets/images/Rectangle 8.png'),
              fit: BoxFit.fill,
              ),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                ),
              ),
          ),
          Container(
            width: 117,
                height: 145,
                decoration: ShapeDecoration(
              image:const DecorationImage(
              image: AssetImage('assets/images/Rectangle 6.png'),
              
              fit: BoxFit.fill,
              ),
              
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                ),
              ),
          ),
          ],
          
          )
        ],
       ),
          ),
          
        ],
        
      ),
      
      
    );
  }
}