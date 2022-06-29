import 'package:first/model/post.dart';
import 'package:first/model/user.dart';
import 'package:first/model/dummyData.dart';

class PostsResponse {
  User? user;
  Post? post;
  PostsResponse.fromJson(Map<String, dynamic> data) {
    user = User.fromJson(data['user']);
    post = Post.fromJson(data['post']);
  }
}
