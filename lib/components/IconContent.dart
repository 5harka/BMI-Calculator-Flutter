import 'package:flutter/material.dart';
import '../components/constants.dart';

class iconContent extends StatelessWidget {
  iconContent({
    required this.icon,
    required this.label,
    super.key,
  });

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: kLlineTextStyle,
        ),
      ],
    );
  }
}
