import 'package:first/instegram/View/new_post.dart';
import 'package:first/instegram/Widget/Post_widget.dart';
import 'package:first/instegram/Widget/Story_Widget.dart';
import 'package:first/instegram/model/dummyData.dart';
import 'package:flutter/material.dart';

import 'land_scabe.dart';

class instegramUi extends StatelessWidget {
  final topBar = AppBar(
    iconTheme: IconThemeData(color: Colors.black),
    backgroundColor: Colors.white,
    centerTitle: true,
    elevation: 1.0,
    // leading: const Icon(
    //   Icons.camera_alt,
    //   color: Colors.black,
    // ),
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
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NewPost()),
          );
          // AppRouter.NavigateToWidget(NewPost());
        },
        child: Icon(Icons.add),
      ),
      drawer: orientation == Orientation.landscape
          ? null
          : Drawer(
              //////////////////////
              child: Column(
                children: const [
                  UserAccountsDrawerHeader(
                      currentAccountPicture: CircleAvatar(
                        //  child: Text('o'),
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1658242356534-9935f4e9aaed?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
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
              ///////////////////
            ),
      appBar: topBar,
      body: orientation == Orientation.landscape
          ? CustomLandScape()
          : Column(children: [
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

                      //////////////////////////
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
