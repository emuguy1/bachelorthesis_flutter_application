import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../data/model/messageModel.dart';

class MessageCard extends StatelessWidget {
  final MessageModel message;

  const MessageCard(this.message);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: message.sendByMe
          ? EdgeInsets.fromLTRB(5.w, 0, 0, 0)
          : EdgeInsets.fromLTRB(0, 0, 5.w, 0),
      child: Card(
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
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Wrap(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Text(message.message,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 15.sp)),
                        ),
                        Text(
                          message.sender +" - " + message.sendtime,
                          style: TextStyle(color: Colors.grey, fontSize: 10.sp),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
