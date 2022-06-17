import 'package:de_num42_sharing/data/model/item.dart';
import 'package:de_num42_sharing/main.dart';
import 'package:de_num42_sharing/widget/itemCard.dart';
import 'package:de_num42_sharing/widget/topBar2.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:sizer/sizer.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);
  final String title = 'Sharing.';

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var rememberValue = false;
  var id = box1.get("meId");
  var cursor = "";
  var itemList = <Item>[];

  reloadList() {
    id = box1.get("meId");
    loadItems("");
  }

  resetList(list) {
    setState(() {
      itemList = list;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(hasBackArrow: false),
      body: Column(
        children: <Widget>[
          Container(
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 5.h,
                ),
                Query(
                  options: QueryOptions(
                    document: gql("""
                       query me {
                        me {
                          id
                          firstName
                          lastName
                        }
                      }
                    """),
                  ),
                  builder: (QueryResult result, {fetchMore, refetch}) {
                    print(result);
                    print(graphQLConfig.client);
                    if (result.hasException) {
                      if (result.exception?.graphqlErrors != null) {
                        return Text(result
                            .exception!.graphqlErrors.first.message
                            .toString());
                      } else {
                        return Text(result.exception.toString());
                      }
                    }

                    if (result.isLoading) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    if (box1.get("meId") == null ||
                        box1.get("meId") != result.data!["me"]["id"]) {
                      box1.put("meId", result.data!["me"]["id"]);
                      reloadList();
                    }
                    if (itemList.isEmpty) {
                      reloadList();
                    }

                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          result.data!["me"]["firstName"],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 5.h,
                          ),
                        ),
                        Text(
                          result.data!["me"]["lastName"],
                          style: TextStyle(
                            fontSize: 2.h,
                          ),
                        )
                      ],
                    );
                  },
                ),
                SizedBox(
                  height: 15.sp,
                )
              ],
            )),
          ),
          Expanded(
            flex: FlexFit.loose.index,
            child: Container(
              margin: EdgeInsets.fromLTRB(5.w, 0, 5.w, 5.w),
              child: ListView.builder(
                  itemCount: itemList.length,
                  itemBuilder: (context, index) {
                    return ItemCard(
                      itemList[index].name,
                      description: itemList[index].description,
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> loadItems(String? cursor) async {
    final id = box1.get("meId");

    GraphQLClient _client = graphQLConfig.clientToQuery();
    Map<String, dynamic> variable = {};
    if (cursor == null || cursor.isEmpty) {
      variable = {"id": id};
    } else {
      variable = {"id": id, "cursor": cursor};
    }

    QueryResult result = await _client.query(QueryOptions(
        document: gql("""query GetItems(\$id: ID!, \$cursor: String) {
                          node (id: \$id) {
                              id
                              ...on Person{
                                  id
                                  items(first: 10, after:\$cursor){
                                      edges{
                                          node {
                                              id
                                              ... on Item{
                                                  id
                                                  name
                                                  description
                                              }
                                          }
                                      }
                                      pageInfo {
                                          hasNextPage
                                          endCursor
                                      }
                                  }
                              }
                          }
                      }
                      """), variables: variable));
    if (result.hasException) {
      print(result);
      return null;
    } else {
      var items = result.data?["node"]["items"]["edges"];
      var newItems = <Item>[];
      newItems.addAll(itemList);
      for (var item in items) {
        item = item['node'];
        var newItem =
            Item().setItem(item['name'], item['description'], item['id']);
        newItems.add(newItem);
      }
      final pageInfo = result.data?["node"]["items"]["pageInfo"];
      resetList(newItems);
      if (pageInfo["hasNextPage"]) {
        loadItems(pageInfo["endCursor"]);
      }
      return null;
    }
  }
}
