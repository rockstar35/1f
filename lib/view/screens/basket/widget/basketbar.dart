// import 'package:feather_icons/feather_icons.dart';
import 'package:ant_icons/ant_icons.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:fleva_icons/fleva_icons.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class BasketBar extends StatelessWidget {
  const BasketBar({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var extraScreenGrid = currentWidth > 1536;
    var largeScreenGrid = currentWidth > 1366;
    var smallScreenGrid = currentWidth > 1201;
    var extraSmallScreenGrid = currentWidth > 1025;
    var tabScreenGrid = currentWidth > 769;
    var mobileScreenGrid = currentWidth > 481;

    return Container(
      width: smallScreenGrid
          ? 300.0
          : extraSmallScreenGrid
              ? 270.0
              : 0.0,
      color: Colors.white,
      child: ListView(
        children: [
          SizedBox(
            height: 20
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 05.0, top: 08.0),
            child: Text(
              'Basket',
              style: TextStyle(fontSize: 20.0, color: Color.fromARGB(255, 24, 68, 82)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Color.fromARGB(255,230, 230, 230),
              width: double.maxFinite,
              height: 1,
            ),
          ),
          Container(
            //height: 100.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 15.0, top: 40.0),
            child: Column(
              children: [
                Container(
                    child: SizedBox(
                      height: 40,
                      width: 40,
                      child: Image.asset(
                        'assets/icon/Vector.png',
                        fit: BoxFit.fitHeight,
                      ),
                    )
                ),
                Container(
                  padding: EdgeInsets.only(left: 05.0, top: 15.0),
                  child: Text(
                    'Fill your basket',
                    style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 05.0, top: 15.0),
                  child: Text(
                    'Your basket is empty',
                    style: TextStyle(fontSize: 18.0, color: Color.fromARGB(255, 185, 185, 185)),
                  ),
                ),
                SizedBox(height: 60),
                OutlinedButton(
                  onPressed: () {},

                  child: Text('     Add items     ',style: TextStyle(
                    color: Color.fromARGB(255, 23, 99, 203),
                    fontSize: 18,
                  ),),
                  style: OutlinedButton.styleFrom(
                      fixedSize: Size(200, 20),
                      backgroundColor: Colors.white,

                      side: BorderSide(width: 0.0, color: Color.fromARGB(255, 185, 185, 185))
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),

          // Container(
          //   child: TextButton(
          //     style: ElevatedButton.styleFrom(
          //       shape: new RoundedRectangleBorder(
          //         borderRadius: new BorderRadius.circular(0.0),
          //       ),
          //       padding: EdgeInsets.all(18.0),
          //     ),
          //     onPressed: () {},
          //     child: Row(
          //       children: [
          //         Padding(
          //           padding: EdgeInsets.only(
          //               left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
          //           child: Icon(
          //             AntIcons.info_circle_outline,
          //             size: 23.0,
          //             color: Colors.black,
          //           ),
          //         ),
          //         Padding(
          //           padding: EdgeInsets.only(
          //               left: 10.0, top: 01.0, right: 10.0, bottom: 0.0),
          //           child: Text(
          //             'About',
          //             style: TextStyle(
          //               color: Colors.black,
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),

        ],
      ),
    );
  }
}
