import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation_adhd/core/colors.dart';
import 'package:graduation_adhd/core/textutils.dart';
import 'package:graduation_adhd/features/presentation/screens/test.dart';
import 'package:graduation_adhd/features/presentation/widgets/bar_chart_container.dart';
import 'package:graduation_adhd/features/presentation/widgets/custom_drop_down.dart';
import 'package:timeline_tile/timeline_tile.dart';

class PreviousHomework extends StatefulWidget {
  const PreviousHomework({super.key});

  @override
  State<PreviousHomework> createState() => _PreviousHomeworkState();
}

class _PreviousHomeworkState extends State<PreviousHomework> {
  String? selectedValue;

  List<String> months = [
    'يناير',
    "فبراير",
    "مارس",
    "ابريل",
    "مايو",
    "يونيو",
    "يوليو",
    "اغسطس",
    "سبتمبر",
    "اكتوبر",
    "نوفمبر",
    "ديسمبر"
  ];
  List<String> weaks = ['الاسبوع 1', 'الاسبوع 2', 'الاسبوع 3', 'الاسبوع 4'];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BarChartContainer(),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 8.w),
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              height: 18.h,
              width: 90.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: MyColors.lightgrey),
              child:
                  CustomDropDown(selectedValue: selectedValue, values: months),
            ),
            SizedBox(
              height: 18.h,
              width: 230.w,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: weaks.length,
                  itemBuilder: (context, index) => GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 8.w),
                          height: 18.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              border: Border.all(color: Colors.black26)),
                          child: Text(
                            weaks[index],
                            style: Textutils.title10
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 8.h),
          height: 250,
          child: ListView.builder(
              itemCount: 7*2-2,
              itemBuilder: (context, index) => TimelineTile(
                    indicatorStyle: const IndicatorStyle(
                      width: 10,
                    ),
                    afterLineStyle: const LineStyle(thickness: 2),
                    beforeLineStyle: const LineStyle(thickness: 2),
                    alignment: TimelineAlign.manual,
                    lineXY: 0.2,
                    isFirst: index == 0 ? true : false,
                    isLast: index==6*2-1?true:false,
                    startChild: index % 2 == 0
                        ? const Column(
                            children: [
                               Text('الاحد',style: Textutils.title18,),
                              Text('20/10',style: Textutils.title12,),
                            ],
                          )
                        : const SizedBox(),
                    endChild: Row(
                      children: [
                        SizedBox(width: 5.w,),
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 16),
                              height: 54.h,
                              width: 250.w,
                              decoration: BoxDecoration(
                                  color: MyColors.lineprogressgreen,
                                  borderRadius: BorderRadius.circular(30.r)),
                                  child: Padding(
                                    padding:  EdgeInsets.only(right: 8.w),
                                    child: Row(children: [
                                      SvgPicture.asset('assets/images/microscope.svg',height: 35,),
                                      SizedBox(width: 10.w,),
                                      Column(children: [
                                        Transform.translate(
                                          offset: Offset(0, 8),
                                          child: Text('رياضيات',style: Textutils.title18,)),
                                        Text('نط الحبل',style: Textutils.title12.copyWith(fontSize: 14),),
                                        Text('🕐 20د',style: Textutils.title12,),
                                      ],)
                                    ],),
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
        ),
        Divider(
          indent: 20.w,
          endIndent: 20.w,
        ),
        Text(
          'مخطط الانشطه:',
          style: Textutils.title18.copyWith(fontSize: 16),
        ),
         SizedBox(height: 300,
        )
      ],
    );
  }
}

