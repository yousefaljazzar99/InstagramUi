import 'package:first/model/post.dart';
import 'package:first/model/user.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Story_Widget extends StatelessWidget {
  @override
  //Post post;
  User user;
  Story_Widget(this.user);
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.red,
        backgroundImage: NetworkImage(user.image!),
      ),
    );
  }
}
