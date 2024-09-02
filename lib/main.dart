import '../core/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), //تعديل المقاسات اعتمادا على مرجع مثلا ايفون  
      minTextAdapt: true, //تحديث قياسات النص تلقائيا 
      splitScreenMode: true, 
      builder: (context, child) {
        return MaterialApp(
          title: 'Baby Care App',
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.splash,
          onGenerateRoute: Routes.generateRoute,
          builder: (context, widget) {
            ScreenUtil.init(context);
            return widget!;
          },
        );
      },
    );
  }
}
