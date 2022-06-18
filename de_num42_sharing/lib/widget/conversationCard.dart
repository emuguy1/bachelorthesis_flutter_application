import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../data/model/conversationModel.dart';
import '../message.dart';

//Example for Statless widgets

class ConversationCard extends StatelessWidget {
  final ConversationModel conversation;

  const ConversationCard(this.conversation);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
                            child: Text(
                              conversation.conversationPartnerName,
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: Color.fromRGBO(21, 128, 61, 1),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Text(conversation.lastMessage,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 13.sp)
                            ),
                          ),
                          Text(
                            conversation.dateString,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10.sp
                            ),
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
        onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      MessagePage(conversationID: conversation.conversationID),
                ),
              )
            });
  }
}
