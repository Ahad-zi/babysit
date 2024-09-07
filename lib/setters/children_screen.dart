

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChildrenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'children',
          style: Theme.of(context).appBarTheme.titleTextStyle?.copyWith(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildChildItem(
              context,
              imageUrl: 'assets/child/child1.png',
              name: 'Ahmad',
              color: Colors.blueGrey[300],
            ),
            SizedBox(height: 10.h),
            _buildChildItem(
              context,
              imageUrl: 'assets/child/child2.png',
              name: 'Ahad',
              color: Colors.pinkAccent[100],
            ),
            Spacer(),
            Center(
              child: TextButton.icon(
                icon: Icon(Icons.add, color: Theme.of(context).primaryColor),
                label: Text(
                  'Add',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChildItem(BuildContext context,
      {required String imageUrl, required String name, required Color? color}) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30.r,
          backgroundImage: AssetImage(imageUrl),
        ),
        SizedBox(width: 10.w),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Text(
            name,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ],
    );
  }
}
