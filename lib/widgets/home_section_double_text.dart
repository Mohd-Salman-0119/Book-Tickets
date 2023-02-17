import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class HomeSectionDoubleText extends StatelessWidget {
  const HomeSectionDoubleText(
      {super.key, required this.categories, required this.smallText});

  final String categories;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          categories,
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: () {},
          child: Text(
            smallText,
            style: Styles.textStyle.copyWith(color: Styles.primaryColor),
          ),
        )
      ],
    );
  }
}
