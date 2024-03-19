import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:getxcli_yantralive/presentation/home/controllers/home.controller.dart';


import '../../infrastructure/theme/app_colors.dart';
import '../../infrastructure/theme/text_styles.dart';

class CardWidget extends StatelessWidget {
  final String image;
  final String title;
  final String lastTitle;
  final String todaysTitle;
  final String? lastDate;
  final dynamic lastUsage;
  final dynamic dueSoon;
  final dynamic overDue;

  const CardWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.lastTitle,
      required this.todaysTitle,
      required this.lastDate, required this.lastUsage,
        required this.dueSoon,required this.overDue
      });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
      decoration: BoxDecoration(
          color: Colors.white60, borderRadius: BorderRadius.circular(10.r)),
      child: Stack(
        children: [
          imageAlign(),
          Align(
            alignment: Alignment.topLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyles.fontW700(20),
                ),
                SizedBox(height: 10.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                        child: Container(
                          width: 0.4.sw,
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.w, vertical: 15.h),
                          decoration: BoxDecoration(
                            color: Colors.white54.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Column(
                            children: [
                              Text(
                                lastTitle,
                                style: TextStyles.fontW700(14),
                                textAlign: TextAlign.center,
                              ),
                              const Divider(
                                color: Colors.amberAccent,
                              ),
                              lastDate!.isNotEmpty ? Text(
                                lastDate!,
                                style: TextStyles.fontWGray700(12),
                                textAlign: TextAlign.center,
                              ) : const SizedBox(),
                             SizedBox(height: 5.h,),
                             title != "Service" ? Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 Text(
                                    '$lastUsage',
                                    style: TextStyles.fontW700(18),
                                    textAlign: TextAlign.center,
                                  ),
                                 title == "Fuel" ?
                                 Text("L",style: TextStyles.fontW700(18)):const SizedBox(),
                               ],
                             ): Text(
                                '$dueSoon',
                                style: TextStyles.fontWYellow700(28),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15.h,
                    ),
                    ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                        child: Container(
                          width: 0.4.sw,
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.w, vertical: 15.h),
                          decoration: BoxDecoration(
                            color: Colors.white54.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Column(
                            children: [
                              Text(
                                todaysTitle,
                                style: TextStyles.fontW700(14),
                                textAlign: TextAlign.center,
                              ),
                              const Divider(
                                color: Colors.amberAccent,
                              ),
                              title != "Service" ? Text(
                                controller.formatter.value,
                                style: TextStyles.fontWGray700(12),
                                textAlign: TextAlign.center,
                              ):Text(
                                "$overDue",
                                style: TextStyles.fontWYellow700(28),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 5.h,),
                              title != "Service" ? GestureDetector(
                                onTap: () {},
                                child: const Icon(
                                  Icons.add_circle,
                                  color: Colors.amberAccent,
                                  size: 30,
                                ),
                              ):const SizedBox(),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.h,),
                Center(
                  child: OutlinedButton(
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              const BorderSide(
                                  color:
                                  AppColor.mainAppColor))),
                      onPressed: () {},
                      child: Row(
                        mainAxisSize:
                        MainAxisSize
                            .min,
                        children: [
                          Text(
                            "View $title Log",
                            style: TextStyles
                                .fontW700(
                                14),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Icon(Icons
                              .arrow_forward_ios),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget imageAlign() {
    return Align(
      alignment: Alignment.topRight,
      child: ClipRRect(
          borderRadius: BorderRadius.only(topRight: Radius.circular(10.r)),
          child: Image.asset(image)),
    );
  }
}
