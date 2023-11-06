import 'package:flutter_boilerplate/services/api_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList posts = [].obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    getPosts();
    super.onInit();
  }

  getPosts() async {
    isLoading.value = true;
    var response = await ApiService.instance.getPosts();
    posts.value = response;
    isLoading.value = false;
  }

  refreshPosts() async {
    isLoading.value = true;
    var response = await ApiService.instance.getPosts();
    if (response.isNotEmpty) {
      posts.clear();
      posts.value = response;
    }
    isLoading.value = false;
  }
}
