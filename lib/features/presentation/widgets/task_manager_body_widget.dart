import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_adhd/core/colors.dart';
import 'package:graduation_adhd/core/textutils.dart';
import 'package:graduation_adhd/features/presentation/widgets/add_homework.dart';
import 'package:graduation_adhd/features/presentation/widgets/custom_nav_bar.dart';
import 'package:graduation_adhd/features/presentation/widgets/previous_homework.dart';
import 'package:graduation_adhd/features/presentation/widgets/profile_widget.dart';
import 'package:graduation_adhd/features/presentation/widgets/switch_container.dart';

class TaskManagerBodyWidget extends StatefulWidget {
  const TaskManagerBodyWidget({
    super.key,
  });

  @override
  State<TaskManagerBodyWidget> createState() => _TaskManagerBodyWidgetState();
}

class _TaskManagerBodyWidgetState extends State<TaskManagerBodyWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              const ProfileWidget(),
              Container(
                padding: EdgeInsets.only(top: 8.h, right: 16.w, left: 16.w),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(22.r),
                        topRight: Radius.circular(22.r))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: 8.w, right: 16.w, bottom: 8.h),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'الواجبات',
                            style: Textutils.title22,
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 8.h),
                      padding: const EdgeInsets.all(8),
                      height: 40.h,
                      width: MediaQuery.of(context).size.width - 32.w,
                      decoration: BoxDecoration(
                          color: MyColors.lightgrey,
                          borderRadius: BorderRadius.circular(24.r)),
                      child: Row(
                        children: [
                          SwitchContainer(
                            color: selected ? Colors.white : Colors.transparent,
                            text: 'الحالية',
                            ontap: () {
                              setState(() {
                                selected = true;
                              });
                            },
                          ),
                          SwitchContainer(
                            color:
                                !selected ? Colors.white : Colors.transparent,
                            text: 'السابقه',
                            ontap: () {
                              setState(() {
                                selected = false;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    !selected ? const PreviousHomework() : const AddHomework(),
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          bottom: 30.h,
          right: ((MediaQuery.of(context).size.width) / 2) - (80.w),
          child: const CustomNavBar(),
        )
      ],
    );
  }
}
