import 'package:first/instegram/model/post.dart';
import 'package:first/instegram/model/user.dart';

class PostsResponse {
  User? user;
  Post? post;
  PostsResponse(this.user, this.post);
  PostsResponse.fromJson(Map<String, dynamic> data) {
    user = User.fromJson(data['user']);
    post = Post.fromJson(data['post']);
  }
}
