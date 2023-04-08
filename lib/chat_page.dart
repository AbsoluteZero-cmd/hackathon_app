import 'package:flutter/material.dart';
import 'package:hackathon_app/chat_item_page.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  Widget _chatItem() {
    return Container(

    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: Icon(Icons.chat),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 42, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Чаты',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w800
              ),
            ),
            SizedBox(
              width: width - 2 * 16,
              height: (height - 2 * 42) * 0.85,
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChatItemPage()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 16),
                      padding: EdgeInsets.all(16),
                      color: Colors.grey[100],
                      child: Row(
                        children: [
                          Icon(Icons.person, color: Colors.blue, size: 36),
                          Text(
                            'Ментор по информатике',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.blue
                            ),
                          ),
                          Spacer(),
                          Text('04.08.23', style: TextStyle(color: Colors.grey[500], fontWeight: FontWeight.w400),)
                        ],
                      ),
                    ),
                  );
                },
              )
            ),
          ],
        ),
      ),
    );
  }


}
