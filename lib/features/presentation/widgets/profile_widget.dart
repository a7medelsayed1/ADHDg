import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_adhd/core/textutils.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130.h,
      child: Padding(
        padding:  EdgeInsets.only(top: 50.h,right: 20.w,bottom: 10.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CircleAvatar(
              radius: 25.r,
              backgroundColor: Colors.black,
              child: Transform.translate(
                offset: Offset(18.w, 18.h),
                child: GestureDetector(
                  onTap: () {
                    
                  },
                  child: CircleAvatar(
                    radius: 8.r,
                    backgroundColor: Colors.white,
                    child: const Icon(Icons.edit,size: 16,),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10.w,),
            Transform.translate(
              offset:const Offset(0, -10),
              child: const Text('وليد',style: Textutils.titlebold30))
          ],
        ),
      ),
      );
  }
}