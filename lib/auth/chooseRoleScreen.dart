import '../core/app_router.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ChooseRoleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/rainbow.png',
                width: 200.w,
                height: 100.h,
              ),
              SizedBox(height: 20.h),
              Text(
                'On-Demand Childcare in\nYour Neighborhood',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 40.h),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(Routes.signUp, arguments: 'Parent');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[300],
                  minimumSize: Size(300.w, 50.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                ),
                child: Text(
                  'Parent',
                  style: TextStyle(fontSize: 18.sp),
                ),
              ),
              SizedBox(height: 20.h),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(Routes.signUp, arguments: 'Sitter');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[300],
                  minimumSize: Size(300.w, 50.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                ),
                child: Text(
                  'I’m a sitter',
                  style: TextStyle(fontSize: 18.sp),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
