// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child:  Container(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('NYC', style: MyStyles.headLineStyle3,),
                      const Spacer(),
                      Text('LONDON', style: MyStyles.headLineStyle3,)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
