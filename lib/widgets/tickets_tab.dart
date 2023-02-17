import 'package:flutter/material.dart';
import '../utils/app_layout.dart';

class TicketsTab extends StatelessWidget {
  const TicketsTab(
      {super.key, required this.firstTab, required this.secondTab});

  final String firstTab;
  final String secondTab;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              AppLayout.getHeight(50.0),
            ),
            color: const Color(0XFFF4F6FD)),
        child: Row(
          children: [
            /*
                  Airline Tickets
                   */
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(AppLayout.getHeight(50.0))),
              ),
              child: Center(child: Text(firstTab)),
            ),
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                color: const Color(0XFFF4F6FD),
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(AppLayout.getHeight(50.0))),
              ),
              child: Center(child: Text(secondTab)),
            )
          ],
        ),
      ),
    );
  }
}
