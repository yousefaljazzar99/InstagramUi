import 'package:first/data/new_model.dart';
import 'package:first/data/news_app/view/screens/all_news_screen.dart';
import 'package:first/data/news_app/view/screens/favourite_Screen.dart';
import 'package:first/model/dummyData.dart';
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
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'App News',
          ),
          backgroundColor: Colors.red,
          bottom: const TabBar(tabs: [
            Tab(
              text: 'All',
            ),
            Tab(
              text: 'FAVOURITE',
            ),
          ]),
          centerTitle: true,
        ),
        body: TabBarView(children: [
          AllNewsScreen(likeNews),
          FavouriteScreen(likeNews),
        ]),
      ),
    );
  }
}
