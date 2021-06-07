import 'package:flutter/material.dart';
import 'package:myshop/utils/constants.dart';
import 'package:myshop/utils/widget_function.dart';

class CalculationPage extends StatefulWidget {
  @override
  _CalculationPageState createState() => _CalculationPageState();
}

class _CalculationPageState extends State<CalculationPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 70,
            color: const Color(0xff7A6349),
          ),
          addVerticalSpace(8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "DashBoard",
                style: TEXT_THEME_DEFAULT.headline2,
              ),
            ),
          ),
          addVerticalSpace(8),
          Container(
            width: size.width,
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black26)
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "We are completing your account balblab lablabl ablabla blab  lab lablbab lablabal",
                style:TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                ),
              ),
            ),
          ),
          addVerticalSpace(8),
          Container(
            padding: EdgeInsets.all(8),
            width: size.width,
            child: Card(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Send money",
                        style: TEXT_THEME_DEFAULT.headline2,
                      ),
                    ),
                  ),
                  Container(
                    width: size.width,
                    height: 1,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "Send money",
                          style: TEXT_THEME_DEFAULT.headline2,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
