import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelsScreen extends StatelessWidget {
  final Map<String, dynamic> hotels;
  const HotelsScreen({
    super.key,
    required this.hotels,
  });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getHeight(15),
        vertical: AppLayout.getHeight(17),
      ),
      margin: EdgeInsets.only(
        right: AppLayout.getHeight(17),
        top: AppLayout.getHeight(5),
      ),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(
          AppLayout.getHeight(24),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 2,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(
                AppLayout.getHeight(12),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/${hotels['image']}'),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            hotels['place'],
            style: Styles.headLineStyle2.copyWith(color: Styles.kafiColor),
          ),
          Gap(AppLayout.getHeight(5)),
          Text(
            hotels['destination'],
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          Gap(AppLayout.getHeight(8)),
          Text(
            '\$${hotels['price']}/night',
            style: Styles.headLineStyle1.copyWith(color: Styles.kafiColor),
          ),
        ],
      ),
    );
  }
}
