import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_adhd/core/colors.dart';
import 'package:graduation_adhd/core/textutils.dart';
import 'package:graduation_adhd/features/presentation/screens/add_child.dart';

class MyChildrenScreen extends StatelessWidget {
  const MyChildrenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 200.h,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.lightBlueAccent, Colors.white],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Addchild()));
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 16.w),
                            alignment: Alignment.center,
                            height: 20.h,
                            width: 20.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.r)),
                            child: Icon(Icons.add),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'أطفالك:',
                          style: Textutils.titlebold30,
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 160.h,
                    left: 0,
                    right:0,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24.r),
                              topRight: Radius.circular(24.r))),
                      child: GridView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                         gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        childAspectRatio: .7
                      ),
                      itemCount: 2,
                          itemBuilder: (context, index) => Container(
                            height: 180.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              color: MyColors.appbarColor,
                              borderRadius: BorderRadius.circular(24.r)
                            ),
                            child:Padding(
                              padding:  EdgeInsets.only(top: 12.h,bottom: 45.h,right: 8.w,left: 8.w),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset('assets/images/achievement.png',height: 25.h,),
                                      SizedBox(width: 5.w,),
                                      Text('0')
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 45.r,
                                        backgroundImage: AssetImage('assets/images/image.jpeg'),
                                      ),
                                      SizedBox(height: 10.h,),
                                      Text('وليد',style: Textutils.title22,),
                                    ],
                                  )
                                ],
                              ),
                            ) ,
                          )),
                    ),
                  )],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
