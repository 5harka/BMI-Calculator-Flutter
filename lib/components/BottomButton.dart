import 'package:flutter/material.dart';
import '/components/constants.dart';
import 'package:bmi_calculator/screens/ResultPage.dart';

class BottomButton extends StatelessWidget {
   BottomButton({

    super.key,
     required this.onTap,
     required this.buttonTitle
  });
  final onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        // padding: EdgeInsets.only(bottom: 20),
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
          ),
        ),
      ),
    );
  }
}
