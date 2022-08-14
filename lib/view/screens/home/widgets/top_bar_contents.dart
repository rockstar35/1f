import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import '../home_page.dart';
//import 'package:explore/utils/authentication.dart';
//import 'package:explore/widgets/auth_dialog.dart';
import 'package:flutter/material.dart';

class TopBarContents extends StatefulWidget {
  final double opacity;

  TopBarContents(this.opacity);

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
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
                   Text(
                     'Where do you want to order from?',//'Sign in',
                     style: TextStyle(
                       fontSize: 15,
                       color: _isHovering[3] ? Colors.white : Colors.white,
                     ),//textAlign: Alignment.topCenter,
                   ),
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
              )

            ],
          ),
        ),
      ),
    );
  }
}
