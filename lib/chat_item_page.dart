import 'package:chatview/chatview.dart';
import 'package:flutter/material.dart';



class ChatItemPage extends StatefulWidget {
  const ChatItemPage({Key? key}) : super(key: key);

  @override
  State<ChatItemPage> createState() => _ChatItemPageState();
}

class _ChatItemPageState extends State<ChatItemPage> {
  late List<Message> messageList;

  late ChatController chatController;

  // void onSendTap(String message, ReplyMessage replyMessage, Message messageType){
  //   final message = Message(
  //     id: '3',
  //     message: "How are you",
  //     createdAt: DateTime.now(),
  //     sendBy: 'me',
  //     replyMessage: replyMessage,
  //     messageType: messageType,
  //   );
  //   chatController.addMessage(message);
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    messageList = [];

    chatController = ChatController(
      initialMessageList: messageList,
      scrollController: ScrollController(),
      chatUsers: [ChatUser(id: '2', name: 'Simform')],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatView(
        currentUser: ChatUser(id: '1', name: 'Flutter'),
        chatController: chatController,
        onSendTap: (message, replyMessage, messageType) {
        },
        chatViewState: ChatViewState.noData
      ),
    );
  }
}
