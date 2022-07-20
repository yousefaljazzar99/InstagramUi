import 'package:cached_network_image/cached_network_image.dart';
import 'package:first/instegram/model/dummyData.dart';
import 'package:first/news_app/widget/news_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  Function function;
  FavouriteScreen(this.function);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: news.where((element) => element.isLike).length,
        itemBuilder: (context, index) {
          return NewsWidget(
              news.where((element) => element.isLike).toList()[index],
              function);
        });
  }
}
