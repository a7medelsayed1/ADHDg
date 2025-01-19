import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation_adhd/core/colors.dart';
import 'package:graduation_adhd/core/textutils.dart';
import 'package:graduation_adhd/features/presentation/widgets/bar_chart_container.dart';
import 'package:graduation_adhd/features/presentation/widgets/custom_drop_down.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../model/task_model.dart';

class PreviousHomework extends StatefulWidget {
  const PreviousHomework({super.key});

  @override
  State<PreviousHomework> createState() => _PreviousHomeworkState();
}

class _PreviousHomeworkState extends State<PreviousHomework> {
  String? selectedValue;
  int selectedIndex = 0;
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
  int i=0 ;
  @override
  // void initState() async {
  //   final counts = await countActivitiesByTitle('1');
  //   counts.forEach((title, count) {
  //     print('Activity: $title, Count:$count');
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchTasks(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          final tasks = snapshot.data!;
          final counts = countActivitiesByTitle('1');
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
                        borderRadius: BorderRadius.circular(12), color: MyColors.lightgrey),
                    child: CustomDropDown(selectedValue: selectedValue, values: months),
                  ),
                  SizedBox(
                    height: 18.h,
                    width: 230.w,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: weaks.length,
                        itemBuilder: (context, index) {
                          bool isSelected = selectedIndex == index;
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(left: 8.w),
                              height: 18.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                  color: isSelected ? MyColors.barchartYellow : Colors.transparent,
                                  borderRadius: BorderRadius.circular(12.r),
                                  border: Border.all(color: Colors.black26)),
                              child: Text(
                                weaks[index],
                                style: Textutils.title10.copyWith(fontWeight: FontWeight.bold),
                              ),
                            ),
                          );
                        }),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 8.h),
                height: 250,
                child: ListView.builder(
                    itemCount: tasks.length,
                    itemBuilder: (context, index)  {

                      return TimelineTile(
                          indicatorStyle: const IndicatorStyle(
                            width: 10,
                          ),
                          afterLineStyle: const LineStyle(thickness: 2),
                          beforeLineStyle: const LineStyle(thickness: 2),
                          alignment: TimelineAlign.manual,
                          lineXY: 0.2,
                          isFirst: index == 0 ? true : false,
                          isLast: index == 6 * 2 - 1 ? true : false,
                          startChild: index % 2 == 0
                              ? const Column(
                                  children: [
                                    Text(
                                      'الاحد',
                                      style: Textutils.title18,
                                    ),
                                    Text(
                                      '20/10',
                                      style: Textutils.title12,
                                    ),
                                  ],
                                )
                              : const SizedBox(),
                          endChild: Row(
                            children: [
                              SizedBox(
                                width: 5.w,
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 16, left: 16),
                                    width: 230.w,
                                    decoration: BoxDecoration(
                                        color: tasks[index].isCompleted? MyColors.lineprogressred:MyColors.lineprogressgreen,
                                        borderRadius: BorderRadius.circular(30.r)),
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 8.w),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            'assets/images/microscope.svg',
                                            height: 35,
                                          ),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          Column(
                                            children: [
                                              Transform.translate(
                                                  offset: const Offset(0, 5),
                                                  child: Text(
                                                    tasks[index].subject,
                                                    style: Textutils.title18,
                                                  )),
                                              Text(
                                                tasks[index].activity,
                                                style: Textutils.title12.copyWith(fontSize: 14),
                                              ),
                                               Text(
                                                '🕐 {${tasks[index].duration}',
                                                style: Textutils.title12,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );}),
              ),
              Divider(
                indent: 20.w,
                endIndent: 20.w,
              ),
              Text(
                'مخطط الانشطه:',
                style: Textutils.title18.copyWith(
                  fontSize: 16,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text("المواد العلمية"),
              ),
              SizedBox(
                height: 200.h,
                width: 230.w,
                child: BarChart(
                  BarChartData(
                    gridData: const FlGridData(show: false),
                    alignment: BarChartAlignment.spaceAround,
                    maxY: 10,
                    barTouchData: BarTouchData(enabled: false),
                    titlesData: FlTitlesData(
                      topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: false,
                          getTitlesWidget: (value, meta) {
                            return Text(
                              value.toInt().toString(),
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            );
                          },
                          reservedSize: 28,
                        ),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) {
                            switch (value.toInt()) {
                              case 0:
                                return Transform.rotate(
                                    angle: -45,
                                    child: Container(
                                        padding: const EdgeInsets.all(8),
                                        margin: EdgeInsets.only(right: 8.w),
                                        width: 45.w,
                                        child: const Text(
                                          'Back Turns',
                                          style: Textutils.title10,
                                          softWrap: true,
                                          overflow: TextOverflow.visible,
                                        )));
                              case 1:
                                return Transform.rotate(
                                    angle: -45,
                                    child: Container(
                                        padding: const EdgeInsets.all(8),
                                        width: 50,
                                        child: const Text(
                                          'Hand claps',
                                          style: Textutils.title10,
                                          softWrap: true,
                                          overflow: TextOverflow.visible,
                                        )));
                              case 2:
                                return Transform.rotate(
                                    angle: -45,
                                    child: Container(
                                        padding: EdgeInsets.only(top: 8.h, right: 8.w),
                                        width: 50,
                                        child: const Text(
                                          'الجري',
                                          style: Textutils.title10,
                                          softWrap: true,
                                          overflow: TextOverflow.visible,
                                        )));
                              case 3:
                                return Transform.rotate(
                                    angle: -45,
                                    child: Container(
                                        padding: const EdgeInsets.all(8),
                                        width: 50,
                                        child: const Text(
                                          'Jump jacks',
                                          style: Textutils.title10,
                                          softWrap: true,
                                          overflow: TextOverflow.visible,
                                          maxLines: 2,
                                        )));
                              case 4:
                                return Transform.rotate(
                                    angle: -45,
                                    child: Container(
                                        padding: const EdgeInsets.all(8),
                                        width: 50,
                                        child: const Text(
                                          'الرقص',
                                          style: Textutils.title10,
                                          softWrap: true,
                                          overflow: TextOverflow.visible,
                                        )));
                              case 5:
                                return Transform.rotate(
                                    angle: -45,
                                    child: Container(
                                        padding: const EdgeInsets.all(8),
                                        width: 50,
                                        child: const Text(
                                          'نط الحبل',
                                          style: Textutils.title10,
                                          softWrap: true,
                                          overflow: TextOverflow.visible,
                                        )));
                              default:
                                return Transform.rotate(
                                    angle: -30,
                                    child: Container(
                                        padding: const EdgeInsets.all(8),
                                        width: 50.w,
                                        child: const Text(
                                          'اخري',
                                          style: Textutils.title10,
                                          softWrap: true,
                                          overflow: TextOverflow.visible,
                                        )));
                            }
                          },
                          reservedSize: 40,
                        ),
                      ),
                    ),
                    borderData: FlBorderData(
                      border: const Border(
                          top: BorderSide.none,
                          right: BorderSide.none,
                          bottom: BorderSide(),
                          left: BorderSide()),
                      show: true,
                    ),
                    barGroups: [
                      _buildBarGroup(0, 4, MyColors.barchartRed,),
                      _buildBarGroup(1, 6, MyColors.barchartBlue),
                      _buildBarGroup(2, 9, MyColors.barchartYellow),
                      _buildBarGroup(3, 3, MyColors.barchartGreen),
                      _buildBarGroup(4, 7, MyColors.barchartBrown),
                      _buildBarGroup(5, 5, MyColors.barchartPurple),
                    ],
                  ),
                ),
              )
            ],
          );
        }
      },
    );
  }
}

BarChartGroupData _buildBarGroup(int x, double y, Color color) {
  return BarChartGroupData(
    x: x,
    barRods: [
      BarChartRodData(
        width: 36.w,
        toY: y,
        color: color,
        borderRadius: BorderRadius.circular(2.r),
      ),
    ],
  );
}
