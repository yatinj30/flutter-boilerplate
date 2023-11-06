import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/models/post.dart';
import 'package:flutter_boilerplate/utils/api_constants.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiService {
  final dio = Dio();

  static final ApiService instance = ApiService._apiService();

  bool debug = true;

  ApiService._apiService() {
    dio.interceptors.add(PrettyDioLogger(
      requestHeader: debug,
      requestBody: debug,
      responseHeader: debug,
      compact: debug,
      request: debug,
      responseBody: debug,
    ));
  }

  //Change return type as per API response
  //Sometimes we need to pass parameters to API
  //Sometimes we need to expect a Response as return type
  //Modify as per your need
  Future<List<Post>> getPosts() async {
    try {
      String api = ApiRoutes.getPostURL;
      Response res = await dio.get(api);
      if (res.statusCode == 200) {
        List<Post> posts = [];
        res.data.forEach((v) {
          posts.add(Post.fromJson(v));
        });
        return posts;
      } else {
        debugPrint('===> ERROR : ${res.statusCode}');
        return [];
      }
    } catch (e) {
      debugPrint('===> ERROR : ${e.toString()}');
      return [];
    }
  }
}
