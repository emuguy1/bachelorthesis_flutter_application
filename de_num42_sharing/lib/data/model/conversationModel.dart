import 'package:timeago/timeago.dart' as timeago;

class ConversationModel{
  var conversationPartnerName;
  var lastMessage;
  var dateString;
  var conversationID;

  ConversationModel({
    required this.conversationPartnerName,
    required this.lastMessage,
    required this.dateString,
    required this.conversationID
  });

  ConversationModel.fromJson(Map<String, dynamic> data,String meID){
    data = data["node"];
    var conversationPartnerNameString="";
    for(var person in data['participants']) {
      if (person["id"] != meID) {
        conversationPartnerNameString = person["firstName"] + " " + person["lastName"];
      }
    }
    timeago.setLocaleMessages("de", timeago.DeMessages());
    final difference = timeago.format(
        DateTime.parse(data["lastMessageAt"]),
        locale: "de");

    conversationPartnerName= conversationPartnerNameString;
    lastMessage = data['lastMessage'];
    dateString = difference.toString();
    conversationID = data['id'];
  }

}

class ConversationList {
  List<ConversationModel> conversationlist = [];

  ConversationList.allConversationsFromJson(Map<String, dynamic> json, String meID, List<ConversationModel> existingList){

    var conversations = json["node"]["conversations"]["edges"];
    var newConversations = <ConversationModel>[];
    newConversations.addAll(existingList);

    for (var conversation in conversations) {
      var newConversation = ConversationModel.fromJson(conversation, meID);
      newConversations.add(newConversation);
    }
    conversationlist=newConversations;
  }

}