// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remixicon/remixicon.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin:
          EdgeInsets.only(left: screenWidth * 0.06, right: screenWidth * 0.06),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xFF313131)),
      child: Padding(
        padding: EdgeInsets.only(top: 1.sp, bottom: 1.sp, right: 5.sp),
        child: TextField(
          decoration: InputDecoration(
              hintText: "Search Cofee",
              hintStyle: TextStyle(
                  fontSize: 14.sp, letterSpacing: 1, color: Color(0xFF989898)),
              prefixIcon: Icon(
                Remix.search_2_line,
                color: Colors.white,
                size: 20.sp,
              ),
              suffixIcon: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFC67C4E),
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Remix.equalizer_2_line,
                  color: Colors.white,
                  size: 20.sp,
                ),
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none)),
        ),
      ),
    );
  }
}
