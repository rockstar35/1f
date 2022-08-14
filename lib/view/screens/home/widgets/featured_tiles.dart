import 'package:flutter_restaurant/view/screens/home/widgets/responsive.dart';
import 'package:flutter/material.dart';

class FeaturedTiles extends StatelessWidget {
  FeaturedTiles({
    key,
    this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  final List<String> assets = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
  ];

  final List<String> title = ['Pay and get your food delivered', 'Enter your location', 'Choose your restaurant and food'];
  final List<String> content = ['Pay cash or online with Creditcard, Klarna, PayPal, Bitcoin, Bon appetit!',
                                'Enter your street address or let us find your location',
                                'What do you fancy? Browse through countless menus and reviews.'
                                ];
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Padding(
            padding: EdgeInsets.only(top: screenSize.height / 50),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: screenSize.width / 15),
                  ...Iterable<int>.generate(assets.length).map(
                    (int pageIndex) => Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: screenSize.width / 10,
                              width: screenSize.width / 10,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: Image.asset(
                                  assets[pageIndex],
                                  //fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: screenSize.height / 70,
                              ),
                              child: Text(
                                title[pageIndex],
                                style: TextStyle(
                                  fontSize: 60,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context)
                                      .primaryTextTheme
                                      .subtitle1
                                      .color,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: screenSize.width / 15),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        : Padding(
            padding: EdgeInsets.only(
              top: screenSize.height * 0.06,
              left: screenSize.width / 15,
              right: screenSize.width / 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...Iterable<int>.generate(assets.length).map(
                  (int pageIndex) => Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            height: screenSize.width / 10,
                            width: screenSize.width / 7,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Image.asset(
                                assets[pageIndex],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Center(
                              heightFactor: 1,
                              child: Container(
                                width: screenSize.width*0.03,
                                height: screenSize.width*0.03,

                                alignment: Alignment.center,
                                color: Colors.blueAccent,
                                margin: EdgeInsets.only(top: 100),
                                padding: const EdgeInsets.all(5.0),
                                //alignment: Alignment.bottomCenter,
                                child: Container(
                                    child: Text(
                                      pageIndex.toString()+'.',
                                      style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      )
                                    ),
                                ),
                              )
                          )
                        ]
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                          top: screenSize.height / 70,
                        ),
                        child: Text(
                          title[pageIndex],
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            color: Colors.indigoAccent,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: screenSize.height / 70,
                        ),
                        child: SizedBox(
                          height: screenSize.width / 10,
                          width: screenSize.width / 4,
                          child:Text(
                          content[pageIndex],
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            color: Colors.black38
                          ),
                        ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}
