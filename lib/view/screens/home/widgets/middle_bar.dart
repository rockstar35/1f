import 'package:flutter_restaurant/view/screens/home/widgets/bottom_bar_column.dart';
import 'package:flutter_restaurant/view/screens/home/widgets/info_text.dart';
import 'package:flutter_restaurant/view/screens/home/widgets/responsive.dart';
import 'package:flutter/material.dart';

class MiddleBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      color: Color.fromARGB(255, 10, 56, 71),
      child:Container(
           margin: const EdgeInsets.only(left:60,right: 60),
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text(
                  'We use cookies and other technologies to improve and personalise your user experience, '
                      'analytics for optimization \n and advertisements in partnership with third parties. '
                      'We use our own cookies and cookies from third parties. \n By clicking OK you accept the use of all cookies. We always set necessary cookies.Select',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                Container (
                    child:Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Manage your preferences',
                      style: TextStyle(
                        color: Colors.deepOrangeAccent,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'to adjust your preference and to find more information.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    OutlinedButton(
                      onPressed: () {},

                      child: Text('     OK     ',style: TextStyle(
                        color: Color.fromARGB(255, 10, 56, 71),
                        fontSize: 14,
                      ),),
                      style: OutlinedButton.styleFrom(
                        fixedSize: Size(200, 20),
                        backgroundColor: Colors.white,
                        side: BorderSide(width: 1.0, color: Color.fromARGB(255, 10, 56, 71))
                      ),
                    ),
                    SizedBox(width: 50),
                    OutlinedButton(
                      onPressed: () {},

                      child: Text('Essential',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                      ),),
                      style: OutlinedButton.styleFrom(
                        fixedSize: Size(200, 20),
                        //backgroundColor: Colors.white,
                        side: BorderSide(width: 1.0, color:  Colors.white),
                      ),
                    ),
                  ],
                )
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
