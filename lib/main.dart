import 'package:flutter/material.dart';
import 'package:hotel_reservation1/detailsPage.dart';

import 'package:hotel_reservation1/onboardingpage.dart';

import 'homepage.dart';

void main() {
  runApp( HotelReservation());
}


class HotelReservation extends StatelessWidget {
  const HotelReservation({super.key});
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomePage(),
    );
  }
}

// home:OnboardingPage(),
