import 'package:first/Widget/Post_widget.dart';
import 'package:first/Widget/Story_Widget.dart';
import 'package:first/model/dummyData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class instegramUi extends StatelessWidget {
  final topBar = AppBar(
    backgroundColor: Colors.white,
    centerTitle: true,
    elevation: 1.0,
    leading: const Icon(
      Icons.camera_alt,
      color: Colors.black,
    ),
    title: SizedBox(
        height: 35.0, child: Image.asset("assets/image/insta_logo.png")),
    actions: const <Widget>[
      Padding(
        padding: EdgeInsets.only(right: 12.0),
        child: Icon(
          Icons.send,
          color: Colors.black,
        ),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: Column(children: [
        SizedBox(
          height: 100,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: posts.length,
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0) {
                      return CircleAvatar(
                        backgroundImage:
                            NetworkImage(posts[index].user?.image ?? ''),
                        radius: 30,
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.add),
                      );
                    }
                    return Story_Widget(posts[index].user!);
                  },
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (BuildContext context, int index) {
              return Post_Widget(posts[index].user!, posts[index].post!);
            },
            //   children: posts.map((e) {
            // return PostFeed(e.user!, e.post!);
            // }).toList(),
          ),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.subscriptions,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
