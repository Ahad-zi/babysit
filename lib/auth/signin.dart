import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  final String role;

  LoginScreen({required this.role});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 24.sp),
          onPressed: () => context.pop(),
        ),
        title: Text(
          '$role Sign In',
          style: TextStyle(fontSize: 24.sp, color: Theme.of(context).appBarTheme.titleTextStyle?.color), // Dynamic color
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      context.goNamed('login', queryParameters: {'role': 'Parent'}); // Updated navigation
                    },
                    child: Text(
                      'Parent',
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: role == 'Parent' ? Theme.of(context).textTheme.bodyMedium?.color : Theme.of(context).textTheme.bodySmall?.color, // Dynamic color
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.goNamed('login', queryParameters: {'role': 'Sitter'}); // Updated navigation
                    },
                    child: Text(
                      'Sitter',
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: role == 'Sitter' ? Theme.of(context).textTheme.bodyMedium?.color : Theme.of(context).textTheme.bodySmall?.color, // Dynamic color
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  labelStyle: TextStyle(fontSize: 16.sp, color: Theme.of(context).textTheme.bodyMedium?.color), // Dynamic color
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(fontSize: 16.sp, color: Theme.of(context).textTheme.bodyMedium?.color), // Dynamic color
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility, size: 20.sp, color: Theme.of(context).iconTheme.color), // Dynamic color
                ),
              ),
              SizedBox(height: 10.h),
              Center(
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: Theme.of(context).colorScheme.secondary), // Dynamic color
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor, // Dynamic color
                    minimumSize: Size(300.w, 50.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                  ),
                  child: Text(
                    'Sign In',
                    style: TextStyle(fontSize: 18.sp, color: Theme.of(context).colorScheme.onPrimary), // Dynamic text color
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Center(
                  child: Text('Or',
                      style: TextStyle(fontSize: 14.sp, color: Theme.of(context).textTheme.bodyMedium?.color))), // Dynamic color
              SizedBox(height: 10.h),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.g_translate, size: 20.sp, color: Theme.of(context).iconTheme.color), // Dynamic color
                        label: Text('Sign In with Google',
                            style: TextStyle(
                                fontSize: 14.sp, color: Theme.of(context).textTheme.bodyMedium?.color)), // Dynamic text color
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).secondaryHeaderColor, // Dynamic color
                          minimumSize: Size(150.w, 50.h),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.apple, size: 20.sp, color: Theme.of(context).iconTheme.color), // Dynamic color
                        label: Text('Sign In with Apple',
                            style: TextStyle(
                                fontSize: 14.sp, color: Theme.of(context).textTheme.bodyMedium?.color)), // Dynamic text color
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).secondaryHeaderColor, // Dynamic color
                          minimumSize: Size(150.w, 50.h),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
