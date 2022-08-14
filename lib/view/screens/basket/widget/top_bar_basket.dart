import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter_restaurant/view/screens/basket/widget/basketbar.dart';
import 'package:ant_icons/ant_icons.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
class TopBarBasket extends StatefulWidget {
  final double opacity;

  TopBarBasket(this.opacity);

  @override
  _TopBarBasket createState() => _TopBarBasket();
}

class _TopBarBasket extends State<TopBarBasket> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  bool _isProcessing = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var currentWidth = MediaQuery.of(context).size.width;
    var extraLargeScreenGrid = currentWidth > 1536;
    var largeScreenGrid = currentWidth > 1366;
    var smallScreenGrid = currentWidth > 1201;
    var extraSmallScreenGrid = currentWidth > 1025;
    var tabScreenGrid = currentWidth > 769;

    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        color: Color.fromARGB(255, 248, 102, 0),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/title.png',
                fit: BoxFit.cover,
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
                height: 30,
               child: Column(
                 children: [
                   Container(
                     padding: EdgeInsets.only(
                       bottom: 5, // Space between underline and text
                     ),
                     decoration: BoxDecoration(
                         border: Border(bottom: BorderSide(
                           color: Colors.white,
                           width: 2.0, // Underline thickness
                         ))
                     ),
                     child: Text(
                       'Where do you want to order from?',//'Sign in',
                       style: TextStyle(
                         fontSize: 15,
                         color: _isHovering[3] ? Colors.white : Colors.white,
                         //decoration: TextDecoration.underline,
                       ),//textAlign: Alignment.topCenter,
                     ),
                   )
                 ],
               )
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
              Text(
                'Become a courier',//'Sign in',
                style: TextStyle(
                  fontSize: 15,
                  color: _isHovering[3] ? Colors.white : Colors.white70,
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 20.0),
                child: InkWell(
                  onTap: () {
                    showMaterialModalBottomSheet(
                      expand: false,
                      enableDrag: false,
                      isDismissible: false,
                      context: context,
                      barrierColor: Colors.transparent,
                      backgroundColor: Colors.transparent,
                      duration: Duration(seconds: 0),
                      builder: (context) => GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop(false);
                        },
                        child: Row(
                          children: [

                            Expanded(
                              child: Container(
                                color: Colors.transparent,
                              ),
                            ),
                            Container(
                              width: 350.0,
                              child: BasketBar(),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Icon(AntIcons.menu),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
