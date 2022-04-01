import 'package:flutter/material.dart';
import 'package:flutter_exam/week4/unit_calculator/calculator_brain.dart';
import 'package:flutter_exam/week4/unit_calculator/components/bottom_Button.dart';
import 'package:flutter_exam/week4/unit_calculator/components/iconContent.dart';
import 'package:flutter_exam/week4/unit_calculator/components/reusableCard.dart';
import 'package:flutter_exam/week4/unit_calculator/constants.dart';
import 'package:flutter_exam/week4/unit_calculator/screens/resultsPage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

enum Gender {
  male,
  female,
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 170;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WEIGHT CONVERTER'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, // row를 끝까지 늘림
        children: [
          Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: selectedGender == Gender.male
                      ? kActiveCardColour
                      : kInactiveCardColour,
                  cardChild: IconContent(icon: Icons.line_weight, label: "LB"),
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                ),
              ),
              Expanded(
                  child: ReusableCard(
                colour: selectedGender == Gender.female
                    ? kActiveCardColour
                    : kInactiveCardColour,
                cardChild: IconContent(icon: Icons.monitor_weight, label: "KG"),
                onPress: () {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
              ))
            ],
          ),
          Expanded(
            child: ReusableCard(
              colour: kDefaultCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'INPUT',
                    style: kLabelTextStyle,
                  ),
                  Text(
                    weight.toString(),
                    style: kNumberTextStyle,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RoundIconButton(FontAwesomeIcons.minus, () {
                        setState(() {
                          weight--;
                        });
                      }),
                      RoundIconButton(FontAwesomeIcons.plus, () {
                        setState(() {
                          weight++;
                        });
                      }),
                    ],
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    bmiResult: calc.calculateBMI(),
                    resultText: calc.getResult(),
                    interpretation: calc.getInterpretation(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton(this.icon, this.onPressed);
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
      ),
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
