import 'package:flutter/material.dart';

class ListViewSample extends StatelessWidget {
  const ListViewSample({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Container(
    width: 430,
    height: 479,
    decoration: const ShapeDecoration(
        color: Color(0xFF38B349),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(69),
                bottomRight: Radius.circular(69),
            ),
        ),
        image: DecorationImage(image: AssetImage('assets/images/Food_delivery_man_riding_motorcycles_cartoon_art_illustration-ai.png'),),
    ),
),
  const  Text(
    'Fast Delivery',
    style: TextStyle(
        color: Color(0xFF38B349),
        fontSize: 36,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w700,
        height: 3,
    ),
),
   const Text(
    'Your food will be delivered fresh and hot\nso you can enjoy it at it’s best ',
    textAlign: TextAlign.center,
    style: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontFamily: 'Gentium Book Basic',
        fontWeight: FontWeight.w400,
        height: 0,
    ),
),
const SizedBox(height: 180),

    ElevatedButton(
      onPressed: (){}, 
      child: Text('Login'),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF38B349),
        minimumSize: const Size(350, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18)
        )
      )
      ),
      
      
        ],
      ),
    );
  }
}