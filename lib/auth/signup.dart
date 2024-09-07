
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatelessWidget {
  final String role; // To differentiate between Parent and Sitter

  SignUpScreen({required this.role});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 24.sp),
          onPressed: () => context.pop(),
        ),
        title: Text(
          '$role Sign Up',
          style: TextStyle(fontSize: 24.sp, color: Theme.of(context).appBarTheme.titleTextStyle?.color), // Dynamic color
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Center(
                child: Text(
                  'Already have an account? ',
                  style: TextStyle(fontSize: 14.sp, color: Theme.of(context).textTheme.bodyMedium?.color), // Dynamic color
                ),
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    context.goNamed('login', queryParameters: {'role': 'Parent'}); // Updated navigation
                  },
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Theme.of(context).colorScheme.secondary, // Dynamic color
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  labelStyle: TextStyle(fontSize: 16.sp, color: Theme.of(context).textTheme.bodyMedium?.color), // Dynamic color
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
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
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  labelStyle: TextStyle(fontSize: 16.sp, color: Theme.of(context).textTheme.bodyMedium?.color), // Dynamic color
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility, size: 20.sp, color: Theme.of(context).iconTheme.color), // Dynamic color
                ),
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                  ),
                  Expanded(
                    child: Text(
                      'I agree to Terms of Use and Privacy Policy',
                      style: TextStyle(fontSize: 12.sp, color: Theme.of(context).textTheme.bodySmall?.color), // Dynamic color
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    context.goNamed('home'); // Updated navigation
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor, // Dynamic color
                    minimumSize: Size(300.w, 50.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                  ),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 18.sp, color: Theme.of(context).colorScheme.onPrimary), // Dynamic text color
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
