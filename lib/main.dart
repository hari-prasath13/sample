import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: (context, child) {
        return MaterialApp(
          home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text('Scrollable Containers'),
            ),
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 21.h),
                child: ListView(
                  children: List.generate(10, (index) {
                    return Column(
                      children: [
                        Container(
                          height: 100.h, // Adjust height as needed
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5), // Shadow color
                                spreadRadius: 4.r, // Spread radius
                                blurRadius: 6.r, // Blur radius
                                offset: Offset(0, 2.h), // Offset in the x and y direction
                              ),
                            ],
                            border: Border.all(color: Colors.transparent),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Center(
                            child: Text('Container ${index + 1}'),
                          ),
                        ),
                        SizedBox(height: 20.h),
                      ],
                    );
                  }),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}