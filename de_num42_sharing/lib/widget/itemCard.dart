import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

//Example for Statless widgets

class ItemCard extends StatelessWidget {
  final String itemName;
  final String description;
  final int category;

  const ItemCard(this.itemName, {this.category = 1, this.description = ""});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 90.w,
        child:Stack(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(5, 10, 30, 15),
            padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
            child:Wrap(children: [Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin:EdgeInsets.fromLTRB(0, 5, 0, 20) ,
                  child: Text(itemName,
                    style: TextStyle(
                      color: Color.fromRGBO(21, 128, 61, 1),
                    ),
                  ),
                ),
                Text(description)
              ],
            ),],
            ),
          ),
          Positioned(
            child: SvgPicture.asset(
              'assets/ballon_item_card.svg',
              height: 40,
              width: 40,
            ),
            bottom: -5,
            right: -18,
          ),
        ],
      ),
      ),
    );
  }
}
