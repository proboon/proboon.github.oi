import 'package:flutter/material.dart';
import 'package:myshop/View/IG_Home/Home_SnapShot.dart';
import 'package:myshop/utils/constants.dart';
import 'package:myshop/utils/widget_function.dart';

class Home_Post extends StatefulWidget {
  @override
  _Home_PostState createState() => _Home_PostState();
}

class _Home_PostState extends State<Home_Post> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: List_images.length,
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: 15,);
      },
      itemBuilder: (BuildContext context, int index) {
        return w_Post(image_network_address: List_images[index]["url"],name: List_images[index]["name"],);
      },
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
    );
  }
}

class w_Post extends StatelessWidget {
  final String image_network_address;
  final String name;

  const w_Post({Key key, this.image_network_address, this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        w_Post_Name(image_network_address: image_network_address,name: name,),
        w_LikeAndShare(image_network_address: image_network_address,),
      ],
    );
  }
}

class w_Post_Name extends StatelessWidget {
  final String image_network_address;
  final String name;

  const w_Post_Name({Key key, this.image_network_address, this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(child: w_SnapShot_small(image_network_address: image_network_address,),),
                addHorizontalSpace(10),
                w_UserName(name: name,)
              ],
            ),
            Icon(Icons.more_vert,color: COLOR_WHITE,),
          ],
        ),
      ),
    );
  }
}

class w_Post_image extends StatelessWidget {
  final String image_network_address;

  const w_Post_image({Key key, this.image_network_address}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.width,
      width: double.infinity,
      child: FadeInImage.assetNetwork(
          fit: BoxFit.cover,
          placeholder: 'assets/images/black_image.png',
          image:image_network_address
      ),

    );
  }
}

class w_LikeAndShare extends StatefulWidget {
  final String image_network_address;

  const w_LikeAndShare({Key key, this.image_network_address}) : super(key: key);

  @override
  _w_LikeAndShareState createState() => _w_LikeAndShareState();
}

class _w_LikeAndShareState extends State<w_LikeAndShare> {

  bool Like = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onDoubleTap: (){
            Like = !Like;
            setState(() {

            });
          },
            child: w_Post_image(image_network_address: widget.image_network_address,)
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: (){
                      Like = !Like;
                      setState(() {

                      });
                    },
                    child: Tooltip(
                      message: "Like",
                        child: Icon(
                          Like?Icons.favorite:Icons.favorite_border,
                          color: Like?Colors.red:COLOR_WHITE,
                          size: 28,
                        )
                    ),
                  ),
                  addHorizontalSpace(14),
                  Tooltip(
                      message: "Comment",
                      child: Icon(
                        Icons.mode_comment_outlined,
                        color: COLOR_WHITE,
                        size: 28,
                      )
                  ),
                  addHorizontalSpace(14),
                  Tooltip(
                      message: "Share",
                      child: Icon(
                        Icons.wb_cloudy_outlined,
                        color: COLOR_WHITE,
                        size: 28,
                      )
                  ),
                ],
              ),
              Tooltip(
                  message: "Collect",
                  child: Icon(Icons.airplay,color: COLOR_WHITE,size: 28,)
              ),
            ],
          ),
        ),
      ],
    );
  }
}




