class ItemModel{
  var name;
  var description;
  var itemId;

  ItemModel({
    required this.name,
    required this.description,
    required this.itemId
  });

  ItemModel.fromJson(Map<String, dynamic> item){
    item = item["node"];

    name= item['name'];
    description = item['description'];
    itemId = item['id'];
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