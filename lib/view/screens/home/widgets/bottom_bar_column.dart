import 'package:flutter/material.dart';

class BottomBarColumn extends StatelessWidget {

  final List<String> contents;
  final String header;
  BottomBarColumn({
    this.header,
    this.contents,
  });



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              header,
              style: TextStyle(
                color: Colors.blueGrey[300],
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
          ),
           SizedBox(width:50),
        ...Iterable<int>.generate(contents.length).map(
    (int pageIndex) => Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
            contents[pageIndex],
            style: TextStyle(
              color: Colors.blueGrey[100],
              fontSize: 16,
              //fontWeight: FontWeight.w500,
            ),
          ),

        ],
        ),
        )
        ],
      ),
    );
  }
}
