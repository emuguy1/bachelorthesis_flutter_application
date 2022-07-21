import 'package:de_num42_sharing/data/model/itemModel.dart';
import 'package:de_num42_sharing/main.dart';
import 'package:de_num42_sharing/util/GraphQLQueries.dart';
import 'package:de_num42_sharing/widget/itemCard.dart';
import 'package:de_num42_sharing/widget/topBar2.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:sizer/sizer.dart';
import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite_common/sqlite_api.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

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
  var itemList = <ItemModel>[];
  var itemDBList = <ItemModel>[];
  var listfromDB= <ItemModel>[];

  reloadList() {
    id = box1.get("meId");
    loadItems("");
    dbListLoaded(items());
  }

  dbListLoaded(list) {
    setState((){
      listfromDB=list;
    });
  }
  loadedList() {
    setState(() {
      itemList = itemDBList;
    });
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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 5.h,
          ),
          Query(
            options: QueryOptions(
              document: gql(meQuery),
            ),
            builder: (QueryResult result, {fetchMore, refetch}) {
              if (result.hasException) {
                if (result.exception?.graphqlErrors != null) {
                  return Text(
                      result.exception!.graphqlErrors.first.message.toString());
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

              return Container(
                margin: EdgeInsets.fromLTRB(5.w, 0, 5.w, 0),
                child:Column(
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
              ),);
            },
          ),
          SizedBox(
            height: 15.sp,
          ),
          Expanded(
            flex: FlexFit.loose.index,
            child: Container(
              margin: EdgeInsets.fromLTRB(5.w, 0, 5.w, 5.w),
              child: ListView.builder(
                  itemCount: itemList.length,
                  itemBuilder: (context, index) {
                    return ItemCard(itemList[index]);
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
        document: gql(getItemsQuery), variables: variable));

    if (result.hasException || result.data == null) {
      print(result);
      return null;
    } else {
      var newItems = ItemList.allItemsFromJson(result.data!,itemList);
      insertItems(newItems.itemList);
      resetList(newItems.itemList);
      final pageInfo = result.data?["node"]["items"]["pageInfo"];
      if (pageInfo["hasNextPage"]) {
        loadItems(pageInfo["endCursor"]);
      }
      return null;
    }
  }

  //Database Stuff
  void insertItems(List<ItemModel> items) {
    for (var item in items){
      insertItem(item);
    }
  }

  // Define a function that inserts items into the database
  Future<void> insertItem(ItemModel item) async {
    // Get a reference to the database.
    // Insert the Item into the correct table. You might also specify the
    // `conflictAlgorithm` to use in case the same dog is inserted twice.
    //
    // In this case, replace any previous data.
    await daba.insert(
      'items',
      item.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // A method that retrieves all the items from the dogs table.
  Future<List<ItemModel>> items() async {
    // Get a reference to the database.

    // Query the table for all The Dogs.
    final List<Map<String, dynamic>> maps = await daba.query('items');

    // Convert the List<Map<String, dynamic> into a List<Item>.
    var items = List.generate(maps.length, (i) {
      return ItemModel(
        itemId: maps[i]['itemId'],
        name: maps[i]['name'],
        description: maps[i]['description'],
      );
    });

    itemDBList = items;
    loadedList();
    resetList(items);

    return items;
  }

  Future<void> updateItem(ItemModel item) async {

    // Update the given Item.
    await daba.update(
      'items',
      item.toMap(),
      // Ensure that the Item has a matching id.
      where: 'itemId = ?',
      // Pass the Item's id as a whereArg to prevent SQL injection.
      whereArgs: [item.itemId],
    );
  }

  Future<void> deleteItem(int id) async {
    // Remove the Item from the database.
    await daba.delete(
      'items',
      // Use a `where` clause to delete a specific dog.
      where: 'itemId = ?',
      // Pass the Item's id as a whereArg to prevent SQL injection.
      whereArgs: [id],
    );
  }
}
