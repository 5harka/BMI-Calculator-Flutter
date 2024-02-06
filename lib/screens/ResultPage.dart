import 'package:flutter/material.dart';
import 'InputPage.dart';
import '../components/constants.dart';
import '../components/CardWidget.dart';
import '../components/BottomButton.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.interpretation,
      required this.resulttext,
      required this.bmiResult,
      super.key});

  final String bmiResult;
  final String resulttext;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  bmiResult,
                  style: kResultTitleStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: cardWidget(
              colour: kActiveColor,
              onPress: () {},
              cardChild: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Center(
                      child: Text(
                        resulttext.toUpperCase(),
                        style: kResultNormalStyle,
                      ),
                    ),
                    Center(
                      child: Text(
                        '18.3',
                        style: kBMIResultStyle,
                      ),
                    ),
                    Text(
                      interpretation,
                      style: kResultBodyStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InputPage()));
              },
              buttonTitle: 'RECALCUlATE')
        ],
      ),
    );
  }
}
