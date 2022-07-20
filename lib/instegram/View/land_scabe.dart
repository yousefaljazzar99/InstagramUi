import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widget/Post_widget.dart';
import '../Widget/Story_Widget.dart';
import '../model/dummyData.dart';

class CustomLandScape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  UserAccountsDrawerHeader(
                      currentAccountPicture: CircleAvatar(
                        //  child: Text('o'),
                        backgroundImage: NetworkImage(
                            'https://scontent.fgza9-1.fna.fbcdn.net/v/t39.30808-1/287712463_3206591236274690_3147253001728781126_n.jpg?stp=dst-jpg_p160x160&_nc_cat=108&ccb=1-7&_nc_sid=7206a8&_nc_ohc=1p5_tXl3GVsAX9Ruv_Q&_nc_ht=scontent.fgza9-1.fna&oh=00_AT-4_oGSN4tBPBeMdf0JTY5zshctono78wWhaVJIo_D1aA&oe=62C1BC1D'),
                      ),
                      accountName: Text('Yousef Aljazzar'),
                      accountEmail: Text('Yousef.n.aljazzar@gmail.com')),
                  ListTile(
                    subtitle: Text('Go to heme'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                  ),
                  ListTile(
                    subtitle: Text('Go to favorite'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    leading: Icon(Icons.favorite),
                    title: Text('Favorite'),
                  ),
                  ListTile(
                    subtitle: Text('Go to Profile'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    leading: Icon(Icons.person),
                    title: Text('Profile'),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  height: 80,
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
                                backgroundImage: NetworkImage(
                                    posts[index].user?.image ?? ''),
                                radius: 30,
                                backgroundColor: Colors.blue,
                                child: Icon(Icons.add),
                              );
                            }
                            return Story_Widget(posts[index].user!);
                          },
                        ),

                        //////////////////////////
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: posts.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Post_Widget(
                          posts[index].user!, posts[index].post!);
                    },
                    //   children: posts.map((e) {
                    // return PostFeed(e.user!, e.post!);
                    // }).toList(),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
