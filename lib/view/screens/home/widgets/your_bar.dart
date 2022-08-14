import 'package:flutter_restaurant/view/screens/home/widgets/bottom_bar_column.dart';
import 'package:flutter_restaurant/view/screens/home/widgets/info_text.dart';
import 'package:flutter_restaurant/view/screens/home/widgets/responsive.dart';
import 'package:flutter/material.dart';

class YourBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.all(30),
        color: Colors.deepOrange,
        child: ResponsiveWidget.isSmallScreen(context)
            ? Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Manage your preferences',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'to adjust your preference and to find more information.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),

                      SizedBox(
                        height: screenSize.height * 0.35,
                        width: screenSize.width*0.2,
                        child: Image.asset(
                          'assets/images/'
                              'apps.png',
                          //fit: BoxFit.fitHeight,
                        ),
                      ),
                      ],
                    ),
                ]
            )
        )
    );
  }
}
