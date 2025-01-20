import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddHomework extends StatelessWidget {
  const AddHomework({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
     children: [
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           const Text('اسم الماده العلميه'),
           Container(
            alignment: Alignment.center,
            height: 70,
            width: 100,
           ),
         ],
       ),Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           const Text('اسم الماده العلميه'),
           Container(
           ),
         ],
       ),Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           const Text('اسم الماده العلميه'),
           Container(
           ),
         ],
       ),Row(
         children: [
           const Text('اسم الماده العلميه'),
           const Spacer(),
           Container(
           ),
           SizedBox(width: 20.w,),
           Container(
           ),
         ],
       ),
       const SizedBox(height: 500,)
     ],
            );
  }
}