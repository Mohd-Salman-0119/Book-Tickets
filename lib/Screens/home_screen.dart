import 'package:booktickets/Screens/hotels_screen.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/home_section_double_text.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../widgets/ticket_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
            ),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(50)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: Styles.headLineStyle3,
                        ),
                        Gap(AppLayout.getHeight(5)),
                        Text(
                          'Book Tickets',
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: AppLayout.getHeight(50),
                      width: AppLayout.getWidth(50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(10),
                        ),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/plane.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(25)),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(12),
                    vertical: AppLayout.getHeight(12),
                  ),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10)),
                    color: const Color(0XFFF4F6FD),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0XFFBFC205),
                      ),
                      Text(
                        'Search',
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                Gap(AppLayout.getHeight(40)),
                const HomeSectionDoubleText(
                    categories: 'Upcoming Flights', smallText: 'View all'),
                Gap(AppLayout.getHeight(15)),
              ],
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.only(
              left: AppLayout.getHeight(20),
            ),
            scrollDirection: Axis.horizontal,
            child: Row(
                children: tickectList
                    .map((singleTicket) => TickectView(tickets: singleTicket))
                    .toList()),
          ),
          Gap(AppLayout.getHeight(15)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
            child: const HomeSectionDoubleText(
                categories: 'Hotels', smallText: 'View all'),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.only(
              left: AppLayout.getHeight(20),
            ),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: hotelsList
                  .map((hotels) => HotelsScreen(hotels: hotels))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
