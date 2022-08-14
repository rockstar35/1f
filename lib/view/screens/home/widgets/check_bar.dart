import 'package:flutter_restaurant/view/screens/home/widgets/bottom_bar_column.dart';
import 'package:flutter_restaurant/view/screens/home/widgets/info_text.dart';
import 'package:flutter_restaurant/view/screens/home/widgets/responsive.dart';
import 'package:flutter/material.dart';

class CheckBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.all(30),
        color: Colors.white,
        child
            :Container(
            margin: const EdgeInsets.only(left:60,right: 60),
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              ' Want more? \n Check out exciting news about food and\n lifestyle on our blog',
                              style: TextStyle(
                                color: Color.fromARGB(255, 10, 56, 71),
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              //width: screenSize.width *0.2,
                              child: Text(
                                '> Visit the blog\n ',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 22,
                                ),
                              ),
                            )
                          ],
                        ),
                      SizedBox(
                        height: screenSize.height * 0.5,
                        width: screenSize.width*0.35,
                        child: Image.asset(
                          'assets/images/'
                              'check.png',
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
