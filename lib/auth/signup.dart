import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../core/app_router.dart';

class SignUpScreen extends StatelessWidget {
  final String role; // To differentiate between Parent and Sitter

  SignUpScreen({required this.role});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 24.sp),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          '$role Sign Up',
          style: TextStyle(fontSize: 24.sp), 
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
              Center(
                child: Text(
                  'Already have an account? ',
                  style: TextStyle(fontSize: 14.sp), 
                ),
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(Routes.login, arguments: role);
                  },
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.blue),  
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  labelStyle: TextStyle(fontSize: 16.sp),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(fontSize: 16.sp),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(fontSize: 16.sp),
                  border: OutlineInputBorder(),
                  suffixIcon:
                      Icon(Icons.visibility, size: 20.sp), 
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  labelStyle: TextStyle(fontSize: 16.sp),
                  border: OutlineInputBorder(),
                  suffixIcon:
                      Icon(Icons.visibility, size: 20.sp), 
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
                      style: TextStyle(fontSize: 12.sp), 
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[300],
                    minimumSize: Size(300.w, 50.h), 
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(30.r), 
                    ),
                  ),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 18.sp), 
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
