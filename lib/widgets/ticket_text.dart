import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class TicketText extends StatelessWidget {
  final bool? isColor;
  const TicketText(
      {super.key,
      required this.topText,
      required this.belowText,
      required this.direction,
      this.isColor});

  final String topText;
  final String belowText;
  final CrossAxisAlignment direction;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: direction,
      children: [
        Text(topText,
            style: isColor == null
                ? Styles.headLineStyle3.copyWith(color: Colors.white)
                : Styles.headLineStyle3),
        const Gap(5),
        Text(
          belowText,
          style: isColor == null
              ? Styles.headLineStyle4.copyWith(color: Colors.white)
              : Styles.headLineStyle4,
        )
      ],
    );
  }
}
