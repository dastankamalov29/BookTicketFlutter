import 'package:bookticket/utils/app_layout.dart';
import 'package:bookticket/utils/app_styles.dart';
import 'package:bookticket/utils/ticket_tabs.dart';
import 'package:bookticket/widgets/Icon_text_widget.dart';
import 'package:bookticket/widgets/double_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(40),
          Text(
            'What are\nyou looking for?',
            style: Styles.headLineStyle1.copyWith(fontSize: 35),
          ),
          const Gap(20),
          const AppTicketTabs(firstTab: 'Airline ticket', secondTab: 'Hotels',),
          const Gap(25),
          AppIconText(icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          const Gap(20),
          AppIconText(icon: Icons.flight_land_rounded, text: 'Arival'),

          //Find a ticket
          const Gap(25),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
            decoration: BoxDecoration(
                color: const Color(0xD91130CE),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                'Find a ticket',
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          const Gap(40),
          const AppDoubleTextWidget(
              bigText: 'Upcoming Flights', smallText: 'View all'),
          const Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Container(
                  height: 435,
                  width: size.width * 0.42,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 185,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/sit.jpg"),
                          ),
                        ),
                      ),
                      const Gap(10),
                      Text(
                        '20% Discount on the early booking of this flight. Dont miss',
                        style: Styles.headLineStyle2,
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: 230,
                        decoration: BoxDecoration(
                          color: const Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(19),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount \nfor survey',
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const Gap(10),
                            Text(
                              'Take the survey about our service and get discount',
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 18,
                              color: const Color(0xFF189999),
                            ),
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(15),
                  //Orange container
                  Container(
                    width: size.width * 0.44,
                    height: 210,
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Take love',
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        const Gap(5),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 38),
                              ),
                              TextSpan(
                                text: '😘',
                                style: TextStyle(fontSize: 50),
                              ),
                              TextSpan(
                                text: '🥰',
                                style: TextStyle(fontSize: 38),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
