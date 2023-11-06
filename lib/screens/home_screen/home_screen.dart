import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/screens/home_screen/home_cnt.dart';
import 'package:flutter_boilerplate/screens/home_screen/widgets/post_info.dart';
import 'package:flutter_boilerplate/utils/app_constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var homeCnt = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('post'.tr),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              homeCnt.refreshPosts();
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            Obx(
              () => homeCnt.isLoading.value
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: homeCnt.posts.length,
                      itemBuilder: (context, index) {
                        return PostInfo(
                          title: homeCnt.posts[index].title,
                          body: homeCnt.posts[index].body,
                          backgroundColor: pastelColorPalettes[
                              Random().nextInt(pastelColorPalettes.length)],
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
