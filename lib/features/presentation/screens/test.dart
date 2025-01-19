import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ActivityChartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'مخطط الأنشطة',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // عنوان المخطط
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'المواد العلمية:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            // المخطط
            Expanded(
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  maxY: 10,
                  barTouchData: BarTouchData(enabled: false),
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          return Text(
                            value.toInt().toString(),
                            style: TextStyle(
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
                              return Text('Back Turns');
                            case 1:
                              return Text('Hand Claps');
                            case 2:
                              return Text('الجري');
                            case 3:
                              return Text('Jumping Jacks');
                            case 4:
                              return Text('الرقص');
                            case 5:
                              return Text('ربط العمل');
                            default:
                              return Text('');
                          }
                        },
                        reservedSize: 40,
                      ),
                    ),
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  barGroups: [
                    _buildBarGroup(0, 4, Colors.pinkAccent),
                    _buildBarGroup(1, 6, Colors.blueAccent),
                    _buildBarGroup(2, 9, Colors.yellowAccent),
                    _buildBarGroup(3, 3, Colors.greenAccent),
                    _buildBarGroup(4, 7, Colors.brown),
                    _buildBarGroup(5, 5, Colors.purpleAccent),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  BarChartGroupData _buildBarGroup(int x, double y, Color color) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: y,
          color: color,
          borderRadius: BorderRadius.circular(4),
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ActivityChartPage(),
  ));
}
