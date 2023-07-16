import 'package:bmi_calculator/Screens/input_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/Components/bottom_Button.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
        actions: [
          Icon(CupertinoIcons.smiley, color: Colors.green),
          Padding(padding: EdgeInsets.only(left: 10.0)),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'images/bmi.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'images/Adult.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextButton(
            onPressed: () {
              // Add your onPressed logic here
            },
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => InputPage()));
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Let's Calculate",
                    style: kLargeButtonTextStyle,
                  ),
                ),

                color: Colors.blue.shade900,
                width: double.infinity,
                height: kBottomContainerheight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
