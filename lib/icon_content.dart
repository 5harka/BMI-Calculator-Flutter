import 'package:flutter/material.dart';
/// ICON CONTENT WIDGET ///

class IconContentWidget extends StatelessWidget {
  IconContentWidget({
    super.key,
    required this.genderIcon,
    required this.genderText,
  });
  final IconData genderIcon;
  final String genderText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          genderText,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}