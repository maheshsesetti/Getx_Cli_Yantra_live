import 'package:flutter/material.dart';

import '../../infrastructure/theme/text_styles.dart';

class TitleTextWidget extends StatelessWidget {
  final String name;
  final String model;
  const TitleTextWidget({super.key, required this.name,required this.model});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
      MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text(
             name,
             style: TextStyles.fontW700(20),
           ),
           Text(
             model,
             style: TextStyles.fontW700(18),
           ),
         ],
       )
      ],
    );
  }
}
