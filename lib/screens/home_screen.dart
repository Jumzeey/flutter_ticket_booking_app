import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/data/hotel_info_list.dart';
import 'package:ticket_booking_app/data/ticket_info_list.dart';
import 'package:ticket_booking_app/screens/hotel_view.dart';
import 'package:ticket_booking_app/screens/ticket_view.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyStyles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: MyStyles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          'Book Tickets',
                          style: MyStyles.headLineStyle,
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/img_1.png'))),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFF3b3b3b),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: TextField(
                          cursorOpacityAnimates: true,
                          decoration: InputDecoration(
                            hintText: "Search available tickets...",
                            border: InputBorder.none,
                            hintStyle: MyStyles.headLineStyle4,
                          ),
                          style: MyStyles.headLineStyle4,
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Upcoming Flight',
                      style: MyStyles.headLineStyle2,
                    ),
                    InkWell(
                      onTap: () => {print('Tapped')},
                      child: Text(
                        'View All',
                        style: MyStyles.textStyle
                            .copyWith(color: MyStyles.primaryColor),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Gap(16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList
                  .map((ticket) => TicketView(ticket: ticket))
                  .toList(),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hotels',
                  style: MyStyles.headLineStyle2,
                ),
                InkWell(
                  onTap: () => {print('Tapped')},
                  child: Text(
                    'View All',
                    style: MyStyles.textStyle
                        .copyWith(color: MyStyles.primaryColor),
                  ),
                ),
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: hotelList
                  .map((hotelInfo) => HotelView(hotel: hotelInfo))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
