class ItemModel{
  late final String name;
  late final String description;
  late final String itemId;

  ItemModel({
    required this.name,
    required this.description,
    required this.itemId
  });

  ItemModel.fromJson(Map<String, dynamic> item){
    item = item["node"]??"";

    name= item['name']??"";
    description = item['description']??"";
    itemId = item['id']??"";
  }
  // Convert a Item into a Map. The keys must correspond to the names of the
  // columns in the database.
  Map<String, dynamic> toMap() {
    return {
      'itemId': itemId,
      'name': name,
      'description': description,
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'ItemDatabaseModel{id: $itemId, name: $name, age: $description}';
  }

}

class ItemList {
  List<ItemModel> itemList = [];

  ItemList.allItemsFromJson(Map<String, dynamic> json, List<ItemModel> existingList){

    var items = json["node"]["items"]["edges"];
    var newConversations = <ItemModel>[];
    newConversations.addAll(existingList);

    for (var item in items) {
      var newConversation = ItemModel.fromJson(item);
      newConversations.add(newConversation);
    }
    itemList=newConversations;
  }

}