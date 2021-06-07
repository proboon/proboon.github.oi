import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Home_SnapShot.dart';

class Home_SnapShot_View extends StatelessWidget {
  final String image_data;
  final String Hero_Name;

  const Home_SnapShot_View({Key key, this.image_data, this.Hero_Name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [

            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width:double.maxFinite,
                    child: Hero(
                      tag: Hero_Name,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: FadeInImage.assetNetwork(
                          fit: BoxFit.cover,
                          placeholder: 'assets/images/black_image.png',
                          image:image_data,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          LinearProgressIndicator(
                            value: 0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                padding: EdgeInsets.all(8),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50.0),
                                  child: FadeInImage.assetNetwork(
                                      fit: BoxFit.cover,
                                      placeholder: 'assets/images/black_image.png',
                                      image:image_data,
                                  ),
                                ),
                              ),
                              w_UserName(name: Hero_Name,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SnapShot_Comment_Widget(),
          ],
        ),
      ),
    );
  }
}

class SnapShot_Comment_Widget extends StatefulWidget {
  @override
  _SnapShot_Comment_WidgetState createState() => _SnapShot_Comment_WidgetState();
}

class _SnapShot_Comment_WidgetState extends State<SnapShot_Comment_Widget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white70,),
                borderRadius: BorderRadius.all(Radius.circular(8.0),),
              ),
              height: 40,
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            color: Colors.white,
            onPressed: (){

            },
          ),
        ],
      ),
    );
  }
}



