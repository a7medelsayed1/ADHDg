// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_adhd/core/colors.dart';
import 'package:graduation_adhd/core/textutils.dart';

// ignore: must_be_immutable
class CustomDropDown extends StatefulWidget {
  CustomDropDown({
    super.key,
    required this.selectedValue,
    required this.values,
    required this.monthsMap
  });

  String? selectedValue;
  final List<String> values;
final Map<String, int> monthsMap ;
  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      underline: Container(),
      menuMaxHeight: 300.h,
      value: widget.selectedValue,
      hint: Text(widget.values.first),
      dropdownColor: MyColors.lightgrey,
      icon: Row(
        children: [
          SizedBox(
            width: 18.w,
          ),
          const Icon(
            Icons.arrow_drop_down,
          ),
        ],
      ),
      alignment: Alignment.centerLeft,
      style: Textutils.title12.copyWith(fontWeight: FontWeight.bold),
      items: widget.values.map((String item) {
        return DropdownMenuItem<String>(
          value: item,
          child: Text(item),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          widget.selectedValue = newValue;
             if (newValue != null) {
            int? monthNumber =widget. monthsMap[newValue]; 
            print('Selected month: $newValue, Month number: $monthNumber');
          }
        });
      },
    );
  }
}

