import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_adhd/core/colors.dart';
import 'package:graduation_adhd/core/textutils.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class BarChartContainer extends StatelessWidget {
  const BarChartContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.w),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'الواجبات الغير مكتمله',
                style: Textutils.title12,
              ),
              Text(
                'الواجبات المكتمله',
                style: Textutils.title12,
              ),
            ],
          ),
          LinearPercentIndicator(
            padding: EdgeInsets.symmetric(horizontal: 2.w),
            barRadius: Radius.circular(12.r),
            lineHeight: 10.h,
            backgroundColor: MyColors.lineprogressred,
            progressColor: MyColors.lineprogressgreen,
            percent: .6,
            center: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '40%',
                    style: Textutils.title10,
                  ),
                  Text('60%', style: Textutils.title10),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
