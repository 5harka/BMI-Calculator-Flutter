import 'package:flutter/material.dart';

/// CARD WIDGET which contains the widget container that is dulicated multiple times in the App///


class cardWidget extends StatelessWidget {
  cardWidget({
    required this.colour,
    required this.cardChild,
    super.key,
  });
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}