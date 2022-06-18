import 'package:timeago/timeago.dart' as timeago;

class MessageModel {
  var message;
  var messagePartner;
  var sendtime;
  var sender;
  var sendByMe;
  var id;

  MessageModel({
    required this.message,
    required this.messagePartner,
    required this.sendtime,
    required this.sender,
    required this.sendByMe,
    required this.id
  });



  MessageModel.fromJson(Map<String, dynamic> data,String meID, String meName, String himName){
    data = data["node"];
    message = data['message'];
    id = data['id'];
    if (data["sender"]["id"]==meID){
      sender = meName;
      sendByMe = true;
    } else{
      sender = himName;
      sendByMe = false;
    }
    messagePartner = himName;

    timeago.setLocaleMessages("de", timeago.DeMessages());
    final difference = timeago.format(
        DateTime.parse(data["timestamp"]),
        locale: "de");
    sendtime = difference.toString();
  }



}

class MessageList {
  List<MessageModel> messageList = [];
  String recipientID = "";

  MessageList.allMessagesFromJson(Map<String, dynamic> json, String meID, List<MessageModel> existingList){
    var messages = json["node"]["messages"]["edges"];
    var newMessages = <MessageModel>[];
    newMessages.addAll(existingList);
    var meName;
    var himName;

    for(var participant in json["node"]["participants"]){
      if(participant["id"]==meID){
        meName= participant["firstName"].toString() + " " + participant["lastName"].toString();
      }else{
        recipientID = participant["id"];
        himName= participant["firstName"].toString() + " " + participant["lastName"].toString();
      }
    }

    for (var message in messages) {
      var newConversation = MessageModel.fromJson(message, meID, meName, himName);
      newMessages.add(newConversation);
    }
    messageList=newMessages;
  }

}