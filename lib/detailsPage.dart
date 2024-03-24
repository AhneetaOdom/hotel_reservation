import 'package:flutter/material.dart';
import 'package:hotel_reservation1/constants.dart';
import 'package:hotel_reservation1/smallpageindicator.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [])
                    ),
                    child: Image.asset('assets/beach1.jpg')),
                Positioned(
                  top: 10,
                  left: 20,
                  child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.arrow_back_ios_new_rounded)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: kOrangeColor, borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text(
                        'Recommend Resort',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ),
                  ),
                  Text(
                    'Pullman Bali Legian Beach',
                    style: kHeadingTextstyle,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: kYellowColor,
                            size: 16,
                          ),
                          Text(
                            '4.9',
                            style: kBodyTextstyle2,
                          ),
                        ],
                      ),
                      Locator(),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Facilities',
                          style: kSubheadingTextstyle1,
                        ),
                        Text(
                          'See All',
                          style: kBodyTextstyle2,
                        ),
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FacilitiesCard(
                          iconss: Icons.fastfood_outlined, facility: 'Resaurant'),
                      FacilitiesCard(iconss: Icons.pool_outlined, facility: 'Pool'),
                      FacilitiesCard(iconss: Icons.wifi, facility: 'Wifi'),
                      FacilitiesCard(
                          iconss: Icons.local_parking_rounded, facility: 'Parking')
                    ],
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
