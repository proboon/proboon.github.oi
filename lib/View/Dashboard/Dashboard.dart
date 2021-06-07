import 'package:flutter/material.dart';
import 'package:myshop/View/Cart/Cart.dart';
import 'package:myshop/View/Dashboard/searchBar_widget.dart';

import 'Image_list_widget.dart';

class DashBoardPage extends StatefulWidget {
  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {

  showAlertDialog(BuildContext context) {

    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("My title"),
      content: Text("This is my message."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return WillPopScope(
      onWillPop: (){
        showAlertDialog(context);
        return ;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("First Project"),
          actions: [
            IconButton(
                icon: Icon(Icons.healing),
                onPressed: (){
                  print("Testing");
                }
            ),
            IconButton(
                icon: Icon(Icons.shopping_bag),
                onPressed: (){
                  print("Testing");
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Cart()));//stack
                }
            ),
          ],
          leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: (){
                print("Testing");
                // showFlushbar();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('Awesome Snackbar!'),
                    duration: Duration(milliseconds: 10000),
                    action: SnackBarAction(
                      label: 'Action',
                      onPressed: () {
                        // Code to execute.
                      },
                    ),
                  ),
                );
                // Scaffold.of(context).showSnackBar(
                //   SnackBar(content: Text("Hello World"))
                // );
              }
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              searchBar_widget(),
              SizedBox(height: 8,),
              Image_list_widget(),
            ],
          ),
        ),
      ),
    );
    // return Container(
    //   width: 100,
    //   height: 100,
    //   color: Colors.red,
    // );
  }
}
