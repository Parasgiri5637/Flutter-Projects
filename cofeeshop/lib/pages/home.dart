// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cofeeshop/pages/coffee_type.dart';
import 'package:cofeeshop/pages/header.dart';
import 'package:cofeeshop/pages/products.dart';
import 'package:cofeeshop/pages/promo.dart';
import 'package:cofeeshop/pages/searchbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remixicon/remixicon.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    Color darkColor = Color(0xFF131313);
    Color lighterColor = Color(0xFF313131);

    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(screenHeight * 0.01),
              child: Container(
                  padding: EdgeInsets.only(top: 1.sp, bottom: 3.sp),
                  child: Searchbar()),
            ),
            pinned: true,
            expandedHeight: screenHeight * 0.22,
            flexibleSpace: FlexibleSpaceBar(
                expandedTitleScale: 1.0,
                background: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      stops: [0.5, 1.0],
                      colors: [darkColor, lighterColor],
                    ),
                  ),
                  child: Header(),
                )),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [Promo(), CofeType(), CofeProduct()],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xFFC67C4E),
              size: 24.sp,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Remix.heart_2_fill,
              size: 24.sp,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Remix.shopping_bag_line,
              size: 24.sp,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
