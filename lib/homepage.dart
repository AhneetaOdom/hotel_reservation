import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_reservation1/constants.dart';
import 'smallpageindicator.dart';
import 'package:hotel_reservation1/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // First section
                  const Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 30,right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/beach4.jpg'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Welcome back',
                                    style: kBodyTextstyle,
                                  ),
                                  Text(
                                    'Jovanca Azalea',
                                    style: kBodyTextstyle1,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.search, color: kBlueColor),
                      ],
                    ),
                  ),
                  // Second section
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      'Explore Stay',
                      style: kSubheadingTextstyle1,
                    ),
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 5,
                      shrinkWrap: true,
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const ExploreCard();
                      }, separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(width: 10.0);
                    },),
                  ),
                  // Third Section
                  const Padding(
                    padding: EdgeInsets.only(top: 25, bottom: 20,right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recommended',
                          style: kSubheadingTextstyle1,
                        ),
                        Text(
                          'See All',
                          style: kBodyTextstyle2,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(children: [
                        Expanded(
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/beach4.jpg',
                              ),
                              Positioned(
                                top: 10,
                                left: 10,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(vertical: 2.0,horizontal: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: kYellowColor,
                                        ),
                                        Text('4.9', style: kBodyTextstyle),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 10,
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(vertical: 2.0,horizontal: 8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: kLightBlueColor,
                                          ),
                                          Text('Bandung', style: kBodyTextstyle)
                                        ],
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Image.asset(
                            'assets/beach4.jpg',
                          ),
                        ),
                      ],),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 20,right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Citadines Berawa',
                              style: kSubheadingTextstyle,
                            ),
                            Text(
                              'Start form \$35 pernight',
                              style: kBodyTextstyle,
                            )
                          ],
                        ),
                        Icon(Icons.favorite_border),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Nearby Resort',
                              style: kSubheadingTextstyle,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: kLightBlueColor,
                                ),
                                Text(
                                  'DKI Jakarta',
                                  style: kBodyTextstyle1,
                                ),
                              ],
                            )
                          ],
                        ),
                        Locator(),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset('assets/beach4.jpg'),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Double Six Luxury',
                              style: kSubheadingTextstyle),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_forward,
                                color: kLightBlueColor,
                              ),
                              Text(
                                '14.3km',
                                style: kBodyTextstyle,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Start form \$35 per night.'),
                              SizedBox(width: 10),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: kYellowColor,
                                  ),
                                  Text(
                                    '4.9',
                                    style: kBodyTextstyle2,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // BottomNavigationBar(items: items)
                        ],
                      )
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
