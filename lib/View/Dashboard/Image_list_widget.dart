import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myshop/utils/widget_function.dart';

class Image_list_widget extends StatefulWidget {
  @override
  _Image_list_widgetState createState() => _Image_list_widgetState();
}

class _Image_list_widgetState extends State<Image_list_widget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12.0),
          width: size.width,
          color: Colors.black,
          child: Image.network("https://jw-webmagazine.com/wp-content/uploads/2020/08/Anime-Demon-Slayer-Kimetsu-no-Yaiba.png"),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          height: 2,
          width: size.width,
          color: Colors.black54,
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.all(2.0),
                      width: size.width,
                      color: Colors.black,
                      child: Image.network("https://jw-webmagazine.com/wp-content/uploads/2020/08/Anime-Demon-Slayer-Kimetsu-no-Yaiba.png"),
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.grey,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Center(
                          child: Text(
                            "Slayer Demon",
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              addHorizontalSpace(4.0),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.all(2.0),
                      width: size.width,
                      color: Colors.black,
                      child: Image.network("https://jw-webmagazine.com/wp-content/uploads/2020/08/Anime-Demon-Slayer-Kimetsu-no-Yaiba.png"),
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.grey,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Center(
                          child: Text(
                            "Slayer Demon",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),


        SizedBox(
          height: 12,
        ),
        Container(
          height: 2,
          width: size.width,
          color: Colors.black54,
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          padding: EdgeInsets.all(12.0),
          width: size.width,
          color: Colors.black,
          child: Image.network("https://jw-webmagazine.com/wp-content/uploads/2020/08/Anime-Demon-Slayer-Kimetsu-no-Yaiba.png"),
        ),

      ],
    );
  }
}
