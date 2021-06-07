import 'package:flutter/material.dart';

class Home_AppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text("Instagram",style: TextStyle(color: Colors.white,fontSize: 24),),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                  icon: Icon(Icons.add_comment_outlined,color: Colors.white,),
                  onPressed: (){}
              ),
              IconButton(
                  icon: Icon(Icons.favorite_border,color: Colors.white,),
                  onPressed: (){}
              ),
              IconButton(
                  icon: Icon(Icons.send,color: Colors.white,),
                  onPressed: (){}
              ),
            ],
          ),
        ],
      ),
    );
  }
}
