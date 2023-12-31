//import 'package:chat_app_practice_1/chat.dart';
//import 'package:chat_app_practice_1/constant.dart';
//import 'package:chat_app_practice_1/style.dart';
import 'package:flutter/material.dart';
import 'package:unifamm/chat.dart';
import 'package:unifamm/constant.dart';
import 'package:unifamm/main2.dart';
import 'package:unifamm/pages/home_page.dart';
import 'package:unifamm/style.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5b61b9),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 30, left: 40),
            height: 220,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PrimaryText(
                  text: 'Сообщество',
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
                SizedBox(height: 25),
                SizedBox(
                  height: 60,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: avatarList.length,
                    itemBuilder: (context, index) =>
                        Avatar(avatarUrl: avatarList[index]['avatar']!),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30, left: 20, right: 20),
            height: MediaQuery.of(context).size.height - 220,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: ListView.builder(
              itemCount: userList.length,
              itemBuilder: (context, index) => chatElement(
                  userList[index]['avatar']!,
                  context,
                  userList[index]['name']!,
                  userList[index]['message']!,
                  userList[index]['time']!),
            ),
          ),
          const SizedBox(
            height: 290,
          ),
        ],
      ),
    );
  }

  Widget chatElement(String avatarUrl, BuildContext context, String name,
      String message, String time) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      child: ListTile(
        onTap: () => {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ChatScreen()))
        },
        leading: Avatar(avatarUrl: avatarUrl),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PrimaryText(text: name, fontSize: 18),
            PrimaryText(text: time, color: Colors.grey, fontSize: 14),
          ],
        ),
        subtitle: PrimaryText(
            text: message,
            color: Colors.grey,
            fontSize: 14,
            overflow: TextOverflow.ellipsis),
      ),
    );
  }
}
