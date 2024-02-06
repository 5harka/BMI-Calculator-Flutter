import 'package:flutter/material.dart';

class cardWidget extends StatelessWidget {
  const cardWidget({
    required this.colour,
    required this.cardChild,
    required this.onPress,
    super.key,
  });
  final Color colour;
  final Widget cardChild;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        child: cardChild,
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
