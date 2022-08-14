import 'package:ant_icons/ant_icons.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_restaurant/view/screens/basket/widget/bottom_bar_basket.dart';
import 'package:flutter_restaurant/view/screens/checkout/widgets/topBar.dart';
import 'package:flutter_restaurant/view/screens/checkout/widgets/chart.dart';
import 'package:flutter_restaurant/view/screens/checkout/widgets/lineChart.dart';
import 'package:ionicons/ionicons.dart';
import 'package:rating_bar/rating_bar.dart';

class AnalyticsPage extends StatelessWidget {
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
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: 80),
                Container(

                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 20.0, top: 15.0,bottom: 20),
                  child: Text(
                    'Checkout',
                    style: TextStyle(fontSize: 30.0, color: Color.fromARGB(255, 24, 68, 82)),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 20.0, top: 15.0,bottom: 15),

                  child: Text(
                    'L.A. Taco',
                    style: TextStyle(fontSize: 22.0, color: Colors.black26),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0, top: 5.0,bottom: 20),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 10.0, top: 15.0,bottom: 15),
                  color: Color.fromARGB(255, 255, 236, 179),
                  child: Row(
                    children: [
                      Icon(
                        Icons.warning,
                        size: 23.0,
                        color: Colors.black,
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Please enter your street and house number',
                        style: TextStyle(fontSize: 15.0, color: Color.fromARGB(255, 24, 68, 82)),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 20.0, top: 5.0,bottom: 20,right: 10),
                  padding: EdgeInsets.only(left: 25.0, right: 25.0,top: 30.0,bottom: 30),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 248, 245, 242),
                    border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                    //borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'I already have an account',
                            style: TextStyle(fontSize: 15.0, color: Color.fromARGB(255, 24, 68, 82)),
                          ),
                          SizedBox(width: 20),
                          OutlinedButton(
                            onPressed: () {},

                            child: Text('Sign in',style: TextStyle(
                              color: Color.fromARGB(255, 23, 99, 203),
                              fontSize: 18,
                            ),),
                            style: OutlinedButton.styleFrom(
                                fixedSize: Size(100, 40),
                                backgroundColor: Colors.white,

                                side: BorderSide(width: 0.0, color: Color.fromARGB(255, 185, 185, 185))
                            ),
                          ),
                        ],
                      ),
                      SizedBox( height: 20),
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Container(
                          color: Color.fromARGB(255,230, 230, 230),
                          width: double.maxFinite,
                          height: 2,
                        ),
                      ),
                      Container(

                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 10.0, top: 20.0,bottom: 10),
                        child: Text(
                          'Delivery address',
                          style: TextStyle(fontSize: 20.0, color: Color.fromARGB(255, 24, 68, 82)),
                        ),
                      ),
                      new GridView.count(
                        crossAxisCount: largeScreenGrid ? 2 : 1,
                        childAspectRatio: 5,
                        padding: EdgeInsets.only(left: 0.0, top: 0.0,bottom: 0),
                        mainAxisSpacing: 0.0,
                        crossAxisSpacing: 0.0,
                        //semanticChildCount: 2,
                        shrinkWrap: true,

                        children: [
                          Container(

                                padding: EdgeInsets.only(right:8.0),
                                child: Column(

                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Street name',
                                        style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 99, 99, 99)),
                                      ),
                                    ),

                                    TextField(

                                      decoration: InputDecoration(

                                        border: OutlineInputBorder(),
                                        //hintText: 'Enter a search term',
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.warning,
                                          size: 15.0,
                                          color: Colors.red,
                                        ),
                                        SizedBox(width: 20),
                                        Text(
                                          'Street name is required',
                                          style: TextStyle(fontSize: 15.0, color: Colors.red),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right:8.0),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'House number',
                                    style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 99, 99, 99)),
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),

                                  ),
                                ),

                              ],
                            ),
                          ),
                          Container(
                                padding: EdgeInsets.only(right:8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Postcode',
                                        style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 99, 99, 99)),
                                      ),
                                    ),
                                    TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),

                                      ),
                                    ),

                                  ],
                                ),
                            ),
                          Container(
                            padding: EdgeInsets.only(right:8.0),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'City',
                                    style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 99, 99, 99)),
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),

                                  ),
                                ),

                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right:8.0),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Floor (optional)',
                                    style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 99, 99, 99)),
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),

                                  ),
                                ),

                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right:8.0),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Company name (optional)',
                                    style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 99, 99, 99)),
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),

                                  ),
                                ),

                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right:8.0),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Add note (optional)',
                                    style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 99, 99, 99)),
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),

                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            //fillColor: Colors.blue,
                            value: false,

                          ),
                          Text(
                            'Save these remarks for your next order',
                            style: TextStyle(fontSize: 15.0, color: Color.fromARGB(255, 24, 68, 82)),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Container(
                          color: Color.fromARGB(255,230, 230, 230),
                          width: double.maxFinite,
                          height: 2,
                        ),
                      ),
                      new GridView.count(
                        crossAxisCount: largeScreenGrid ? 2 : 1,
                        childAspectRatio: 5,
                        padding: EdgeInsets.only(left: 0.0, top: 0.0,bottom: 0),
                        mainAxisSpacing: 0.0,
                        crossAxisSpacing: 0.0,
                        //semanticChildCount: 2,
                        shrinkWrap: true,

                        children: [
                          Container(

                            padding: EdgeInsets.only(right: 8.0),
                            child: Column(

                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'First and last name',
                                    style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 99, 99, 99)),
                                  ),
                                ),

                                TextField(

                                  decoration: InputDecoration(

                                    border: OutlineInputBorder(),
                                    //hintText: 'Enter a search term',
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Container(
                           padding: EdgeInsets.only(right: 8.0),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'E-mail',
                                    style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 99, 99, 99)),
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),

                                  ),
                                ),

                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right:8.0),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Phone Number',
                                    style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 99, 99, 99)),
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),

                                  ),
                                ),

                              ],
                            ),
                          ),

                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(right:8.0),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'When placing an order, you will receive a confirmation, Food Tracker status '
                              'messages and a request to review the restaurant via email or otherwise(such as '
                              'push messages)',
                          style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 99, 99, 99)),
                        ),
                      ),
                    ],
                  )
                ),
                Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 20.0, top: 5.0,bottom: 20, right: 10),
                padding: EdgeInsets.only(left: 25.0, right: 25.0,top: 30.0,bottom: 30),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 248, 245, 242),
                  border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                  //borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.watch_later,
                      size: 23.0,
                      color: Colors.black,
                    ),
                    SizedBox(width: 10),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 20.0),

                      child: Column(
                        children: [
                          Text(
                            'Delivery time                         ',
                            style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                          ),
                          Text(
                            'Estimated arrival: 35~45 min',
                            style: TextStyle(fontSize: 20.0, color: Color.fromARGB(255, 24, 68, 82)),
                          ),
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

                    SizedBox(
                      width: screenSize.width / 50,
                    ),
                    Icon(
                      Icons.check_circle,
                      size: 23.0,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
                Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 20.0, top: 5.0,bottom: 20, right: 10),
                padding: EdgeInsets.only(left: 25.0, right: 25.0,top: 30.0,bottom: 30),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 248, 245, 242),
                  border: Border.all( color: Color.fromARGB(255, 229, 229, 229), width: 2),
                  //borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.account_balance_wallet,
                      size: 23.0,
                      color: Color.fromARGB(255, 248, 102, 0),
                    ),
                    SizedBox(width: 10),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 20.0),

                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          Container(
                            alignment: Alignment.bottomLeft,
                            child:Text(
                              'Pay with                                 ',
                              textAlign: TextAlign.justify,
                              style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 24, 68, 82)),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child:Text(
                                'Select your payment method',
                                style: TextStyle(fontSize: 20.0, color: Colors.red),
                              ),
                          )
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

                    SizedBox(
                      width: screenSize.width / 50,
                    ),
                    Icon(
                      Icons.warning,
                      size: 23.0,
                      color: Colors.black,
                    ),

                  ],
                ),
              ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 30,top: 15, bottom: 15),
                  child:Text(
                    'Add a voucher',
                    style: TextStyle(fontSize: 22.0, color: Colors.blue),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 25,top: 10, bottom: 5),
                  child:  Wrap(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          //fillColor: Colors.blue,
                          value: false,

                        ),
                        Text(
                          'Receive discounts, loyalty offers and other updates via email, SMS and push notification',
                          style: TextStyle(fontSize: 15.0, color: Color.fromARGB(255, 24, 68, 82)),
                        ),
                      ],
                    ),
                ),
                Container(

                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 30,top: 5, bottom: 20,right: 10),
                  child: Wrap(
                      children: [
                        Text(
                          'By clicking on ORDER & PAY WITH you agree with the contents of the shopping cart, the data you filled out, our  ',
                          style: TextStyle(fontSize: 15.0, color: Colors.black38),
                        ),
                        Text(
                          'privacy statement ',
                          style: TextStyle(fontSize: 15.0, color: Colors.blue),
                        ),
                        Text(
                          'and ',
                          style: TextStyle(fontSize: 15.0, color: Colors.black38),
                        ),
                        Text(
                          'terms of use.',
                          style: TextStyle(fontSize: 15.0, color: Colors.blue),
                        ),
                      ],
                    ),
                ),
                Container(
                  child: OutlinedButton(
                    onPressed: () {},

                    child: Text(' Order & pay with (0,00 €) ',style: TextStyle(
                      color: Color.fromARGB(255, 24, 68, 82),
                      fontSize: 18,
                    ),),
                    style: OutlinedButton.styleFrom(
                        fixedSize: Size(400, 20),
                        backgroundColor: Color.fromARGB(255, 235, 235, 235),
                        side: BorderSide(width: 0.0, color: Color.fromARGB(255, 235, 235, 235))
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  child: BottomBarBasket(),
                )
              ],
            ),
          ),
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
