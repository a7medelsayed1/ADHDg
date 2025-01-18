import 'package:flutter/material.dart';
import 'package:graduation_adhd/core/colors.dart';
import 'package:graduation_adhd/features/presentation/widgets/task_manager_body_widget.dart';

class TaskManager extends StatefulWidget {
  const TaskManager({super.key});

  @override
  State<TaskManager> createState() => _TaskManagerState();
}

class _TaskManagerState extends State<TaskManager> {
  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.rtl,
      child:  Scaffold(
        backgroundColor: MyColors.appbarColor,
        body: TaskManagerBodyWidget(),
      ),
    );
  }
}

