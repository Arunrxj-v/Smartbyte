import 'package:arun/home_screen.dart';
import 'package:arun/pages/order.dart';
import 'package:arun/pages/profile.dart';
import 'package:arun/pages/wallet.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex=0;

  late List<Widget> pages;
  late Widget currentPage;
  late HomeScreen homepage;
  late Profile profile;
  late Order order;
  late Wallet wallet;
  @override
  void initState() {
   homepage=HomeScreen();
   profile=Profile();
   order=Order();
   wallet=Wallet();
   pages=[homepage,profile,order,wallet];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white,
        color:Color(0xFF38B349),
        animationDuration: Duration(milliseconds: 300),
        onTap: (int index){
          setState(() {
            currentTabIndex=index;
          });
        },
        items:[
          Icon(
            Icons.home_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.wallet_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.person_outline,
            color: Colors.white,
          ),
        ] ),
        body: pages[currentTabIndex],
    );
  }
}