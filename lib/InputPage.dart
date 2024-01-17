import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconContent.dart';
import 'package:bmi_calculator/CardWidget.dart';
import 'constants.dart';

/// Enum to help set the right role (because of null safety I had to add in neither) ///
enum Gender { male, female, neither }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  /// This is setup as an alternative to if else statement///
  Gender selectedGender = Gender.neither;
  int height = 180;
  int weight = 60;
  int age = 25;

  /// Removed convoluted if else statement ///
  // Color maleCardColor = passiveColor;
  // Color femaleCardColor = passiveColor;
  //
  // void UpdateColor(Gender seclectedGender) {
  //
  //
  //   if (seclectedGender == Gender.male) {
  //     if (maleCardColor == passiveColor) {
  //       maleCardColor = activeColor;
  //       femaleCardColor = passiveColor;
  //     }
  //     else{maleCardColor = passiveColor;}
  //   }
  //   if (seclectedGender == Gender.female) {
  //     if (femaleCardColor == passiveColor) {
  //       femaleCardColor = activeColor;
  //       maleCardColor = passiveColor;
  //     }
  //     else{femaleCardColor = passiveColor;}
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: cardWidget(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kActiveColor
                        : kPassiveColor,
                    cardChild: iconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: cardWidget(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kActiveColor
                        : kPassiveColor,
                    cardChild: iconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                )
              ],
            )),
            Expanded(
                child: cardWidget(
                    colour: kActiveColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'HEIGHT',
                          style: kLlineTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.ideographic,
                          children: <Widget>[
                            Text(height.toString(), style: kBigNumberText),
                            Text(
                              'cm',
                              style: kLlineTextStyle,
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Color(0xFF8D8E98),
                            thumbColor: kBottomContainerColor,
                            overlayColor: kOverlaySliderColor,
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 30.0),
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: 120,
                            max: 220,
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            },
                          ),
                        )
                      ],
                    ),
                    onPress: () {})),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: cardWidget(
                      colour: kActiveColor,
                      onPress: () {},
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: kLlineTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.ideographic,
                            children: [
                              Text(
                                weight.toString(),
                                style: kBigNumberText,
                              ),
                              Text(
                                'kg',
                                style: kLlineTextStyle,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: Icon(CupertinoIcons.minus),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Icon(CupertinoIcons.plus),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: cardWidget(
                      colour: kActiveColor,
                      onPress: () {},
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'AGE',
                            style: kLlineTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.ideographic,
                            children: [
                              Text(
                                age.toString(),
                                style: kBigNumberText,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: Icon(CupertinoIcons.minus),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Icon(CupertinoIcons.plus),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: kBottomContainerColor,
              height: kBottomContainerHeight,
              child: Center(
                  child: ElevatedButton(
                    onPressed: (){setState(() {
                      Navigation.push(context,MaterialPageRoute(builder: (context){
                        return SecondPage();
                      }))
                    });},
                    child: Text(
                                    'CALCULATE',
                                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
                                  ),
                  )),
            )
          ],
        ));
  }
}
