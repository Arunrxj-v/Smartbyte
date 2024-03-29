import 'package:arun/widgets/widget_support.dart';
import 'package:flutter/material.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

bool icecream=false,pizza=false,salad=false,burger=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50,left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Text("Hello Foodie",style: AppWidget.boldTextFieldStyle()),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(color: Color(0xFF38B349),borderRadius: BorderRadius.circular(8)),
                  child: Icon(Icons.shopping_cart_outlined,color:Colors.white),
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            Text(
              "Delicious Food",
              
              style: AppWidget.headLineTextFieldStyle()
              ),
              Text(
              "Discover and get Great Food",
              style: AppWidget.lightTextFieldStyle()
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Image.asset("images/ice-cream.png",height: 40,width: 40,fit: BoxFit.cover,),
                    ),
                  ),
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Image.asset("images/pizza.png",height: 40,width: 40,fit: BoxFit.cover,),
                    ),
                  ),
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Image.asset("images/salad.png",height: 40,width: 40,fit: BoxFit.cover,),
                    ),
                  ),
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Image.asset("images/burger.png",height: 40,width: 40,fit: BoxFit.cover,),
                    ),
                  ),
                ],
              ),
          ],
        ),

      ),
    );
  }
}