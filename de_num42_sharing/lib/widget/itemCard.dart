import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../data/model/itemModel.dart';

//Example for Statless widgets

class ItemCard extends StatelessWidget {
  final ItemModel item;

  const ItemCard(this.item);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side: BorderSide(
          color: Colors.black26,
          width: 1.0,
        ),
      ),
      child: Container(
        width: 90.w,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(5, 10, 30, 15),
              padding: EdgeInsets.fromLTRB(5, 5, 15, 5),
              child: Wrap(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 0, 20),
                        child: Text(
                          item.name,
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: Color.fromRGBO(21, 128, 61, 1),
                          ),
                        ),
                      ),
                      Text(item.description,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14.sp,
                          ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              child: SvgPicture.asset(
                'assets/ballon_item_card.svg',
                height: 70,
                width: 50,
              ),
              bottom: -15,
              right: -35,
            ),
          ],
        ),
      ),
    );
  }
}
