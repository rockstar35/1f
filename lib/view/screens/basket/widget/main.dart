import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_restaurant/view/screens/basket/widget/bottom_bar_basket.dart';

import 'package:flutter_restaurant/view/screens/basket/widget/category_bar.dart';

class MainBasket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var currentWidth = MediaQuery.of(context).size.width;
    var extraLargeScreenGrid = currentWidth > 1536;
    var largeScreenGrid = currentWidth > 1366;
    var smallScreenGrid = currentWidth > 1201;
    var tabScreenGrid = currentWidth > 769;

    return Container(
      alignment: Alignment.topLeft,
      color: Colors.white,
      child: ListView(
          children: [

            //SizedBox(height: 80),
            Container(
              child: Stack(

                children: [
                      Column(
                        children: [
                          Container(
                            width: screenSize.width,
                            child: Image.asset(
                              'assets/images/'
                                  'IMAGE.png',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 20.0,top: 20),
                            child: Row(
                              children: [

                                Container(
                                  alignment: Alignment.topLeft,
                                  padding: EdgeInsets.only(left: 10.0),

                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                      Text(
                                        'L.A. Taco',
                                        style: TextStyle(fontSize: 25.0, color: Color.fromARGB(255, 24, 68, 82)),

                                      ),

                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            size: 25.0,
                                            color: Colors.black,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 25.0,
                                            color: Colors.black,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 25.0,
                                            color: Colors.black,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 25.0,
                                            color: Colors.black,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 25.0,
                                            color: Colors.black,
                                          ),
                                          Text(
                                            '(4reviews)',
                                            style: TextStyle(fontSize: 15.0, color:  Color.fromARGB(255, 248, 102, 0)),
                                          ),
                                        ],
                                      ),

                                      SizedBox(height: 10),
                                      // Flexible(
                                      //   child: Text('Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more',
                                      //     maxLines: 1,
                                      //     softWrap: false,
                                      //     overflow: TextOverflow.fade,
                                      //   ),
                                      // ),
                                      Container(
                                          width: screenSize.width/1.5,
                                          alignment: Alignment.centerLeft,
                                          child:   Text(
                                            'This restaurant provides stamps. To receive them via email please make sure you are subscribed to "discounts, new restaurants and special offers" at the checkout.',
                                            style: TextStyle(fontSize: 15.0, color: Colors.black38),
                                            maxLines: 3,
                                            textAlign: TextAlign.justify,
                                            //overflow: TextOverflow.ellipsis,
                                          )
                                      ),
                                      SizedBox(height: 10),

                                    ],
                                    //'Delivery time \nEstimated arrival: 35~45 min',
                                    //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                                  ),

                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(width: screenSize.width / 8),

                                      SizedBox(width: screenSize.width / 20),

                                    ],
                                  ),
                                ),

                                SizedBox(
                                  width: screenSize.width / 50,
                                ),

                                Align (
                                    alignment: Alignment.topRight,
                                    heightFactor: 4.0,
                                    child:Container(
                                      //alignment: Alignment.,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(255, 248, 245, 242),
                                        border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                                        //borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Icon(
                                        Icons.error_outline,
                                        size: 30.0,
                                        color: Colors.black,
                                      ),
                                    )
                                ),
                                Align (
                                    alignment: Alignment.topRight,
                                    heightFactor: 4.0,
                                    child:Container(
                                      //alignment: Alignment.topRight,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(255, 248, 245, 242),
                                        border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                                        //borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Icon(
                                        Icons.favorite_border,
                                        size: 30.0,
                                        color: Colors.black,
                                      ),
                                    )
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),

                      // Center(
                      //     //heightFactor: 3,
                      //     child: Container(
                      //         decoration: BoxDecoration(
                      //           border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                      //           color: Colors.white,
                      //         ),
                      //       width: screenSize.width*0.1,
                      //       height: screenSize.width*0.1,
                      //
                      //       alignment: Alignment.bottomCenter,
                      //
                      //      margin: const EdgeInsets.only(top: 260),
                      //       padding: const EdgeInsets.only(top: 30,bottom: 30, left: 20, right: 20),
                      //       //alignment: Alignment.bottomCenter,
                      //
                      //       child: Container(
                      //           decoration: new BoxDecoration(
                      //               //shape: BoxShape.circle,
                      //               image: new DecorationImage(
                      //                   fit: BoxFit.fill,
                      //                   image: new NetworkImage(
                      //                     'assets/images/'
                      //                         'IMAGE1.png',
                      //               )
                      //           )),
                      //     )
                      //     ),
                      // )
                  ],
              )

            ),
            //SizedBox(height: 10),

            CategoryBar(screenSize: screenSize),
            Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 20.0,bottom: 20,right: 10),
                //padding: EdgeInsets.only(left: 25.0, right: 25.0,top: 30.0,bottom: 30),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 248, 245, 242),
                  //border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                  //borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [

                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 10.0, top: 20.0,bottom: 10),
                      child: Text(
                        'Popular Dishes',
                        style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                      ),
                    ),

                  ],
                )
            ),

            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              //padding: EdgeInsets.only(left: 25.0, right: 25.0,top: 30.0,bottom: 30),
              decoration: BoxDecoration(
                //color: const Color.fromARGB(255, 248, 245, 242),
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'L.A Spicy Burrito (scharf) ',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )

                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          'mit einer Zutat nach Wahi',
                          style: TextStyle(fontSize: 15.0, color: Colors.black38),
                        ),
                        SizedBox(height: 10),
                        // Flexible(
                        //   child: Text('Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more',
                        //     maxLines: 1,
                        //     softWrap: false,
                        //     overflow: TextOverflow.fade,
                        //   ),
                        // ),
                    Container(
                      //padding: EdgeInsets.all(8.0),
                      alignment: Alignment.centerLeft,
                     child:   Text(
                          'Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more.',
                          style: TextStyle(fontSize: 15.0, color: Colors.black38),
                        )
                    ),
                        SizedBox(height: 10),
                        Text(
                          '10,90 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  SizedBox(
                    width: screenSize.width / 50,
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 5.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.add,
                        size: 23.0,
                        color: Colors.black,
                      ),
                    )
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0,right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'L.A. Burrito',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )

                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          'mit einer Zutat nach Wahi',
                          style: TextStyle(fontSize: 15.0, color: Colors.black38),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more.',
                          style: TextStyle(fontSize: 15.0, color: Colors.black38),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '10,90 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  SizedBox(
                    width: screenSize.width / 50,
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 5.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'L.A. Burrito Bowl',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )

                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          'mit einer Zutat nach Wahi',
                          style: TextStyle(fontSize: 15.0, color: Colors.black38),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more.',
                          style: TextStyle(fontSize: 15.0, color: Colors.black38),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '10,90 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  SizedBox(
                    width: screenSize.width / 50,
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 5.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0, top: 5.0,right: 10),
              padding: EdgeInsets.only(left: 25.0, right: 25.0,top: 100.0,bottom: 100),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage(
                    'assets/images/IMAGE.png',
                  ),
                  fit: BoxFit.fitWidth,
                ),
              ),

            ),

            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 20.0,bottom: 20,right: 10),
              //padding: EdgeInsets.only(left: 25.0, right: 25.0,top: 30.0,bottom: 30),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 248, 245, 242),
                //border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [

                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 10.0, top: 20.0,bottom: 10),
                    child: Text(
                      'Salate',
                      style: TextStyle(fontSize: 20.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 10.0,bottom: 30),
                    child: Text(
                      'Alle Gerichte werden mit Kräutern Ihrer Wahl und einem Dressing Ihrer Wahl zubereitet.',
                      style: TextStyle(fontSize: 15.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),
                  ),
                ],
              )
            ),

            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'L.A. Mexican Salat',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )

                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          'mit einer Zutat nach Wahi',
                          style: TextStyle(fontSize: 15.0, color: Colors.black38),
                        ),
                        SizedBox(height: 10),
                        // Flexible(
                        //   child: Text('Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more',
                        //     maxLines: 1,
                        //     softWrap: false,
                        //     overflow: TextOverflow.fade,
                        //   ),
                        // ),
                        Container(
                          //padding: EdgeInsets.all(8.0),
                            alignment: Alignment.centerLeft,
                            child:   Text(
                              'Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more.',
                              style: TextStyle(fontSize: 15.0, color: Colors.black38),
                            )
                        ),
                        SizedBox(height: 10),
                        Text(
                          '7,90 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  SizedBox(
                    width: screenSize.width / 50,
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 5.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'L.A. Mexican Salat (vegetarisch)',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )

                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          'mit einer Zutat nach Wahi',
                          style: TextStyle(fontSize: 15.0, color: Colors.black38),
                        ),
                        SizedBox(height: 10),
                        // Flexible(
                        //   child: Text('Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more',
                        //     maxLines: 1,
                        //     softWrap: false,
                        //     overflow: TextOverflow.fade,
                        //   ),
                        // ),
                        Container(
                          //padding: EdgeInsets.all(8.0),
                            alignment: Alignment.centerLeft,
                            child:   Text(
                              'Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more.',
                              style: TextStyle(fontSize: 15.0, color: Colors.black38),
                            )
                        ),
                        SizedBox(height: 10),
                        Text(
                          '6,90 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  SizedBox(
                    width: screenSize.width / 50,
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 5.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 20.0, top: 5.0,right: 10),
              padding: EdgeInsets.only(left: 25.0, right: 25.0,top: 100.0,bottom: 100),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage(
                    'assets/images/IMAGE3.png',
                  ),
                  fit: BoxFit.fitWidth,
                ),
              ),

            ),
            Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 20.0,bottom: 20,right: 10),
                //padding: EdgeInsets.only(left: 25.0, right: 25.0,top: 30.0,bottom: 30),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 248, 245, 242),
                  //border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                  //borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [

                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 10.0, top: 20.0,bottom: 10),
                      child: Text(
                        'Burrito Bowls',
                        style: TextStyle(fontSize: 20.0, color: Color.fromARGB(255, 24, 68, 82)),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 10.0,bottom: 30),
                      child: Text(
                        'Alle Gerichte werden mit Reis, Bohnen, knackigem Salat, Tomaten, einer weiteren Zutat Ihrer Wahl, Kräutern Ihrer Wahl und einem Dressing Ihrer Wahl zubereitet.',
                        style: TextStyle(fontSize: 15.0, color: Color.fromARGB(255, 24, 68, 82)),
                      ),
                    ),
                  ],
                )
            ),

            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              padding: EdgeInsets.only(left: 10.0,bottom: 10),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
              ),
              child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Row(
                        children: [
                          Text(
                            'L.A. Burrito Bowl',
                            style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 10.0,bottom: 0),

                            child: Text(
                              ' Product info',
                              style: TextStyle(fontSize: 12.0, color: Colors.blue),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: screenSize.width / 8),

                                SizedBox(width: screenSize.width / 20),

                              ],
                            ),
                          ),

                          SizedBox(
                            width: screenSize.width / 50,
                          ),

                          Align (
                              alignment: Alignment.topRight,
                              heightFactor: 1.0,
                              child:Container(
                                alignment: Alignment.topRight,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 248, 245, 242),
                                  border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                                  //borderRadius: BorderRadius.circular(12),
                                ),
                                child: Icon(
                                  Icons.add,
                                  size: 23.0,
                                  color: Colors.black,
                                ),
                              )
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        'mit einer Zutat nach Wahi',
                        style: TextStyle(fontSize: 15.0, color: Colors.black38),
                      ),
                      SizedBox(height: 10),
                      // Flexible(
                      //   child: Text('Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more',
                      //     maxLines: 1,
                      //     softWrap: false,
                      //     overflow: TextOverflow.fade,
                      //   ),
                      // ),
                      Column(
                        //padding: EdgeInsets.all(8.0),
                          //alignment: Alignment.centerLeft,
                          children:  [
                            Container(
                                child:Text(
                                  'Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more.',
                                  style: TextStyle(fontSize: 15.0, color: Colors.black38),
                                )
                            )

                          ]
                      ),
                      SizedBox(height: 10),
                      Text(
                        '13,90 €',
                        style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                      ),
                      SizedBox(height: 10),
                    ]
              ),
              // child: Row(
              //   children: [
              //
              //     //SizedBox(width: 5),
              //     Container(
              //       alignment: Alignment.topLeft,
              //       padding: EdgeInsets.only(left: 10.0),
              //
              //       child: Column(
              //
              //         mainAxisAlignment: MainAxisAlignment.spaceAround,
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           SizedBox(height: 3),
              //           Row(
              //             children: [
              //               Text(
              //                 'L.A. Burrito Bowl',
              //                 style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
              //
              //               ),
              //               Container(
              //                 alignment: Alignment.centerLeft,
              //                 padding: EdgeInsets.only(left: 10.0,bottom: 30),
              //
              //                 child: Text(
              //                   ' Product info',
              //                   style: TextStyle(fontSize: 12.0, color: Colors.blue),
              //                 ),
              //               )
              //
              //             ],
              //           ),
              //           SizedBox(height: 10),
              //           Text(
              //             'mit einer Zutat nach Wahi',
              //             style: TextStyle(fontSize: 15.0, color: Colors.black38),
              //           ),
              //           SizedBox(height: 10),
              //           // Flexible(
              //           //   child: Text('Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more',
              //           //     maxLines: 1,
              //           //     softWrap: false,
              //           //     overflow: TextOverflow.fade,
              //           //   ),
              //           // ),
              //           Column(
              //             //padding: EdgeInsets.all(8.0),
              //               //alignment: Alignment.centerLeft,
              //               children:  [
              //                 Container(
              //                     child:Text(
              //                       'Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more.',
              //                       style: TextStyle(fontSize: 15.0, color: Colors.black38),
              //                     )
              //                 )
              //
              //               ]
              //           ),
              //           SizedBox(height: 10),
              //           Text(
              //             '13,90 €',
              //             style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
              //           ),
              //           SizedBox(height: 10),
              //         ],
              //         //'Delivery time \nEstimated arrival: 35~45 min',
              //         //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
              //       ),
              //
              //     ),
              //     Expanded(
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.start,
              //         children: [
              //           SizedBox(width: screenSize.width / 8),
              //
              //           SizedBox(width: screenSize.width / 20),
              //
              //         ],
              //       ),
              //     ),
              //
              //     SizedBox(
              //       width: screenSize.width / 50,
              //     ),
              //
              //     Align (
              //         alignment: Alignment.topRight,
              //         heightFactor: 5.0,
              //         child:Container(
              //           alignment: Alignment.topRight,
              //           decoration: BoxDecoration(
              //             color: const Color.fromARGB(255, 248, 245, 242),
              //             border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
              //             //borderRadius: BorderRadius.circular(12),
              //           ),
              //           child: Icon(
              //             Icons.add,
              //             size: 23.0,
              //             color: Colors.black,
              //           ),
              //         )
              //     ),
              //   ],
              // ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'L.A. Mexican Salat (vegetarisch)',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )

                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          'mit einer Zutat nach Wahi',
                          style: TextStyle(fontSize: 15.0, color: Colors.black38),
                        ),
                        SizedBox(height: 10),
                        // Flexible(
                        //   child: Text('Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more',
                        //     maxLines: 1,
                        //     softWrap: false,
                        //     overflow: TextOverflow.fade,
                        //   ),
                        // ),
                        Container(
                          //padding: EdgeInsets.all(8.0),
                            alignment: Alignment.centerLeft,
                            child:   Text(
                              'Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more.',
                              style: TextStyle(fontSize: 15.0, color: Colors.black38),
                            )
                        ),
                        SizedBox(height: 10),
                        Text(
                          '11,90 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  SizedBox(
                    width: screenSize.width / 50,
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 5.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'L.A. Spicy Burrito Bowl (scharf)',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )

                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          'mit einer Zutat nach Wahi',
                          style: TextStyle(fontSize: 15.0, color: Colors.black38),
                        ),
                        SizedBox(height: 10),
                        // Flexible(
                        //   child: Text('Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more',
                        //     maxLines: 1,
                        //     softWrap: false,
                        //     overflow: TextOverflow.fade,
                        //   ),
                        // ),
                        Container(
                          //padding: EdgeInsets.all(8.0),
                            alignment: Alignment.centerLeft,
                            child:   Text(
                              'Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more.',
                              style: TextStyle(fontSize: 15.0, color: Colors.black38),
                            )
                        ),
                        SizedBox(height: 10),
                        Text(
                          '13,90 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  SizedBox(
                    width: screenSize.width / 50,
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 5.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'L.A. Spicy Burrito Bowl (vegetarisch, scharf)',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )

                          ],
                        ),
                        SizedBox(height: 10),
                        // Flexible(
                        //   child: Text('Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more',
                        //     maxLines: 1,
                        //     softWrap: false,
                        //     overflow: TextOverflow.fade,
                        //   ),
                        // ),
                        Container(
                          //padding: EdgeInsets.all(8.0),
                            alignment: Alignment.centerLeft,
                            child:   Text(
                              'Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more.',
                              style: TextStyle(fontSize: 15.0, color: Colors.black38),
                            )
                        ),
                        SizedBox(height: 10),
                        Text(
                          '11,90 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  SizedBox(
                    width: screenSize.width / 50,
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 5.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 20.0, top: 5.0,right: 10),
              padding: EdgeInsets.only(left: 25.0, right: 25.0,top: 100.0,bottom: 100),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage(
                    'assets/images/IMAGE4.png',
                  ),
                  fit: BoxFit.fitWidth,
                ),
              ),

            ),
            Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 20.0,bottom: 20,right: 10),
                //padding: EdgeInsets.only(left: 25.0, right: 25.0,top: 30.0,bottom: 30),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 248, 245, 242),
                  //border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                  //borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [

                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 10.0, top: 20.0,bottom: 10),
                      child: Text(
                        'Pizza',
                        style: TextStyle(fontSize: 20.0, color: Color.fromARGB(255, 24, 68, 82)),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 10.0,bottom: 30),
                      child: Text(
                        'Alle Gerichte werden mit Mais, roten Bohnen, Jalapenos, mittelscharfer Pizzasauce, Kräutern Ihrer Wahl und Tex-Mex-Käse-Mischung zubereitet.',
                        style: TextStyle(fontSize: 15.0, color: Color.fromARGB(255, 24, 68, 82)),
                      ),
                    ),
                  ],
                )
            ),

            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'L.A. Pizza Pequena',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )

                          ],
                        ),

                        SizedBox(height: 10),
                        // Flexible(
                        //   child: Text('Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more',
                        //     maxLines: 1,
                        //     softWrap: false,
                        //     overflow: TextOverflow.fade,
                        //   ),
                        // ),
                        Container(
                          //padding: EdgeInsets.all(8.0),
                            alignment: Alignment.centerLeft,
                            child:   Text(
                              'Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more.',
                              style: TextStyle(fontSize: 15.0, color: Colors.black38),
                            )
                        ),
                        SizedBox(height: 10),
                        Text(
                          '7,90 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  SizedBox(
                    width: screenSize.width / 50,
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 5.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'L.A. Pizza Pequena (vegetarisch)',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )

                          ],
                        ),

                        SizedBox(height: 10),
                        // Flexible(
                        //   child: Text('Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more',
                        //     maxLines: 1,
                        //     softWrap: false,
                        //     overflow: TextOverflow.fade,
                        //   ),
                        // ),
                        Container(
                          //padding: EdgeInsets.all(8.0),
                            alignment: Alignment.centerLeft,
                            child:   Text(
                              'Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more.',
                              style: TextStyle(fontSize: 15.0, color: Colors.black38),
                            )
                        ),
                        SizedBox(height: 10),
                        Text(
                          '6,90 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  SizedBox(
                    width: screenSize.width / 50,
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 5.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 20.0, top: 5.0,right: 10),
              padding: EdgeInsets.only(left: 25.0, right: 25.0,top: 100.0,bottom: 100),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage(
                    'assets/images/IMAGE2.png',
                  ),
                  fit: BoxFit.fitWidth,
                ),
              ),

            ),
            Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 20.0,bottom: 20,right: 10),
                //padding: EdgeInsets.only(left: 25.0, right: 25.0,top: 30.0,bottom: 30),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 248, 245, 242),
                  //border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                  //borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [

                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 10.0, top: 20.0,bottom: 10),
                      child: Text(
                        'Burritos',
                        style: TextStyle(fontSize: 20.0, color: Color.fromARGB(255, 24, 68, 82)),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 10.0,bottom: 30),
                      child: Text(
                        'Alle Gerichte werden mit Kräutern Ihrer Wahl zubereitet und mit Tortilla Chips und hausgemachter Salsa serviert.',
                        style: TextStyle(fontSize: 15.0, color: Color.fromARGB(255, 24, 68, 82)),
                      ),
                    ),
                  ],
                )
            ),

            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'L.A. Burrito',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )

                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          'mit einer Zutat nach Wahi',
                          style: TextStyle(fontSize: 15.0, color: Colors.black38),
                        ),
                        SizedBox(height: 10),
                        // Flexible(
                        //   child: Text('Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more',
                        //     maxLines: 1,
                        //     softWrap: false,
                        //     overflow: TextOverflow.fade,
                        //   ),
                        // ),
                        Container(
                          //padding: EdgeInsets.all(8.0),
                            alignment: Alignment.centerLeft,
                            child:   Text(
                              'Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more.',
                              style: TextStyle(fontSize: 15.0, color: Colors.black38),
                            )
                        ),
                        SizedBox(height: 10),
                        Text(
                          '10,90 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  SizedBox(
                    width: screenSize.width / 50,
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 5.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'L.A. Burrito (vegetarisch)',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )

                          ],
                        ),

                        SizedBox(height: 10),
                        // Flexible(
                        //   child: Text('Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more',
                        //     maxLines: 1,
                        //     softWrap: false,
                        //     overflow: TextOverflow.fade,
                        //   ),
                        // ),
                        Container(
                          //padding: EdgeInsets.all(8.0),
                            alignment: Alignment.centerLeft,
                            child:   Text(
                              'Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more.',
                              style: TextStyle(fontSize: 15.0, color: Colors.black38),
                            )
                        ),
                        SizedBox(height: 10),
                        Text(
                          '10,90 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  SizedBox(
                    width: screenSize.width / 50,
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 5.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'L.A. Spicy Burrito (scharf)',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )

                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          'mit einer Zutat nach Wahi',
                          style: TextStyle(fontSize: 15.0, color: Colors.black38),
                        ),
                        SizedBox(height: 10),
                        // Flexible(
                        //   child: Text('Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more',
                        //     maxLines: 1,
                        //     softWrap: false,
                        //     overflow: TextOverflow.fade,
                        //   ),
                        // ),
                        Container(
                          //padding: EdgeInsets.all(8.0),
                            alignment: Alignment.centerLeft,
                            child:   Text(
                              'Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more.',
                              style: TextStyle(fontSize: 15.0, color: Colors.black38),
                            )
                        ),
                        SizedBox(height: 10),
                        Text(
                          '10,90 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  SizedBox(
                    width: screenSize.width / 50,
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 5.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'L.A. Spicy Burrito (vegetarisch, scharf)',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )

                          ],
                        ),

                        SizedBox(height: 10),
                        // Flexible(
                        //   child: Text('Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more',
                        //     maxLines: 1,
                        //     softWrap: false,
                        //     overflow: TextOverflow.fade,
                        //   ),
                        // ),
                        Container(
                          //padding: EdgeInsets.all(8.0),
                            alignment: Alignment.centerLeft,
                            child:   Text(
                              'Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more.',
                              style: TextStyle(fontSize: 15.0, color: Colors.black38),
                            )
                        ),
                        SizedBox(height: 10),
                        Text(
                          '10,90 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  SizedBox(
                    width: screenSize.width / 50,
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 5.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 20.0, top: 5.0,right: 10),
              padding: EdgeInsets.only(left: 25.0, right: 25.0,top: 100.0,bottom: 100),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage(
                    'assets/images/IMAGE4.png',
                  ),
                  fit: BoxFit.fitWidth,
                ),
              ),

            ),
            Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 20.0,bottom: 20,right: 10),
                //padding: EdgeInsets.only(left: 25.0, right: 25.0,top: 30.0,bottom: 30),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 248, 245, 242),
                  //border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                  //borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [

                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 10.0, top: 20.0,bottom: 10),
                      child: Text(
                        'Quesadillas',
                        style: TextStyle(fontSize: 20.0, color: Color.fromARGB(255, 24, 68, 82)),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 10.0,bottom: 30),
                      child: Text(
                        'Alle Gerichte werden mit Kräutern Ihrer Wahl zubereitet und mit Tortilla Chips und hausgemachter Salsa serviert.',
                        style: TextStyle(fontSize: 15.0, color: Color.fromARGB(255, 24, 68, 82)),
                      ),
                    ),
                  ],
                )
            ),

            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'L.A. Quesadilla',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )

                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          'mit einer Zutat nach Wahi',
                          style: TextStyle(fontSize: 15.0, color: Colors.black38),
                        ),
                        SizedBox(height: 10),
                        // Flexible(
                        //   child: Text('Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more',
                        //     maxLines: 1,
                        //     softWrap: false,
                        //     overflow: TextOverflow.fade,
                        //   ),
                        // ),
                        Container(
                          //padding: EdgeInsets.all(8.0),
                            alignment: Alignment.centerLeft,
                            child:   Text(
                              'Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more.',
                              style: TextStyle(fontSize: 15.0, color: Colors.black38),
                            )
                        ),
                        SizedBox(height: 10),
                        Text(
                          '10,90 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  SizedBox(
                    width: screenSize.width / 50,
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 5.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'L.A. Quesadilla (vegetarisch)',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )

                          ],
                        ),

                        SizedBox(height: 10),
                        // Flexible(
                        //   child: Text('Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more',
                        //     maxLines: 1,
                        //     softWrap: false,
                        //     overflow: TextOverflow.fade,
                        //   ),
                        // ),
                        Container(
                          //padding: EdgeInsets.all(8.0),
                            alignment: Alignment.centerLeft,
                            child:   Text(
                              'Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more.',
                              style: TextStyle(fontSize: 15.0, color: Colors.black38),
                            )
                        ),
                        SizedBox(height: 10),
                        Text(
                          '10,90 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  SizedBox(
                    width: screenSize.width / 50,
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 5.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'L.A. Spicy Quesadilla (scharf)',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )

                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          'mit einer Zutat nach Wahi',
                          style: TextStyle(fontSize: 15.0, color: Colors.black38),
                        ),
                        SizedBox(height: 10),
                        // Flexible(
                        //   child: Text('Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more',
                        //     maxLines: 1,
                        //     softWrap: false,
                        //     overflow: TextOverflow.fade,
                        //   ),
                        // ),
                        Container(
                          //padding: EdgeInsets.all(8.0),
                            alignment: Alignment.centerLeft,
                            child:   Text(
                              'Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more.',
                              style: TextStyle(fontSize: 15.0, color: Colors.black38),
                            )
                        ),
                        SizedBox(height: 10),
                        Text(
                          '10,90 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  SizedBox(
                    width: screenSize.width / 50,
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 5.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'L.A. Spicy Quesadilla (vegetarisch, scharf)',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )

                          ],
                        ),

                        SizedBox(height: 10),
                        // Flexible(
                        //   child: Text('Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more',
                        //     maxLines: 1,
                        //     softWrap: false,
                        //     overflow: TextOverflow.fade,
                        //   ),
                        // ),
                        Container(
                          //padding: EdgeInsets.all(8.0),
                            alignment: Alignment.centerLeft,
                            child:   Text(
                              'Choice of: mit Beef, 100% echte Rinderhüfte, mit Chicken, mit Gambas, mit Koriander, mit Limettensaft and more.',
                              style: TextStyle(fontSize: 15.0, color: Colors.black38),
                            )
                        ),
                        SizedBox(height: 10),
                        Text(
                          '10,90 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  SizedBox(
                    width: screenSize.width / 50,
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 5.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 20.0, top: 5.0,right: 10),
              padding: EdgeInsets.only(left: 25.0, right: 25.0,top: 100.0,bottom: 100),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage(
                    'assets/images/IMAGE2.png',
                  ),
                  fit: BoxFit.fitWidth,
                ),
              ),

            ),
            Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 20.0,bottom: 20,right: 10),
                //padding: EdgeInsets.only(left: 25.0, right: 25.0,top: 30.0,bottom: 30),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 248, 245, 242),
                  //border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                  //borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [

                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 10.0, top: 20.0,bottom: 10),
                      child: Text(
                        'Chicken Wings',
                        style: TextStyle(fontSize: 20.0, color: Color.fromARGB(255, 24, 68, 82)),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 10.0,bottom: 30),
                      child: Text(
                        'Alle Gerichte werden mit einem Dip Ihrer Wahl serviert.',
                        style: TextStyle(fontSize: 15.0, color: Color.fromARGB(255, 24, 68, 82)),
                      ),
                    ),
                  ],
                )
            ),

            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'Mexican Chicken Wings',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )

                          ],
                        ),

                        SizedBox(height: 10),

                        Container(
                            alignment: Alignment.centerLeft,
                            child:   Text(
                              'Choice of: 8 Stück, 12 Stück or 20 Stück.',
                              style: TextStyle(fontSize: 15.0, color: Colors.black38),
                            )
                        ),
                        SizedBox(height: 10),
                        Text(
                          '12,90 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  SizedBox(
                    width: screenSize.width / 50,
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 5.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'L.A. Spicy Mexican Chicken Wings (scharf)',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )

                          ],
                        ),

                        SizedBox(height: 10),

                        Container(
                          //padding: EdgeInsets.all(8.0),
                            alignment: Alignment.centerLeft,
                            child:   Text(
                              'Choice of: 8 Stück, 12 Stück or 20 Stück.',
                              style: TextStyle(fontSize: 15.0, color: Colors.black38),
                            )
                        ),
                        SizedBox(height: 10),
                        Text(
                          '12,90 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  SizedBox(
                    width: screenSize.width / 50,
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 5.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 20.0, top: 5.0,right: 10),
              padding: EdgeInsets.only(left: 25.0, right: 25.0,top: 100.0,bottom: 100),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage(
                    'assets/images/IMAGE3.png',
                  ),
                  fit: BoxFit.fitWidth,
                ),
              ),

            ),
            Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 20.0,bottom: 20,right: 10),
                //padding: EdgeInsets.only(left: 25.0, right: 25.0,top: 30.0,bottom: 30),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 248, 245, 242),
                  //border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                  //borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [

                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 10.0, top: 20.0,bottom: 10),
                      child: Text(
                        'Beilagen und Dips',
                        style: TextStyle(fontSize: 20.0, color: Color.fromARGB(255, 24, 68, 82)),
                      ),
                    ),

                  ],
                )
            ),

            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'Tortilla Chips mit hausgemachter Salsa',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )

                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          '4,50 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  SizedBox(
                    width: screenSize.width / 50,
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 4.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'Tortilla Chips mit hausgemachter Guacamole',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )

                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          '5,90 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  SizedBox(
                    width: screenSize.width / 50,
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 4.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'Hausgemachte Guacamole',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )

                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          '5,90 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  SizedBox(
                    width: screenSize.width / 50,
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 4.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'Hausgemachte Salsa',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )

                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          '4,50 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  SizedBox(
                    width: screenSize.width / 50,
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 4.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'Smokey Barbecuesauce',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )

                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          '3,90 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  SizedBox(
                    width: screenSize.width / 50,
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 4.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 20.0, top: 5.0,right: 10),
              padding: EdgeInsets.only(left: 25.0, right: 25.0,top: 100.0,bottom: 100),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage(
                    'assets/images/IMAGE4.png',
                  ),
                  fit: BoxFit.fitWidth,
                ),
              ),

            ),
            Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 20.0,bottom: 20,right: 10),
                //padding: EdgeInsets.only(left: 25.0, right: 25.0,top: 30.0,bottom: 30),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 248, 245, 242),
                  //border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                  //borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [

                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 10.0, top: 20.0,bottom: 10),
                      child: Text(
                        'Alkoholfreie Getränke',
                        style: TextStyle(fontSize: 20.0, color: Color.fromARGB(255, 24, 68, 82)),
                      ),
                    ),

                  ],
                )
            ),

            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'Coca-Cola 0,5l (EINWEG)',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          //padding: EdgeInsets.all(8.0),
                            width: screenSize.width/2.5,
                            alignment: Alignment.centerLeft,
                            child:   Text(
                              'Coca-Cola steht für einzigartigen Geschmack, Erfrischung und Momente voller Lebensfreude. Die 0,5l wiederverschließbare PET Einwegflasche - die richtige Trinkgröße für jeden Anlass.',
                              style: TextStyle(fontSize: 15.0, color: Colors.black38),
                              maxLines: 3,
                              textAlign: TextAlign.justify,
                              //overflow: TextOverflow.ellipsis,
                            )
                        ),
                        SizedBox(height: 30),

                        Text(
                          '2,60 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Contains caffeine (10,00 mg/100 ml) incl. deposit ( 0,25 €) 4,95 € 500ml',
                            style: TextStyle(fontSize: 15.0, color: Colors.black38),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  // SizedBox(
                  //   width: screenSize.width / 50,
                  // ),
                  Container(
                    padding: EdgeInsets.only(top:20, bottom: 20),
                    child: Image.asset(
                      'assets/images/'
                          'cola.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 8.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'Coca-Cola Zero Sugar 0,5l (EINWEG)',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          //padding: EdgeInsets.all(8.0),
                            width: screenSize.width/2.5,
                            alignment: Alignment.centerLeft,
                            child:   Text(
                              'Keine Kalorien. Null Zucker. Für alle Coke Liebhaber, die beim Geschmack keinen Kompromiss eingehen wollen.',
                              style: TextStyle(fontSize: 15.0, color: Colors.black38),
                              maxLines: 3,
                              textAlign: TextAlign.justify,
                              //overflow: TextOverflow.ellipsis,
                            )
                        ),
                        SizedBox(height: 30),

                        Text(
                          '2,60 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Contains caffeine (10,00 mg/100 ml) incl. deposit ( 0,25 €) 4,95 € 500ml',
                            style: TextStyle(fontSize: 15.0, color: Colors.black38),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  // SizedBox(
                  //   width: screenSize.width / 50,
                  // ),
                  Container(
                    padding: EdgeInsets.only(top:20,bottom: 20),
                    child: Image.asset(
                      'assets/images/'
                          'cola.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 8.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'Fanta Orange 0,5l (EINWEG)',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          //padding: EdgeInsets.all(8.0),
                            width: screenSize.width/2.5,
                            alignment: Alignment.centerLeft,
                            child:   Text(
                              'Trinke Fanta. Lebe bunter. Spritzig erfrischend begleitet die originale Fanta Orange jede Lebenssituation und macht jetzt noch mehr Spaß.',
                              style: TextStyle(fontSize: 15.0, color: Colors.black38),
                              maxLines: 3,
                              textAlign: TextAlign.justify,
                              //overflow: TextOverflow.ellipsis,
                            )
                        ),
                        SizedBox(height: 30),

                        Text(
                          '2,60 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Contains caffeine (10,00 mg/100 ml) incl. deposit ( 0,25 €) 4,95 € 500ml',
                            style: TextStyle(fontSize: 15.0, color: Colors.black38),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),


                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 8.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'Sprite 0,5l (EINWEG)',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          //padding: EdgeInsets.all(8.0),
                            width: screenSize.width/2.5,
                            alignment: Alignment.centerLeft,
                            child:   Text(
                              'Bist du bereit für Sprite? Die einzigartige Formel aus grünen Limetten und sonnengelben Zitronen erfrischt dich maximal.',
                              style: TextStyle(fontSize: 15.0, color: Colors.black38),
                              maxLines: 3,
                              textAlign: TextAlign.justify,
                              //overflow: TextOverflow.ellipsis,
                            )
                        ),
                        SizedBox(height: 30),

                        Text(
                          '2,60 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'incl. deposit ( 0,25 €) 4,95 € 500ml',
                            style: TextStyle(fontSize: 15.0, color: Colors.black38),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  // SizedBox(
                  //   width: screenSize.width / 50,
                  // ),
                  Container(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: Image.asset(
                      'assets/images/'
                          'sprite.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 8.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),

            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'San Pellegrino 0,5l',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),

                        Text(
                          '2,60 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'incl. deposit ( 0,25 €) 4,95 € 500ml',
                            style: TextStyle(fontSize: 15.0, color: Colors.black38),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 4.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'Evian Still 0,5l',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),

                        Text(
                          '2,60 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'incl. deposit ( 0,25 €) 4,95 € 500ml',
                            style: TextStyle(fontSize: 15.0, color: Colors.black38),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 4.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'Jarrito Mandarin 0,37l',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),

                        Text(
                          '2,60 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'incl. deposit ( 0,25 €) 4,95 € 500ml',
                            style: TextStyle(fontSize: 15.0, color: Colors.black38),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),
                        SizedBox(width: screenSize.width / 20),
                      ],
                    ),
                  ),
                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 4.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
              ),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'Jarrito Pineapple 0,37l',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          '2,60 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'incl. deposit ( 0,25 €) 4,95 € 500ml',
                            style: TextStyle(fontSize: 15.0, color: Colors.black38),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),
                        SizedBox(width: screenSize.width / 20),
                      ],
                    ),
                  ),
                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 4.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
              ),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'Jarrito Mango 0,37l',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          '2,60 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'incl. deposit ( 0,25 €) 4,95 € 500ml',
                            style: TextStyle(fontSize: 15.0, color: Colors.black38),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),
                        SizedBox(width: screenSize.width / 20),
                      ],
                    ),
                  ),
                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 4.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
              ),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'Jarrito Lime 0,37l',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),

                        Text(
                          '2,60 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'incl. deposit ( 0,25 €) 4,95 € 500ml',
                            style: TextStyle(fontSize: 15.0, color: Colors.black38),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 4.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 20.0, top: 5.0,right: 10),
              padding: EdgeInsets.only(left: 25.0, right: 25.0,top: 100.0,bottom: 100),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage(
                    'assets/images/IMAGE5.png',
                  ),
                  fit: BoxFit.fitWidth,
                ),
              ),

            ),
            Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 20.0,bottom: 20,right: 10),
                //padding: EdgeInsets.only(left: 25.0, right: 25.0,top: 30.0,bottom: 30),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 248, 245, 242),
                  //border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                  //borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [

                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 10.0, top: 20.0,bottom: 10),
                      child: Text(
                        'Alkoholische Getränke',
                        style: TextStyle(fontSize: 20.0, color: Color.fromARGB(255, 24, 68, 82)),
                      ),
                    ),

                  ],
                )
            ),

            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'Corona Extra 0,33l',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),

                        Text(
                          '2,60 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'incl. deposit ( 0,25 €) 4,95 € 500ml',
                            style: TextStyle(fontSize: 15.0, color: Colors.black38),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 4.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'Becks 0,5l',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),

                        Text(
                          '2,60 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'incl. deposit ( 0,25 €) 4,95 € 500ml',
                            style: TextStyle(fontSize: 15.0, color: Colors.black38),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor:4.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'Desperados 0,33 l',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),

                        Text(
                          '2,60 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'incl. deposit ( 0,25 €) 4,95 € 500ml',
                            style: TextStyle(fontSize: 15.0, color: Colors.black38),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 4.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'Cloudy Bay Sauvignon Blanc 0,75l',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),

                        Text(
                          '2,60 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'incl. deposit ( 0,25 €) 4,95 € 500ml',
                            style: TextStyle(fontSize: 15.0, color: Colors.black38),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor:4.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'Cà dei Frati I Frati Lugana 0,75l',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),

                        Text(
                          '2,60 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'incl. deposit ( 0,25 €) 4,95 € 500ml',
                            style: TextStyle(fontSize: 15.0, color: Colors.black38),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 4.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
              decoration: BoxDecoration(
                border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                //borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  //SizedBox(width: 5),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Miraval Rose 0,75l',
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),

                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Product info',
                                style: TextStyle(fontSize: 12.0, color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          '2,60 €',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 248, 102, 0)),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'incl. deposit ( 0,25 €) 4,95 € 500ml',
                            style: TextStyle(fontSize: 15.0, color: Colors.black38),
                          ),
                        ),
                      ],
                      //'Delivery time \nEstimated arrival: 35~45 min',
                      //style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                    ),

                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),

                        SizedBox(width: screenSize.width / 20),

                      ],
                    ),
                  ),

                  Align (
                      alignment: Alignment.topRight,
                      heightFactor: 4.0,
                      child:Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 248, 245, 242),
                          border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
            ),

            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                    'L.A. Taco\n'
                    'A + A Blumen-Meister GmbH Blumenhandel\n'
                    'Große Bockenheimer Straße 46\n'
                    '60313 Frankfurt am Main\n'
                    'Legal Representative: Rene Paul Meister\n\n'
                    'info@lieferando.de\n\n'
                    'Company Register:Frankfurt am Main\n'
                    'Company Register No:HRB 13406\n'
                    'Company Register:Frankfurt am Main\n'
                    'Company Register No:06412000\n\n'
                    'VAT number:DE114128032\n\n'
                    'Platform of the EU-Commission for online dispute resolution:https://ec.europa.eu/consumers/odr',
                style: TextStyle(fontSize: 15.0, color: Colors.black38),
              ),
            ),
            SizedBox(height: 50,),
            Container(
              child: BottomBarBasket(),
            )
          ],
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
