import 'package:first/instegram/model/dummyData.dart';
import 'package:first/news_app/data/new_model.dart';
import 'package:first/news_app/view/all_news_screen.dart';
import 'package:first/news_app/view/contact.dart';
import 'package:first/news_app/view/favourite_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  likeNews(NewsModel newsModel) {
    int index = news.indexOf(newsModel);
    news[index].isLike = !news[index].isLike;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'App News',
          ),
          backgroundColor: Colors.red,
          bottom: TabBar(tabs: [
            Tab(
              text: 'All',
            ),
            Tab(
              text: 'FAVOURITE',
            ),
            Tab(
              text: 'Cnontact us',
            ),
          ]),
          centerTitle: true,
        ),
        body: TabBarView(children: [
          AllNewsScreen(likeNews),
          FavouriteScreen(likeNews),
          ContactUs(),
        ]),
      ),
    );
  }
}
