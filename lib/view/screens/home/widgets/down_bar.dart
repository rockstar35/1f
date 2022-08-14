import 'package:flutter_restaurant/view/screens/home/widgets/bottom_bar_column.dart';
import 'package:flutter_restaurant/view/screens/home/widgets/info_text.dart';
import 'package:flutter_restaurant/view/screens/home/widgets/responsive.dart';
import 'package:flutter/material.dart';

class DownBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.all(30),
        color: Color.fromARGB(255, 248, 102, 0),
        child: ResponsiveWidget.isSmallScreen(context)
            ? Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // BottomBarColumn(
                //   heading: 'ABOUT',
                //   s1: 'Contact Us',
                //   s2: 'About Us',
                //   s3: 'Careers',
                // ),
                // BottomBarColumn(
                //   heading: 'HELP',
                //   s1: 'Payment',
                //   s2: 'Cancellation',
                //   s3: 'FAQ',
                // ),
                // BottomBarColumn(
                //   heading: 'SOCIAL',
                //   s1: 'Twitter',
                //   s2: 'Facebook',
                //   s3: 'YouTube',
                // ),
              ],
            ),
            Container(
              color: Colors.blueGrey,
              width: double.maxFinite,
              height: 1,
            ),
            SizedBox(height: 20),
            InfoText(
              type: 'Email',
              text: 'explore@gmail.com',
            ),
            SizedBox(height: 5),
            InfoText(
              type: 'Address',
              text: '128, Trymore Road, Delft, MN - 56124',
            ),
            SizedBox(height: 20),
            Container(
              color: Colors.blueGrey,
              width: double.maxFinite,
              height: 1,
            ),
            SizedBox(height: 20),
            Text(
              'Copyright © 2020 | EXPLORE',
              style: TextStyle(
                color: Colors.blueGrey[300],
                fontSize: 14,
              ),
            ),
          ],
        )
            :Container(
            margin: const EdgeInsets.only(left:60,right: 60),

            //),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Row (
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:[
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Download the app',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                ),

                                SizedBox(height: 10),
                                Text(
                                  'Click, sit back and enjoy',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      // Text(
                      //   'Manage your preferences',
                      //   style: TextStyle(
                      //     color: Colors.white,
                      //     fontSize: 20,
                      //   ),
                      // ),
                      SizedBox(
                        height: screenSize.height * 0.35,
                        width: screenSize.width*0.2,
                        child: Image.asset(
                          'assets/images/'
                              'apps122.png',
                          //fit: BoxFit.fitHeight,
                        ),
                      ),
                      ],
                    ),
                ]
            )
        )
      // : Column(
      //     children: [
      //       Row(
      //         mainAxisSize: MainAxisSize.max,
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //           BottomBarColumn(
      //             heading: 'ABOUT',
      //             s1: 'Contact Us',
      //             s2: 'About Us',
      //             s3: 'Careers',
      //           ),
      //           BottomBarColumn(
      //             heading: 'HELP',
      //             s1: 'Payment',
      //             s2: 'Cancellation',
      //             s3: 'FAQ',
      //           ),
      //           BottomBarColumn(
      //             heading: 'SOCIAL',
      //             s1: 'Twitter',
      //             s2: 'Facebook',
      //             s3: 'YouTube',
      //           ),
      //           Container(
      //             color: Colors.blueGrey,
      //             width: 2,
      //             height: 150,
      //           ),
      //           Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               InfoText(
      //                 type: 'Email',
      //                 text: 'explore@gmail.com',
      //               ),
      //               SizedBox(height: 5),
      //               InfoText(
      //                 type: 'Address',
      //                 text: '128, Trymore Road, Delft, MN - 56124',
      //               )
      //             ],
      //           ),
      //         ],
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           color: Colors.blueGrey,
      //           width: double.maxFinite,
      //           height: 1,
      //         ),
      //       ),
      //       SizedBox(height: 20),
      //       Text(
      //         'Copyright © 2020 | EXPLORE',
      //         style: TextStyle(
      //           color: Colors.blueGrey[300],
      //           fontSize: 14,
      //         ),
      //       ),
      //     ],
      //   ),
    );
  }
}
