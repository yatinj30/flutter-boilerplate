import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostInfo extends StatelessWidget {
  const PostInfo({
    super.key,
    required this.title,
    required this.body,
    required this.backgroundColor,
  });

  final String title;
  final String body;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 5.h,
      ),
      child: ListTile(
        title: Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w800,
          ),
        ),
        subtitle: Text(
          body,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        tileColor: backgroundColor,
        shape: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
    );
  }
}
