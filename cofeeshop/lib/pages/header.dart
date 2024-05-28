// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.23,
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: screenHeight * 0.08,
                    left: screenWidth * 0.080,
                    right: screenWidth * 0.080,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Location",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Row(
                            children: [
                              Text(
                                "Bilzen,Tanjungbalai ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              Icon(
                                Remix.arrow_down_s_line,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/img/userImg.png'),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// Container(
//       margin:
//           EdgeInsets.only(left: screenWidth * 0.06, right: screenWidth * 0.06),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Location',
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 12.sp,
//                     fontWeight: FontWeight.w400,
//                     letterSpacing: 1),
//               ),
//               Row(
//                 children: [
//                   Text(
//                     "Bilzen, Tanjungbalai",
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 14.sp,
//                         fontWeight: FontWeight.w600,
//                         letterSpacing: 2),
//                   ),
//                   Icon(
//                     Remix.arrow_down_s_line,
//                     size: 14.sp,
//                     color: Colors.white,
//                   )
//                 ],
//               ),
//             ],
//           ),
//           Image.asset(
//             "assets/img/userImg.png",
//           )
//         ],
//       ),
//     );
//   }
// }
