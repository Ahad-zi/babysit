import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../core/app_router.dart';

class LoginScreen extends StatelessWidget {
  final String role;

  LoginScreen({required this.role});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 24.sp),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          '$role Sign In',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(Routes.login, arguments: 'Parent');
                    },
                    child: Text(
                      'Parent',
                      style: TextStyle(
                        fontSize: 18.sp, 
                        color: role == 'Parent' ? Colors.black : Colors.grey,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(Routes.login, arguments: 'Sitter');
                    },
                    child: Text(
                      'Sitter',
                      style: TextStyle(
                        fontSize: 18.sp, 
                        color: role == 'Sitter' ? Colors.black : Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email Address',
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
              Center(
                child: GestureDetector(
                  onTap: () {
                  },
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.blue), 
                  ),
                ),
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
                    'Sign In',
                    style: TextStyle(fontSize: 18.sp), 
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Center(
                  child: Text('Or',
                      style: TextStyle(fontSize: 14.sp))), 
              SizedBox(height: 10.h),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {
                        },
                        icon: Icon(Icons.g_translate,
                            size: 20.sp), 
                        label: Text('Sign In with Google',
                            style: TextStyle(
                                fontSize: 14.sp)), 
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[300],
                          minimumSize: Size(150.w, 50.h), 
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {
                        },
                        icon:
                            Icon(Icons.apple, size: 20.sp), 
                        label: Text('Sign In with Apple',
                            style: TextStyle(
                                fontSize: 14.sp)), 
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[300],
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
