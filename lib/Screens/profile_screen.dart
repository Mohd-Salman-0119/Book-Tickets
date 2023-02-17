import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(20),
          vertical: AppLayout.getHeight(20)),
      children: [
        Gap(AppLayout.getHeight(50)),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: AppLayout.getHeight(86),
              width: AppLayout.getHeight(86),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                color: Colors.amber,
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/plane.png')),
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book Tickets',
                  style: Styles.headLineStyle1,
                ),
                Gap(AppLayout.getHeight(2)),
                Text(
                  'New-York',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.grey.shade500),
                ),
                Gap(AppLayout.getHeight(8)),
                Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(100)),
                    color: const Color(0XFFFEF4F3),
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(3),
                      vertical: AppLayout.getHeight(3)),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0XFF526799),
                        ),
                        child: const Icon(
                          FluentSystemIcons.ic_fluent_shield_filled,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      Gap(AppLayout.getHeight(5)),
                      const Text(
                        'Premium Status',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0XFF526799)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            Text(
              'Edit',
              style: Styles.textStyle.copyWith(
                  color: Styles.primaryColor, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Gap(AppLayout.getHeight(8)),
        Divider(
          color: Colors.grey.shade300,
        ),
        Gap(AppLayout.getHeight(8)),
        Stack(
          children: [
            Container(
              height: AppLayout.getHeight(90),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Styles.primaryColor),
            ),
            Positioned(
              right: -45,
              top: -40,
              child: Container(
                padding: EdgeInsets.all(AppLayout.getHeight(30)),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border:
                        Border.all(color: const Color(0xFF264CD2), width: 18)),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(25),
                  vertical: AppLayout.getHeight(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Colors.white,
                    child: Icon(
                      FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                      color: Styles.primaryColor,
                      size: 27,
                    ),
                  ),
                  Gap(AppLayout.getHeight(12)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'You\'ve got a new award',
                        style: Styles.headLineStyle2.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'You have 95 flights in a year',
                        style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 16),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        Gap(AppLayout.getHeight(25)),
        Text('Accumulated miles', style: Styles.headLineStyle2),
        Gap(AppLayout.getHeight(20)),
        Container(
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
              color: Styles.bgColor,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300, blurRadius: 1, spreadRadius: 1)
              ]),
          child: Column(
            children: [
              Gap(AppLayout.getHeight(15)),
              Text('192802',
                  style: TextStyle(
                      fontSize: 45,
                      color: Styles.textColor,
                      fontWeight: FontWeight.w600)),
              Gap(AppLayout.getHeight(12)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Miles accured',
                    style: Styles.headLineStyle4.copyWith(fontSize: 16),
                  ),
                  Text(
                    '17 Feb 2023',
                    style: Styles.headLineStyle4.copyWith(fontSize: 16),
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(12)),
              Divider(
                color: Colors.grey.shade300,
              ),
              Gap(AppLayout.getHeight(12)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppColumnLayout(
                    firstText: '23 042',
                    secondText: 'Miles',
                    alignment: CrossAxisAlignment.start,
                    isColor: false,
                  ),
                  AppColumnLayout(
                    firstText: 'Airline CO',
                    secondText: 'Received from',
                    alignment: CrossAxisAlignment.end,
                    isColor: false,
                  )
                ],
              ),
              Gap(AppLayout.getHeight(12)),
              const AppLayoutBuilderWidget(
                section: 12,
                isColor: false,
              ),
              Gap(AppLayout.getHeight(12)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppColumnLayout(
                    firstText: '24',
                    secondText: 'Miles',
                    alignment: CrossAxisAlignment.start,
                    isColor: false,
                  ),
                  AppColumnLayout(
                    firstText: 'McDoanal\'s',
                    secondText: 'Received from',
                    alignment: CrossAxisAlignment.end,
                    isColor: false,
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(12)),
              const AppLayoutBuilderWidget(
                section: 12,
                isColor: false,
              ),
              Gap(AppLayout.getHeight(12)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppColumnLayout(
                    firstText: '52 340',
                    secondText: 'Miles',
                    alignment: CrossAxisAlignment.start,
                    isColor: false,
                  ),
                  AppColumnLayout(
                    firstText: 'Qadri',
                    secondText: 'Received from',
                    alignment: CrossAxisAlignment.end,
                    isColor: false,
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(12)),
            ],
          ),
        ),
        Gap(AppLayout.getHeight(25)),
        Center(
          child: Text(
            'How to get more miles',
            style: Styles.textStyle.copyWith(
                color: Styles.primaryColor, fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
