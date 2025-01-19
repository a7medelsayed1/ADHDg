import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_adhd/core/colors.dart';
import 'package:graduation_adhd/features/presentation/screens/my_children.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 8.h),
      height: 70.h,
      width: 160.w,
      decoration: BoxDecoration(
        color: MyColors.navbarcolor,
        borderRadius: BorderRadius.circular(16.r)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){}, icon:const Icon(Icons.person,size: 50,color: MyColors.navbariconcolor,)),
          IconButton(onPressed: ()=>Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>MyChildrenScreen())), icon:const Icon(Icons.grid_view_rounded,size: 50,color: MyColors.navbariconcolor,))
    
        ],
      ),
    );
  }
}