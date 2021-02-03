import 'package:final_project_chat_app/Screens/CallsPage.dart';
import 'package:final_project_chat_app/Screens/CameraPage.dart';
import 'package:final_project_chat_app/Screens/ChatsPage.dart';
import 'package:final_project_chat_app/Screens/StatusPage.dart';
import 'package:flutter/material.dart';

class ChatAppMain extends StatefulWidget {
  @override
  _ChatAppMainState createState() => _ChatAppMainState();
}

class _ChatAppMainState extends State<ChatAppMain>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  bool ShowMessageButton = true;
  bool ShowWriteButton = true;

  void initState() {
    tabController = TabController(initialIndex: 1, length: 4, vsync: this);
    tabController.addListener(() {
      ShowMessageButton = tabController.index != 0;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Messenger App"),
        bottom: TabBar(
          controller: tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "Chats",
            ),
            Tab(
              text: "Status",
            ),
            Tab(
              text: "Calls",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          CameraPage(),
          ChatsPage(),
          StatusPage(),
          CallsPage(),
        ],
      ),
      floatingActionButton: ShowMessageButton
          ? FloatingActionButton(
              child: Icon(Icons.message_rounded),
              onPressed: () {},
            )
          : null,
    );
  }
}
