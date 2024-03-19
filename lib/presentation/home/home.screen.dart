import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:getxcli_yantralive/presentation/widget/titleText.dart';
import 'package:intl/intl.dart';

import '../../infrastructure/theme/app_colors.dart';
import '../../infrastructure/theme/text_styles.dart';
import '../widget/card_widget.dart';
import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu_open_rounded,
              color: AppColor.mainAppColor,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_active_rounded,
                  color: AppColor.mainAppColor,
                ))
          ],
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(title, style: TextStyles.fontW700(18)),
          centerTitle: true,
        ),
        body: Obx(() {
          return Container(
            padding:
                EdgeInsets.symmetric(vertical: 0.03.sh, horizontal: 0.03.sw),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  controller.formatter.value,
                  style: TextStyles.fontW700(14),
                ),
                Text(
                  controller.name.value,
                  style: TextStyles.fontW700(18),
                ),
                SizedBox(
                  height: 10.h,
                ),
                FutureBuilder(
                    future: controller.loadData(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Expanded(
                          child: ListView.separated(
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    gradient: const LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          AppColor.topLeftGradientColor,
                                          AppColor.bottomRightGradientColor
                                        ]),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      TitleTextWidget(
                                          name:
                                              "${snapshot.data!.data?[index].general?.make}",
                                          model:
                                              "${snapshot.data!.data?[index].general?.model}"),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        child: Image.network(
                                            "${snapshot.data!.data![index].assetImages!.first.assetImages}",
                                            fit: BoxFit.cover),
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      CardWidget(
                                          image: "assets/images/image 241.png",
                                          title: "HMR",
                                          lastTitle: "Last Filled HMR",
                                          todaysTitle: "Today's HMR",
                                          lastDate: DateFormat('yMMMMd').format(
                                              snapshot.data!.data![index]
                                                  .general!.latestHmrDate!),
                                          lastUsage: snapshot.data!.data![index]
                                              .general!.latestHmr!,
                                          dueSoon: "",
                                          overDue: ""),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      CardWidget(
                                          image:
                                              "assets/images/tool-front-color.png",
                                          title: "Service",
                                          lastTitle: "Due soon",
                                          todaysTitle: "Overdue",
                                          lastDate: "",
                                          lastUsage: "",
                                          dueSoon: snapshot.data!.data![index]
                                              .general!.dueSoonService,
                                          overDue: snapshot.data!.data![index]
                                              .general!.overdueService),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      CardWidget(
                                          image:
                                          "assets/images/image 238.png",
                                          title: "Fuel",
                                          lastTitle: "Last Refuelled",
                                          todaysTitle: "Today's Fuel",
                                          lastDate: DateFormat('yMMMMd').format(
                                              snapshot.data!.data![index]
                                                  .general!.latestFuelDate!),
                                          lastUsage: snapshot.data!.data![index]
                                              .general!.latestFuel,
                                          dueSoon: snapshot.data!.data![index]
                                              .general!.dueSoonService,
                                          overDue: snapshot.data!.data![index]
                                              .general!.overdueService),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.r)),
                                              backgroundColor:
                                                  Colors.amberAccent),
                                          onPressed: () {},
                                          child: Text(
                                            "Add expenses",
                                            style: TextStyles.fontW700(16),
                                          ))
                                    ],
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: 10.h,
                                );
                              },
                              itemCount: snapshot.data!.data!.length),
                        );
                      }
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    })
              ],
            ),
          );
        }));
  }
}
