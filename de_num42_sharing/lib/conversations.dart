import 'package:de_num42_sharing/widget/topBar2.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:de_num42_sharing/util/GraphQLQueries.dart';
import 'package:de_num42_sharing/widget/conversationCard.dart';
import 'package:de_num42_sharing/widget/persistentFooter.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:sizer/sizer.dart';

import 'data/model/conversationModel.dart';
import 'main.dart';

class ConversationsPage extends StatefulWidget {
  const ConversationsPage({Key? key}) : super(key: key);
  final String title = 'Sharing.';

  @override
  State<ConversationsPage> createState() => _ConversationsPageState();
}

class _ConversationsPageState extends State<ConversationsPage> {

  var id = box1.get("meId");
  var cursor = "";
  var conversationsList = <ConversationModel>[];



  resetList(list) {
    setState(() {
      conversationsList = list;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(conversationsList.isEmpty){
      loadConversations("");
    }
    return GraphQLProvider(
      client: graphQLConfig.client,
      child: Scaffold(
        appBar: TopBar(hasBackArrow: false),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 5.h,
              ),
              Center(
                child:
                Text("Nachrichten",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                    color: Colors.black
                  ),
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
                      itemCount: conversationsList.length,
                      itemBuilder: (context, index) {
                        return ConversationCard(conversationsList[index]);
                      }),
                ),
              ),
            ],
          ),
        ),
        persistentFooterButtons: [
          PersistentFooter(),
        ],
      ),
    );
  }

  Future<void> loadConversations(String? cursor) async {
    final id = box1.get("meId");
    GraphQLClient _client = graphQLConfig.clientToQuery();

    Map<String, dynamic> variable = {};
    if (cursor == null || cursor.isEmpty) {
      variable = {"id": id};
    } else {
      variable = {"id": id, "cursor": cursor};
    }

    QueryResult result = await _client.query(QueryOptions(
        document: gql(getConversationsQuery), variables: variable));
    if (result.hasException || result.data == null) {
      print(result);
      return null;
    } else {

      final newConversationsList =
        ConversationList.allConversationsFromJson(result.data!, id, conversationsList)
            .conversationlist;


      resetList(newConversationsList);

      final pageInfo = result.data?["node"]["conversations"]["pageInfo"];
      if (pageInfo["hasNextPage"]) {
        loadConversations(pageInfo["endCursor"]);
      }
      return null;
    }
  }

}
