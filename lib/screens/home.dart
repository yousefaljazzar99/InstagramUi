import 'package:first/Widget/Post_widget.dart';
import 'package:first/model/dummyData.dart';
import 'package:flutter/material.dart';

class HomeSecreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Expanded(
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
    );
  }
}
