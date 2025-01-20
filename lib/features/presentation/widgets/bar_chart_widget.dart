import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_adhd/core/colors.dart';
import 'package:graduation_adhd/core/textutils.dart';

class BarChartWidget extends StatefulWidget {
  const BarChartWidget({super.key});

  @override
  State<BarChartWidget> createState() => _BarChartWidgetState();
}

class _BarChartWidgetState extends State<BarChartWidget> {
  Map<String, int> activityCounts = {};
  final List<String> activities = ['Back Turns', 'Hand claps', 'الجري', 'Jump jacks', 'الرقص', 'نط الحبل'];

  @override
  void initState() {
    super.initState();
    fetchActivityCounts();
  }

  Future<void> fetchActivityCounts() async {
    try {
      final querySnapshot = await FirebaseFirestore.instance
          .collection('tasks')
          .where('childID', isEqualTo: '1')
          .get();

      final counts = <String, int>{};
      for (var doc in querySnapshot.docs) {
        final activity = doc['activity'] ?? 'Unknown';
        counts[activity] = (counts[activity] ?? 0) + 1;
      }

      setState(() {
        activityCounts = counts;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                reservedSize: 28,
                getTitlesWidget: (value, meta) {
                  return Text(
                    value.toInt().toString(),
                    style: const TextStyle(color: Colors.black, fontSize: 12),
                  );
                },
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 40,
                getTitlesWidget: (value, meta) {
                  final index = value.toInt();
                  if (index < activities.length) {
                    return Transform.rotate(
                      angle: -45,
                      child: Container(
                              padding: const EdgeInsets.all(8),
                              width: 50,
                              child:  Text(
                                activities[index],
                                style: Textutils.title10,
                                softWrap: true,
                                overflow: TextOverflow.visible,
                                maxLines: 2,
                              )),
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
            ),
          ),
          borderData: FlBorderData(
            border: const Border(
              top: BorderSide.none,
              right: BorderSide.none,
              bottom: BorderSide(),
              left: BorderSide(),
            ),
            show: true,
          ),
          barGroups: List.generate(activities.length, (index) {
            final activity = activities[index];
            final count = activityCounts[activity] ?? 0;
            return _buildBarGroup(index, count.toDouble(), _getColorForActivity(index));
          }),
        ),
      ),
    );
  }

  BarChartGroupData _buildBarGroup(int x, double y, Color color) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          width: 37.w,
          toY: y,
          color: color,
          borderRadius: BorderRadius.circular(2.r),
        ),
      ],
    );
  }

  Color _getColorForActivity(int index) {
    final colors = [
      MyColors.barchartRed,
      MyColors.barchartBlue,
      MyColors.barchartYellow,
      MyColors.barchartGreen,
      MyColors.barchartBrown,
      MyColors.barchartPurple,
    ];
    return colors[index % colors.length];
  }
}
