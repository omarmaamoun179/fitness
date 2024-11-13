import 'dart:developer';

import 'package:fitness/config/routes/routes.dart';
import 'package:fitness/config/styles.dart';
import 'package:fitness/core/helper/custom_sized.dart';
import 'package:fitness/core/helper/extension.dart';
import 'package:fitness/features/auth/presentation/widgets/login_button.dart';
import 'package:fitness/features/requirement/presentation/widgets/custome_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SetBirthDateScreen extends StatefulWidget {
  const SetBirthDateScreen({super.key});

  @override
  _SetBirthDateScreenState createState() => _SetBirthDateScreenState();
}

class _SetBirthDateScreenState extends State<SetBirthDateScreen> {
  int selectedYear = DateTime.now().year;
  String selectedMonth = 'January';
  int selectedDay = DateTime.now().day;

  final List<int> years = List.generate(300, (index) => 1920 + index);
  final List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  List<int> days = List.generate(31, (index) => index + 1);

  @override
  void initState() {
    super.initState();
    _updateDaysInMonth();
  }

  bool _isLeapYear(int year) {
    if (year % 4 == 0) {
      if (year % 100 == 0) {
        if (year % 400 == 0) return true;
        return false;
      }
      return true;
    }
    return false;
  }

  // Method to update the number of days in a month
  void _updateDaysInMonth() {
    int daysInMonth;
    switch (selectedMonth) {
      case 'February':
        daysInMonth = _isLeapYear(selectedYear) ? 29 : 28;
        break;
      case 'April':
      case 'June':
      case 'September':
      case 'November':
        daysInMonth = 30;
        break;
      default:
        daysInMonth = 31;
    }
    setState(() {
      days = List.generate(daysInMonth, (index) => index + 1);
      if (selectedDay > daysInMonth) {
        selectedDay = daysInMonth; // Adjust day if it exceeds days in month
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.sizeOf(context).height,
          ),
          child: IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                verticalSpace(67),
                CustomSlider(
                  currentStep: 2,
                  text1: "\"Set Your Birthdate\"",
                  text2:
                      "This helps the AI trainer recommend workouts tailored to your age and fitness level.",
                ),
                verticalSpace(60),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 55.w),
                  child: Row(
                    children: [
                      const DateWidget(text: "Year"),
                      horizontalSpace(20),
                      const DateWidget(text: "Month"),
                      horizontalSpace(20),
                      const DateWidget(text: "Day"),
                    ],
                  ),
                ),
                verticalSpace(13),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Year Picker
                      SizedBox(
                        width: 100.w,
                        height: 200.h,
                        child: CupertinoPicker(
                          selectionOverlay: Container(),
                          itemExtent: 65.0.h,
                          onSelectedItemChanged: (index) {
                            setState(() {
                              selectedYear = years[index];
                              _updateDaysInMonth(); // Update days based on the new year
                            });
                            log('Selected Year: $selectedYear');
                          },
                          children: years
                              .map((year) => Center(child: Text('$year')))
                              .toList(),
                        ),
                      ),
                      // Month Picker
                      SizedBox(
                        width: 120.w,
                        height: 200.h,
                        child: CupertinoPicker(
                          selectionOverlay: Container(),
                          itemExtent: 65.0.h,
                          onSelectedItemChanged: (index) {
                            setState(() {
                              selectedMonth = months[index];
                              _updateDaysInMonth(); // Update days based on the new month
                            });
                            log('Selected Month: $selectedMonth');
                          },
                          children: months
                              .map((month) => Center(child: Text(month)))
                              .toList(),
                        ),
                      ),
                      // Day Picker
                      SizedBox(
                        width: 80.w,
                        height: 200.h,
                        child: CupertinoPicker(
                          selectionOverlay: Container(),
                          itemExtent: 65.0.h,
                          onSelectedItemChanged: (index) {
                            setState(() {
                              selectedDay = days[index];
                            });
                            log('Selected Day: $selectedDay');

                            log("SelectedDate : $selectedYear/$selectedMonth/$selectedDay");
                          },
                          children: days
                              .map((day) => Center(child: Text('$day')))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.center,
                  child: LoginButton(
                    onTap: () => context.pushNamed(Routes.setMeasurement),
                    text: "Next",
                  ),
                ),
                verticalSpace(28),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DateWidget extends StatelessWidget {
  const DateWidget({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.r),
        ),
        height: 36.h,
        child: Text(
          text,
          style: Styles.style12W500Black,
        ),
      ),
    );
  }
}
