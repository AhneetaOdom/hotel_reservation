import 'package:flutter/material.dart';
import 'package:hotel_reservation1/constants.dart';
import 'package:hotel_reservation1/main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({super.key});

  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 50),
            child: Text(
              'Find The Best Place to Stress Release',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  fontSize: 36,
                  color: kBlueColor),
            ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'The largest platform to find staycations and hotels in Indonesia',
                style: kBodyTextstyle1,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  axisDirection: Axis.horizontal,
                  effect: SlideEffect(
                      spacing: 8.0,
                      radius: 4.0,
                      dotWidth: 10.0,
                      dotHeight: 10.0,
                      paintStyle: PaintingStyle.stroke,
                      // strokeWidth: 1.5,
                      dotColor: Colors.grey,
                      activeDotColor: kLightBlueColor),

                ),
                Row(
                  children: [
                    Text('Skip',style: TextStyle(fontSize:14,fontWeight: FontWeight.normal,color: Colors.grey ,fontFamily: 'Roboto'),),
                    SizedBox(width: 15),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: kYellowColor,
                        shape: BoxShape.circle
                      ),
                        child: Icon(Icons.arrow_forward,color:kLightBlueColor),),
                  ],
                ),
              ],
            ),
            Container(
              height: 450,
              width: double.infinity,
              decoration: BoxDecoration(image:DecorationImage(image: AssetImage('assets/beach1.jpg'),)),
            )
          ],
        ),
      ),
    );
  }
}
