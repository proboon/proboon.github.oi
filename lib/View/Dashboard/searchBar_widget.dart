import 'package:flutter/material.dart';

class searchBar_widget extends StatefulWidget {
  @override
  _searchBar_widgetState createState() => _searchBar_widgetState();
}

class _searchBar_widgetState extends State<searchBar_widget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            //1st
            Expanded(
              child: Container(
                color: const Color(0xFF464646),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.search,size: 25,color: Colors.white),
                    ),
                    Expanded(
                      child: TextField(

                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 12,
            ),
            //2nd
            Icon(Icons.camera_alt_outlined,size: 25,color: Colors.white,),
          ],
        ),
      ),
    );
  }
}
