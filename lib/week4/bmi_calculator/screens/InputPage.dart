import 'package:flutter/material.dart';
import 'package:flutter_exam/week4/bmi_calculator/calculator_brain.dart';
import 'package:flutter_exam/week4/bmi_calculator/components/bottom_Button.dart';
import 'package:flutter_exam/week4/bmi_calculator/components/iconContent.dart';
import 'package:flutter_exam/week4/bmi_calculator/components/reusableCard.dart';
import 'package:flutter_exam/week4/bmi_calculator/constants.dart';
import 'package:flutter_exam/week4/bmi_calculator/screens/resultsPage.dart';
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
        title: Text("BMI Calculator"),
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
                  cardChild: IconContent(icon: Icons.male, label: "male"),
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
                cardChild: IconContent(icon: Icons.female, label: "female"),
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
                  'HEIGHT',
                  style: kLabelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: kNumberTextStyle,
                    ),
                    Text(
                      "cm",
                      style: kLabelTextStyle,
                    )
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayColor: Color(0x29EB1555),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30)),
                  child: Slider(
                      value: height.toDouble(),
                      min: 0.0,
                      max: 230.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      }),
                ),
              ],
            ),
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: kDefaultCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
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
                Expanded(
                  child: ReusableCard(
                    colour: kDefaultCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
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
                                age--;
                              });
                            }),
                            RoundIconButton(FontAwesomeIcons.plus, () {
                              setState(() {
                                age++;
                              });
                            }),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
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
