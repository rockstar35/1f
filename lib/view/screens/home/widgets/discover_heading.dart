import 'package:flutter_restaurant/view/screens/home/widgets/responsive.dart';
import 'package:flutter/material.dart';

class DiscoverHeading extends StatelessWidget {
  const DiscoverHeading({
    key,
     this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white60,
      child: Padding(
      padding: EdgeInsets.only(
        top: screenSize.height * 0.06,
        left: screenSize.width / 15,
        right: screenSize.width / 15,
      ),
      child: ResponsiveWidget.isSmallScreen(context)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(),
                // Text(
                //   'Featured',
                //   style: TextStyle(
                //     fontSize: 24,
                //     fontFamily: 'Montserrat',
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                SizedBox(height: 5),
                // Text(
                //   'Unique wildlife tours & destinations',
                //   textAlign: TextAlign.end,
                //   style: Theme.of(context).primaryTextTheme.subtitle1,
                // ),
                SizedBox(height: 10),
              ],
            )
          : Column(
                //child:Column(
                children: [
                 Center(
                     child: Text(
                         'New here?',
                         textAlign: TextAlign.center,
                         style: TextStyle(
                           fontSize: 20,
                           color:Color.fromARGB(255, 10, 56, 71),
                           fontFamily: 'Montserrat',
                           fontWeight: FontWeight.bold,
                         )
                     )
                 ),
                  SizedBox(height: 10),
                 Center(
                     child: Text(
                         'Discover Lieferando.de',
                         textAlign: TextAlign.center,
                         style: TextStyle(
                           fontSize: 35,
                           color: Color.fromARGB(255, 248, 102, 0),
                           fontFamily: 'Montserrat',
                           fontWeight: FontWeight.bold,
                         )
                     )
                 ),
                  SizedBox(height: 20),
               ]
                )

    )
    );
  }
}
