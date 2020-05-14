import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeigh = 80.0;
const boxColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomButton = Color(0xFFEB1555);

enum GenderType {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.male;
                      });
                    },
                    colour: selectedGender == GenderType.male
                        ? boxColor
                        : inactiveCardColor,
                    cardChild: GenderCard(
                      gender: "MALE",
                      iconGender: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = GenderType.female;
                    });
                  },
                  cardChild: GenderCard(
                    gender: "FEMALE",
                    iconGender: FontAwesomeIcons.venus,
                  ),
                  colour: selectedGender == GenderType.female
                      ? boxColor
                      : inactiveCardColor,
                )),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: boxColor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  colour: boxColor,
                )),
                Expanded(
                    child: ReusableCard(
                  colour: boxColor,
                )),
              ],
            ),
          ),
          Container(
            color: bottomButton,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeigh,
          )
        ],
      ),
    );
  }
}
