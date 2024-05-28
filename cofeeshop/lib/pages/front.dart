// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cofeeshop/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:remixicon/remixicon.dart';

class MyFront extends StatefulWidget {
  const MyFront({super.key});

  @override
  State<MyFront> createState() => _MyFrontState();
}

class _MyFrontState extends State<MyFront> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: screenHeight * 0.63,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img/frontImg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 0.3],
                      colors: [
                        const Color.fromARGB(255, 0, 0, 0),
                        Colors.black
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
              top: screenHeight * 0.56,
              left: screenWidth * 0.05,
              right: screenWidth * 0.05,
              bottom: 0,
              child: Column(
                children: [
                  Column(
                    children: [
                      Text(
                        'Cofee so good,',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 34.sp,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2),
                      ),
                      Text('your tasts buds',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 34.sp,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1)),
                      Text(' will love it.',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 34.sp,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1))
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  Column(
                    children: [
                      Text(
                        'The best grain, the finest roast, the',
                        style: TextStyle(
                            color: Color(0xFFA9A9A9), fontSize: 14.sp),
                      ),
                      Text(
                        'powerful flavor.',
                        style: TextStyle(
                            color: Color(0xFFA9A9A9), fontSize: 14.sp),
                      )
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      GoRouter.of(context).push('/home');
                    },
                    style: ElevatedButton.styleFrom(),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: screenWidth * 0.03),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Remix.google_fill,
                            size: 30.sp,
                            color: Color(0xFFC67C4E),
                          ),
                          SizedBox(
                            width: screenWidth * 0.05,
                          ),
                          Text(
                            'Continue with Google',
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: Color.fromARGB(255, 78, 74, 74)),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
