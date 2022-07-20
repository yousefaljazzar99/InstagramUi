import 'package:first/instegram/model/post.dart';
import 'package:first/instegram/model/user.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Post_Widget extends StatelessWidget {
  User user;
  Post post;
  Post_Widget(this.user, this.post);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding:
              const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  user.image ?? '',
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                user.name ?? '',
              ),
              const SizedBox(
                width: 5,
              ),
              const Icon(
                Icons.verified,
                color: Colors.blue,
                size: 18,
              ),
              const Spacer(),
              const Icon(Icons.more_horiz),
            ],
          ),
        ),
        Column(
          children: [
            Container(
              width: 400,
              height: 400,
              child: post.file == null
                  ? Image.network(
                      post.image ?? '',
                      fit: BoxFit.fill,
                    )
                  : Image.file(
                      post.file!,
                      fit: BoxFit.fill,
                    ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 30, top: 20, right: 20, bottom: 10),
              child: Row(
                children: [
                  Image.asset(
                    "assets/icon/heart.png",
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    "assets/icon/chat-bubble.png",
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    "assets/icon/send.png",
                    width: 24,
                    height: 24,
                  ),
                  Spacer(),
                  Image.asset(
                    "assets/icon/save-instagram.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 20, top: 20, right: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Liked by ",
                  ),
                  Text(
                    user.name ?? '',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " and ${post.noLikes} others",
                    style: TextStyle(),
                  ),
                ],
              ),
            ),
            Container(
              //width: double.infinity,
              padding: const EdgeInsets.only(
                  left: 20, top: 0, right: 20, bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                //   mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    user.name ?? '',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Text(
                      post.content ?? '',
                      maxLines: 4,
                    ),
                  ),
                ],
              ),
            ),
            /*Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      post.content ?? '',
                      maxLines: 3,
                    ),
                  ),
                ],
              ),
            ),*/
          ],
        ),
      ],
    );
  }
}
