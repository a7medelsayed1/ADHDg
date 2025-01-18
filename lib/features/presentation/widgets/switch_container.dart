import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_adhd/core/textutils.dart';

class SwitchContainer extends StatelessWidget {
  const SwitchContainer({
    super.key,  required this.text,required this.ontap,required this.color
  });
  final String text;
  final Function()? ontap;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        width: (MediaQuery.of(context).size.width - 50)/2 -8,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16.r)
      
        ),
        child: Text(text,style: Textutils.title18,),
      ),
    );
  }
}