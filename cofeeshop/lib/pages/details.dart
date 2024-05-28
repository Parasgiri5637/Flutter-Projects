import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remixicon/remixicon.dart';

class Details extends StatefulWidget {
  final String type;
  final String wiith;
  final String img;
  final String price;
  final String rating;

  Details({
    super.key,
    required this.type,
    required this.wiith,
    required this.img,
    required this.price,
    required this.rating,
  });

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  List<Map<String, dynamic>> sizeList = [
    {"size": "S", "isSelected": true},
    {"size": "M", "isSelected": false},
    {"size": "L", "isSelected": false}
  ];

  @override
  void initState() {
    super.initState();
    // Print the received data when the widget is initialized
    print('Received Type: ${widget.type}');
    print('Received With: ${widget.wiith}');
    print('Received Image: ${widget.img}');
    print('Received Price: ${widget.price}');
    print('Received Rating: ${widget.rating}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail',
          style: TextStyle(
            color: Color(0xFF2F2D2C),
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Remix.heart_2_fill,
              size: 24.sp,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20.sp, right: 20.sp),
              height: 226.h,
              width: double.infinity,
              child: Image.asset(
                widget.img,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              margin: EdgeInsets.only(left: 20.sp, right: 20.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.type,
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        'with ${widget.wiith}',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Color(0xFF9B9B9B),
                          letterSpacing: 2,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Row(
                        children: [
                          Icon(
                            Remix.star_fill,
                            color: Color(0xFFFBBE21),
                            size: 20.sp,
                          ),
                          SizedBox(width: 8.w),
                          Text(
                            widget.rating,
                            style: TextStyle(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 8.w),
                          Text(
                            "(230)",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF808080),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 30.sp,
                        height: 30.sp,
                        child: MaterialButton(
                          onPressed: () {},
                          padding: EdgeInsets.all(5),
                          color: Color(0xFFFFF0F0),
                          child: Icon(
                            Remix.add_box_fill,
                            color: Color(0xFFC67C4E),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.sp),
                      Container(
                        width: 30.sp,
                        height: 30.sp,
                        child: MaterialButton(
                          onPressed: () {},
                          padding: EdgeInsets.all(5),
                          color: Color(0xFFFFF0F0),
                          child: Icon(
                            Remix.edit_2_fill,
                            size: 25.sp,
                            color: Color(0xFFC67C4E),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.sp),
            Container(
              margin: EdgeInsets.only(left: 20.sp, right: 20.sp),
              child: Divider(),
            ),
            SizedBox(height: 10.sp),
            Container(
              margin: EdgeInsets.only(left: 20.sp, right: 20.sp),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Description",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.sp),
            Container(
              margin: EdgeInsets.only(left: 20.sp, right: 20.sp),
              child: Text(
                "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF9B9B9B),
                ),
              ),
            ),
            SizedBox(height: 25.sp),
            Container(
              margin: EdgeInsets.only(left: 20.sp, right: 20.sp),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Size",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.sp),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(left: 20.sp, right: 20.sp),
                height: 40.sp,
                child: Center(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: sizeList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            for (var item in sizeList) {
                              item['isSelected'] = false;
                            }
                            sizeList[index]['isSelected'] = true;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 12.w),
                          padding: EdgeInsets.only(left: 40.w, right: 40.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 1.w,
                              color: sizeList[index]['isSelected']
                                  ? Color(0xFFC67C4E)
                                  : Color(0xFFDEDEDE),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              sizeList[index]['size'],
                              style: TextStyle(
                                fontSize: 20.sp,
                                color: sizeList[index]['isSelected']
                                    ? Color(0xFFC67C4E)
                                    : Color(0xFF2F2D2C),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Container(
              margin: EdgeInsets.only(left: 20.sp, right: 20.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${widget.price}",
                    style: TextStyle(
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFC67C4E),
                    ),
                  ),
                  Container(
                    height: 45.sp,
                    width: 190.sp,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFFC67C4E)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      child: Text(
                        "Add to Cart",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.sp),
          ],
        ),
      ),
    );
  }
}
