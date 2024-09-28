import 'package:flutter/material.dart';

class CarouselWidget extends StatelessWidget {
  final List<String> imgList;

  const CarouselWidget({super.key, required this.imgList});

  @override
  Widget build(BuildContext context) {
    return CarouselView(
      itemSnapping: true,
      padding: EdgeInsets.all(8),
      elevation: 20,
      itemExtent: 200,
      // options: CarouselOptions(
      //   height: 200.0,
      //   enlargeCenterPage: true,
      //   autoPlay: true,
      //   aspectRatio: 1,
      //   autoPlayCurve: Curves.linear,
      //   enableInfiniteScroll: true,
      //   autoPlayAnimationDuration: Duration(milliseconds: 800),
      //   viewportFraction: 1,
      // ),
      children: imgList
          .map((item) => Container(
                color: Colors.green,
                child: Center(
                  child: Image.asset(
                    item,
                    fit: BoxFit.cover,
                    width: 500,
                  ),
                ),
              ))
          .toList(),
    );
  }
}
