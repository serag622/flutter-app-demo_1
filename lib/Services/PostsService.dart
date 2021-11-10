import 'package:dio/dio.dart';
import 'package:app_2/Models/post.dart';

class PostsService {
  String baseUrl = "https://jsonplaceholder.typicode.com/posts";

  Future<List<Welcome>> getPosts() async {
    List<Welcome> posts = [];
    Response res = await Dio().get("$baseUrl");
    var data = res.data;
    data.forEach((p) {
      Welcome post = Welcome.fromJson(p);
      posts.add(post);
    });

    return posts;
  }
}
