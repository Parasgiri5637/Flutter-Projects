import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:remixicon/remixicon.dart';

class CofeProduct extends StatelessWidget {
  CofeProduct({super.key});

  final List<Map<String, dynamic>> proArr = [
    {
      'img': 'assets/img/pro1.png',
      'type': 'Cappuccino',
      'wiith': 'Hot Chocolate',
      'price': 4.53,
      'rating': 4.8
    },
    {
      'img': 'assets/img/pro2.png',
      'type': 'Machiato',
      'wiith': 'Cold Chocolate',
      'price': 3.53,
      'rating': 4.7
    },
    {
      'img': 'assets/img/pro3.png',
      'type': 'Latte',
      'wiith': 'Pure Chocolate',
      'price': 5.53,
      'rating': 4.5
    },
    {
      'img': 'assets/img/pro4.png',
      'type': 'Americano',
      'wiith': 'Geto Chocolate',
      'price': 4.53,
      'rating': 4.0
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 540.sp,
      margin:
          EdgeInsets.only(left: screenWidth * 0.06, right: screenWidth * 0.06),
      child: GridView.builder(
        itemCount: proArr.length,
        // ignore: prefer_const_constructors
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          mainAxisSpacing: 30,
          crossAxisSpacing: 12,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              final type = Uri.encodeComponent(proArr[index]['type']);
              final wiith = Uri.encodeComponent(proArr[index]['wiith']);
              final img = Uri.encodeComponent(proArr[index]['img']);
              final price = proArr[index]['price'].toString();
              final rating = proArr[index]['rating'].toString();

              final path = '/details/$type/$wiith/$img/$price/$rating';
              // print('Navigating to: $path');

              GoRouter.of(context).push(path);
            },
            child: Padding(
              padding: EdgeInsets.all(0),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        proArr[index]['img'],
                        width: screenWidth * 0.5,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.sp),
                        child: Row(
                          children: [
                            SizedBox(width: screenWidth * 0.02),
                            Icon(Icons.star, color: Colors.amber, size: 13.sp),
                            SizedBox(width: 5),
                            Text(
                              proArr[index]['rating'].toString(),
                              style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: screenWidth * 0.5,
                      child: Text(
                        proArr[index]['type'],
                        style: TextStyle(
                          fontSize: 17.sp,
                          color: Color(0xFF2F2D2C),
                          letterSpacing: 2,
                          overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: screenWidth * 0.5,
                      child: Text(
                        'with ${proArr[index]['wiith']}',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Color(0xFF9B9B9B),
                          letterSpacing: 2,
                          overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$${proArr[index]['price']}',
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 18.sp,
                            color: Color(0xFF2F4B4E),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFC67C4E),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(
                            Remix.add_line,
                            color: Colors.white,
                            size: 14.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
