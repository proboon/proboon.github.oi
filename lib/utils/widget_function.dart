import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget addVerticalSpace(double height){
  return SizedBox(
      height:height
  );
}

Widget addHorizontalSpace(double width){
  return SizedBox(
      width:width
  );
}

void onLoading(text,context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return Dialog(
        child: Container(
          height: 100,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              new SizedBox(
                height: 5,
              ),
              new Text(text),
              new LinearProgressIndicator(),
            ],
          ),
        ),
      );
    },
  );
  // use this to close Loading_dialog
  // Navigator.pop(context);
}


