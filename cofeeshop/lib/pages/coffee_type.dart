import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CofeType extends StatefulWidget {
  const CofeType({super.key});

  @override
  State<CofeType> createState() => _CofeTypeState();
}

class _CofeTypeState extends State<CofeType> {
  List<Map<String, dynamic>> typeCofe = [
    {'type': 'Cappuccino', 'isSelected': true},
    {'type': 'Machiato', 'isSelected': false},
    {'type': 'Latte', 'isSelected': false},
    {'type': 'Americano', 'isSelected': false}
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin:
          EdgeInsets.only(left: screenWidth * 0.06, top: screenHeight * 0.04),
      height: screenHeight * 0.05,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: typeCofe.length,
        itemBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.only(right: screenWidth * 0.03),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    for (var item in typeCofe) {
                      item['isSelected'] = false;
                    }
                    typeCofe[index]['isSelected'] = true;
                  });
                },
                child: Container(
                    decoration: BoxDecoration(
                        color: typeCofe[index]['isSelected']
                            ? Color(0xFFC67C4E)
                            : Color(0xFFF3F3F3),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Container(
                      padding: EdgeInsets.only(
                          left: screenWidth * 0.04, right: screenWidth * 0.04),
                      child: Text(
                        '${typeCofe[index]['type']}',
                        style: TextStyle(
                            color: typeCofe[index]['isSelected']
                                ? Colors.white
                                : Color(0xFF2F4B4E),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 2),
                      ),
                    ))),
              ));
        },
      ),
    );
  }
}
