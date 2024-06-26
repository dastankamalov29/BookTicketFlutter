import 'package:bookticket/utils/app_layout.dart';
import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs(
      {super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xFFF4F6FD),
        ),
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(50),
        //   color: const Color(0xFFF4F6FD),
        // ),
        child: Row(
          children: [
            //airlinetickets
            Container(
              width: size.width * .44,
              padding: const EdgeInsets.symmetric(vertical: 7),
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(50)),
                color: Colors.white,
              ),
              child:  Center(
                child: Text(firstTab),
              ),
            ),
            //hotels
            Container(
              width: size.width * .44,
              padding: const EdgeInsets.symmetric(vertical: 7),
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(50)),
                color: Colors.transparent,
              ),
              child: Center(child: Text(secondTab),),
            )
          ],
        ),
      ),
    );
  }
}
