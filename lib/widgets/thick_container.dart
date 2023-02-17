import 'package:booktickets/utils/app_layout.dart';
import 'package:flutter/material.dart';

class ThickContainer extends StatelessWidget {
  final bool? isColor;
  const ThickContainer({super.key, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppLayout.getHeight(3.0)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          AppLayout.getHeight(20),
        ),
        border: Border.all(
            width: AppLayout.getWidth(2.5),
            color: isColor == null ? Colors.white : const Color(0xFF8ACCF7)),
      ),
    );
  }
}
