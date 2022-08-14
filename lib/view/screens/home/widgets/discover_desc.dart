import 'package:flutter_restaurant/view/screens/home/widgets/bottom_bar_column.dart';
import 'package:flutter_restaurant/view/screens/home/widgets/info_text.dart';
import 'package:flutter_restaurant/view/screens/home/widgets/responsive.dart';
import 'package:flutter/material.dart';

class DiscoverDesc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(30),
      color: Colors.white60,
      child:Container(
           margin: const EdgeInsets.only(left:30,right: 30),

      //),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,

              children:[
              SizedBox(
                //height: screenSize.width *0.8,
                width: screenSize.width *0.8,
                child: Text(
                  'Mit Lieferando.de schnell und bequem online Essen bestellen',
                  style: TextStyle(
                    color: Color.fromARGB(255, 10, 56, 71),
                    fontSize: 25,
                  ),
                ),
              ),
                SizedBox(height: 10 ),
              SizedBox(
                //height: screenSize.width *0.8,
                  width: screenSize.width *0.8,
                  child: Text(
                  'Lust auf heiße Pizza, saftige Burger oder frisches Sushi? Jetzt online bestellen und bequem zu '
                      'Hause oder im Büro genießen. Finde mit wenigen Klicks Deine Lieblingsrestaurants und '
                      'wähle ein Gericht Deiner Wahl. Bezahle einfach und sicher online oder bar. Um volle Flexibilität '
                      'zu genießen, lade Dir jetzt auch die App von Lieferando.de herunter und bestelle immer und überall.',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 19,
                  ),
                ),
              ),
                SizedBox(height: 10 ),
              SizedBox(
              //height: screenSize.width *0.8,
                width: screenSize.width *0.8,
                child: Text(
                    '> mehr',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 14,
                    ),
                  ),
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
