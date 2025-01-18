import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_adhd/features/presentation/widgets/custom_drop_down.dart';

class AddHomework extends StatelessWidget {
  const AddHomework({super.key});

  @override
  Widget build(BuildContext context) {
    String? selectedValue;
    List<String> values=['1','2'];
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
             child: CustomDropDown(selectedValue: selectedValue, values: values),
           ),
         ],
       ),Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           const Text('اسم الماده العلميه'),
           Container(
             child: CustomDropDown(selectedValue: selectedValue, values: values),
           ),
         ],
       ),Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           const Text('اسم الماده العلميه'),
           Container(
             child: CustomDropDown(selectedValue: selectedValue, values: values),
           ),
         ],
       ),Row(
         children: [
           const Text('اسم الماده العلميه'),
           const Spacer(),
           Container(
             child: CustomDropDown(selectedValue: selectedValue, values: values),
           ),
           SizedBox(width: 20.w,),
           Container(
             child: CustomDropDown(selectedValue: selectedValue, values: values),
           ),
         ],
       ),
       const SizedBox(height: 500,)
     ],
            );
  }
}