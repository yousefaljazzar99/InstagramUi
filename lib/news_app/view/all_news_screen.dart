import 'package:cached_network_image/cached_network_image.dart';
import 'package:first/instegram/model/dummyData.dart';
import 'package:first/news_app/widget/news_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllNewsScreen extends StatelessWidget {
  Function function;
  AllNewsScreen(this.function);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: news.length,
        itemBuilder: (context, index) {
          return NewsWidget(news[index], function);
        });
  }
}
