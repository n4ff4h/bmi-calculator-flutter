import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // final makes this property immutable
  final Function onTap;
  final Color colour;
  final Widget cardChild;

  ReusableCard({this.onTap, @required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
