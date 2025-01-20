import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_adhd/core/colors.dart';
import 'package:graduation_adhd/core/textutils.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class BarChartContainer extends StatelessWidget {
  const BarChartContainer({
    super.key,
  });
Future<Map<String, dynamic>> fetchTaskData() async {
  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('tasks')
      .where('childID', isEqualTo: '1').where('month',isEqualTo: '1') 
      .get();

  int completedTasks = snapshot.docs.where((task) {
    final data = task.data() as Map<String, dynamic>;
    return data.containsKey('isCompleted') && data['isCompleted'] == true;
  }).length;

  int totalTasks = snapshot.docs.length;

  double progress = totalTasks > 0 ? completedTasks / totalTasks : 0.0;

  return {
    'completedTasks': completedTasks,
    'totalTasks': totalTasks,
    'progress': progress,
  };
}


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchTaskData(),
      builder:(context,snapshot){
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
           final data = snapshot.data!;
      final progress = data['progress'];
      final rounded=((double.parse(progress.toStringAsFixed(1)))*100);
          return
       Container(
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
              percent: progress,
              center: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${100-rounded}%',
                      style: Textutils.title10,
                    ),
                    Text('$rounded%', style: Textutils.title10),
                  ],
                ),
              ),
            )
          ],
        ),
      );}}
    );
  }
}
