import 'package:flutter_restaurant/view/screens/home/widgets/responsive.dart';
import 'package:flutter/material.dart';

class FeaturedSecondTiles extends StatelessWidget {
  FeaturedSecondTiles({
     key,
     this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  final List<String> assets = [
    'assets/images/bonus.png',
    'assets/images/guarantee.png',
    'assets/images/benefits.png',
  ];

  final List<String> title = ['Pay and get your food delivered', 'Enter your location', 'Choose your restaurant and food'];
  final List<String> content = ['Pay cash or online with Creditcard, Klarna, PayPal, Bitcoin, Bon appetit!',
                                'Enter your street address or let us find your location',
                                'What do you fancy? Browse through countless menus and reviews.'
                                ];
  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: screenSize.width,
        color: Color.fromARGB(255, 248, 245, 242),
        child: ResponsiveWidget.isSmallScreen(context)
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
              //top: screenSize.height * 0.06,
              left: screenSize.width / 50,
              right: screenSize.width / 50,
            ),
          child: Center(

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
              //mainAxisSize: MainAxisSize.,
              children: [
                ...Iterable<int>.generate(assets.length).map(
                  (int pageIndex) =>
                      SizedBox(
                        width: screenSize.width * 0.256,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                children: [
                                  SizedBox(height: 40),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.vertical(top: Radius.circular(1),bottom:  Radius.circular(1)),
                                      boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 15, spreadRadius: 0.5)],
                                      color: Colors.white,
                                    ),
                                    width: 300,
                                    height: 370,
                                    //color: Colors.white,
                                    child: Column(
                                      children: [
                                        SizedBox(height: 70),
                                        Text(
                                          'Your Bonus',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.0
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        SizedBox(
                                          width: 250,
                                          child: Column(
                                           children: [
                                             Text(
                                               'The Punkte programme:',
                                               textAlign: TextAlign.left,
                                               style: TextStyle(
                                                   color: Colors.blue,
                                                   fontSize: 15.0
                                               ),
                                             ),
                                             SizedBox(height: 10),
                                             Text(
                                               'collect points and redeem them for great offers',
                                               style: TextStyle(
                                                   color: Colors.black87, fontSize: 15.0),
                                             ),
                                             SizedBox(height: 10),
                                             Text(
                                               'The Punkte programme:',
                                               style: TextStyle(
                                                   color: Colors.blue,
                                                   fontSize: 15.0),
                                             ),
                                             SizedBox(height: 10),
                                             Text(
                                               'collect points and redeem them for great offers',
                                               style: TextStyle(
                                                   color: Colors.black87, fontSize: 15.0),
                                             ),
                                           ],
                                          )
                                        )


                                      ],
                                    )
                                  )

                                  ]
                              )
                            ),
                            Center(
                              heightFactor: 1,
                              child: Container(
                                width: screenSize.width*0.05,
                                height: screenSize.width*0.05,
                                alignment: Alignment.topCenter,
                                color: Colors.transparent,
                                padding: const EdgeInsets.all(5.0),
                                //alignment: Alignment.bottomCenter,
                                child: Container(
                                    decoration: new BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: new DecorationImage(
                                            fit: BoxFit.fill,
                                            image: new NetworkImage(
                                              assets[pageIndex])
                                        )
                                    )),
                                )
                            )
                          ],
                        ),
                      )
                ),
                SizedBox(height: 500),
              ],
            ),
          )
          )
      );
  }
}
