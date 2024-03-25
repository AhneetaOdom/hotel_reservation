import 'package:flutter/material.dart';
import 'package:hotel_reservation1/main.dart';
import 'constants.dart';

class ExploreCard extends StatelessWidget {
  const ExploreCard({super.key});

  // final String?  image;
  // final String? exploreText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
          borderRadius: BorderRadius.circular(10),
      ),// Set the width of the container
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft:  Radius.circular(10), topRight:  Radius.circular(10)),
            child: Image.asset('assets/beach3.jpg'),
          ),
          SizedBox(height: 10), // Add spacing between the image and text
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Lombok',
              textAlign: TextAlign.center,
              style: kBodyTextstyle1,
            ),
          ),
        ],
      ),
    );
  }
}


class Locator extends StatelessWidget {
  const Locator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: kLightGreenColor,
      ),
      child: Container(
        width: 40,
        height: 0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kGreenColor
        ),
        child: Icon(Icons.arrow_forward_rounded,color: Colors.white,),
      ),
    );
  }
}
class FacilitiesCard extends StatelessWidget {
  const FacilitiesCard({super.key,this.iconss,required this.facility});
final IconData? iconss;
final String facility;


  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
            border:Border.all(color: kGreyColor,width: 2)
        ),
        child: Icon(iconss),
      ),
      Text(facility,style: TextStyle(
    fontSize: 12,color: kBlueColor
    ),)
    ],
    );
  }
}

