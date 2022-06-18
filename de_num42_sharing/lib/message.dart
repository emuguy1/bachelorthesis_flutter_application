
import 'package:de_num42_sharing/util/GraphQLQueries.dart';
import 'package:de_num42_sharing/widget/messageCard.dart';
import 'package:de_num42_sharing/widget/topBar2.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:sizer/sizer.dart';
import 'data/model/messageModel.dart';
import 'main.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key, required this.conversationID}) : super(key: key);
  final String conversationID;

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  var id = box1.get("meId");
  var cursor = "";
  var messagesList = <MessageModel>[];
  var messageController = TextEditingController();
  var recipientId = "";

  resetList(list) {
    setState(() {
      messagesList = list;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (messagesList.isEmpty) {
      loadMessages("");
    }
    return GraphQLProvider(
      client: graphQLConfig.client,
      child: Scaffold(
        appBar: TopBar(hasBackArrow: true),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 3.h,
              ),
              Center(
                child: Text(
                  messagesList.isNotEmpty
                      ? messagesList.first.messagePartner
                      : "Nachrichten",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 15.sp,
              ),
              Expanded(
                flex: FlexFit.loose.index,
                child: Container(
                  margin: EdgeInsets.fromLTRB(5.w, 0, 5.w, 5.w),
                  child: ListView.builder(
                      reverse: true,
                      itemCount: messagesList.length,
                      itemBuilder: (context, index) {
                        return MessageCard(messagesList[index]);
                      }),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5, 0, 5, 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: FlexFit.loose.index,
                      child: TextFormField(
                        controller: messageController,
                        cursorColor: Colors.green,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Geben sie bitte eine Nachricht ein';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'Nachricht',
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.green,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Mutation(
                        options: MutationOptions(
                          document: gql(postMessageMutation),
                          onCompleted: (dynamic resultData){
                            messageController.clear();
                            messagesList.clear();
                            loadMessages("");
                          },
                          update: (GraphQLDataProxy cache, QueryResult? result) {
                            return cache;
                          },
                        ),
                        builder: (RunMutation runMutation, QueryResult? result) {
                          return TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(16.0),
                              primary: Color.fromRGBO(220, 252, 231, 1),
                              backgroundColor: Color.fromRGBO(21, 128, 61, 1),
                            ),
                            onPressed: () {
                              runMutation({'message': messageController.text,
                                'recipientId': recipientId});
                            },
                            child: Text("Senden"),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> loadMessages(String? cursor) async {
    final id = box1.get("meId");
    GraphQLClient _client = graphQLConfig.clientToQuery();

    Map<String, dynamic> variable = {};
    if (cursor == null || cursor.isEmpty) {
      variable = {"id": widget.conversationID};
    } else {
      variable = {"id": widget.conversationID, "cursor": cursor};
    }

    QueryResult result = await _client.query(
        QueryOptions(document: gql(messagesFromIdQuery), variables: variable));
    if (result.hasException || result.data == null) {
      print(result);
      return null;
    } else {
      final messagesClass =
          MessageList.allMessagesFromJson(result.data!, id, messagesList);

      final newConversationsList = messagesClass.messageList;
      recipientId = messagesClass.recipientID;

      resetList(newConversationsList);

      final pageInfo = result.data?["node"]["conversations"]["pageInfo"];
      if (pageInfo["hasNextPage"]) {
        loadMessages(pageInfo["endCursor"]);
      }
      return null;
    }
  }
}
