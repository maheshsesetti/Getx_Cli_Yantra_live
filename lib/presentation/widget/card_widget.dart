import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HmrCardWidget extends StatelessWidget {
  final String image;
  const HmrCardWidget({super.key,required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white60,
          borderRadius:
          BorderRadius.circular(
              10.r)),
      child: Stack(
        children: [
          imageAlign(),
          Align(
            alignment: Alignment.topLeft,
            child: ,
          )
        ],
      ),
    );
  }

  Widget imageAlign() {
    return Align(
      alignment: Alignment.topRight,
      child: ClipRRect(
          borderRadius:
          BorderRadius.only(
              topRight: Radius
                  .circular(
                  10.r)),
          child: Image.asset(image)),
    );
  }
}
