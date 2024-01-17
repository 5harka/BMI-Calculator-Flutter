import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'card_widget.dart';

const double bottomHeightContainer = 80.0;
const Color cardcolor = Color(0xFF1D1E33);
const bottomCardColor = Colors.pinkAccent;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: cardWidget(
                    colour: cardcolor,
                    cardChild: IconContentWidget(
                      genderIcon: FontAwesomeIcons.mars,
                      genderText: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: cardWidget(
                    colour: cardcolor,
                    cardChild: IconContentWidget(
                      genderIcon: FontAwesomeIcons.venus,
                      genderText: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: cardWidget(colour: cardcolor),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: cardWidget(colour: cardcolor),
                ),
                Expanded(
                  child: cardWidget(colour: cardcolor),
                ),
              ],
            ),
          ),
          Container(
            height: bottomHeightContainer,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            color: bottomCardColor,
          )
        ],
      ),
    );
  }
}





// floatingActionButton: Theme(data: ThemeData.dark(), child: FloatingActionButton(
// onPressed: () {  },
// child: Icon(Icons.add),)
// ),
