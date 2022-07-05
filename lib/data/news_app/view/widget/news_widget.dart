import 'package:cached_network_image/cached_network_image.dart';
import 'package:first/data/new_model.dart';
import 'package:first/model/dummyData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  NewsModel newsModel;
  Function fun;

  NewsWidget(this.newsModel, this.fun);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
      child: Row(children: [
        SizedBox(
            height: 100,
            width: 100,
            child: CachedNetworkImage(
                // progressIndicatorBuilder: ,
                fit: BoxFit.cover,
                errorWidget: (c, x, y) {
                  return Image.asset('assets/image/not_found.png');
                },
                imageUrl: newsModel.urlToImage ?? '')),
        const SizedBox(
          width: 5,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              newsModel.title ?? 'not defined',
              style: TextStyle(fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              newsModel.description ?? 'not defined',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              width: 5,
            ),
            Row(
              children: [
                Expanded(
                    child: Text(
                  newsModel.author ?? 'not defind',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                      fontSize: 12),
                )),
                IconButton(
                    onPressed: () {
                      fun(newsModel);
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: newsModel.isLike ? Colors.red : Colors.grey,
                    ))
              ],
            )
          ],
        )),
      ]),
    );
  }
}
