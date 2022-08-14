import 'package:flutter_restaurant/view/screens/home/widgets/responsive.dart';
import 'package:flutter/material.dart';

class CategoryBar extends StatefulWidget {
  const CategoryBar({
    key,
    this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  _CategoryBar createState() => _CategoryBar();
}

class _CategoryBar extends State<CategoryBar> {
  List _isHovering = [false, false, false, false,false,true];
  List<Widget> rowElements = [];

  List<String> items = ['Burrito', 'Quesadillas', 'Chicken Wings', 'Beilagen und Dips','Alkoholfreie Getranke','Alkoholfreie Getranke'];
  List<IconData> icons = [
    Icons.location_on,
    Icons.date_range,
    Icons.people,
    Icons.wb_sunny
  ];

  List<Widget> generateRowElements() {
    rowElements.clear();
    for (int i = 0; i < items.length; i++) {
      Widget elementTile = InkWell(
        splashColor: Colors.black87,
        hoverColor: Colors.transparent,
        onHover: (value) {
          setState(() {
            value ? _isHovering[i] = true : _isHovering[i] = false;
          });
        },
        onTap: () {},
        child: TextButton(
            child: Text(
                items[i],
                style: TextStyle(
                    color: _isHovering[i]
                        ? Colors.white
                        : Color.fromARGB(255, 10, 56, 71),
                    fontSize: 20
                ),

              ),
            onPressed: () {},
            style: ButtonStyle(
            backgroundColor: _isHovering[i]
                ?  MaterialStateProperty.all<Color>(Color.fromARGB(255, 248, 102, 0))
                : MaterialStateProperty.all<Color>(Colors.white),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
          )
        ),
      );
      Widget spacer = SizedBox(
        //////////////////////////////////////////////////////////////////////
        //height: widget.screenSize.height / 30,

      );
      rowElements.add(elementTile);
      if (i < items.length - 1) {
        rowElements.add(spacer);
      }
    }

    return rowElements;
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      //heightFactor: 1,
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(
          //////////////////////////////
          top: widget.screenSize.height * 0.03,


        ),
        child
            : Container(

                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: widget.screenSize.height / 50,
                    left: widget.screenSize.height /40,
                  ),
                  child: Wrap(
                      //width: screenSize.width/1.5,
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ...generateRowElements(),
                    ]
                  ),

                ),
              ),
      ),
    );
  }
}
