// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Promo extends StatelessWidget {
  const Promo({Key? key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(
          top: screenHeight * 0.03,
          left: screenWidth * 0.06,
          right: screenWidth * 0.06),
      height: screenHeight * 0.2,
      width: screenWidth,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(
              fit: BoxFit.cover, image: AssetImage("assets/img/promoBG.png"))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
                top: screenHeight * 0.02, left: screenWidth * 0.03),
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(4),
            child: Text(
              "Promo",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.sp,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: screenHeight * 0.04, left: screenWidth * 0.04),
                color: Colors.black,
                height: screenHeight * 0.03,
                width: screenWidth * 0.52,
              ),
              Container(
                margin: EdgeInsets.only(left: screenWidth * 0.05),
                padding: EdgeInsets.only(top: screenHeight * 0.014),
                child: Text(
                  "Buy one get",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: screenHeight * 0.09, left: screenWidth * 0.04),
                color: Colors.black,
                height: screenHeight * 0.03,
                width: screenWidth * 0.38,
              ),
              Container(
                margin: EdgeInsets.only(left: screenWidth * 0.05),
                padding: EdgeInsets.only(top: screenHeight * 0.065),
                child: Text(
                  "one free",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
