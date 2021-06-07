import 'package:flutter/material.dart';
import 'package:myshop/View/IG_Home/Home_SnapShot_VIew.dart';
import 'package:myshop/utils/constants.dart';
import 'package:myshop/utils/widget_function.dart';

class Home_SnapShot extends StatefulWidget {
  @override
  _Home_SnapShotState createState() => _Home_SnapShotState();
}

class _Home_SnapShotState extends State<Home_SnapShot> {
  // List<dynamic> List_images =
  // [
  //   {"name":"Livia", "url":'https://filedn.com/ltOdFv1aqz1YIFhf4gTY8D7/ingus-info/BLOGS/Photography-stocks3/stock-photography-slider.jpg'},
  //   {"name":"Corinna", "url": "https://www.w3schools.com/w3css/img_lights.jpg"},
  //   {"name":"Eric", "url":"https://imgd.aeplcdn.com/476x268/n/cw/ec/38904/mt-15-front-view.jpeg?q=80"},
  //   {"name":"Afi", "url":"https://hatrabbits.com/wp-content/uploads/2017/01/random.jpg"},
  //   {"name":"Hasyim", "url":"https://st.depositphotos.com/1428083/2946/i/600/depositphotos_29460297-stock-photo-bird-cage.jpg"},
  //   {"name":"Simon", "url":"https://upload.wikimedia.org/wikipedia/commons/b/bf/Ashley_Young_2018-06-13_1.jpg"},
  //   {"name":"Siti", "url":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJTNM0hUgZNzeyMr97rGIriXxH72GS10MTiA8vaxre6WekZXMf81jySf-daMuQ73XpTQE&usqp=CAU"},
  //   {"name":"Angelynn", "url":"https://static.coindesk.com/wp-content/uploads/2021/04/dogecoin-710x458.jpg"},
  //   {"name":"Darren", "url":"https://media.wired.com/photos/593261cab8eb31692072f129/1:1/w_200,h_200,c_limit/85120553.jpg"},
  // ];
  // List<String> List_imagess = ["https://filedn.com/ltOdFv1aqz1YIFhf4gTY8D7/ingus-info/BLOGS/Photography-stocks3/stock-photography-slider.jpg",
  //   "https://www.w3schools.com/w3css/img_lights.jpg",
  //   "https://imgd.aeplcdn.com/476x268/n/cw/ec/38904/mt-15-front-view.jpeg?q=80",
  //   "https://hatrabbits.com/wp-content/uploads/2017/01/random.jpg",
  //   "https://st.depositphotos.com/1428083/2946/i/600/depositphotos_29460297-stock-photo-bird-cage.jpg",
  //   "https://upload.wikimedia.org/wikipedia/commons/b/bf/Ashley_Young_2018-06-13_1.jpg",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJTNM0hUgZNzeyMr97rGIriXxH72GS10MTiA8vaxre6WekZXMf81jySf-daMuQ73XpTQE&usqp=CAU",
  //   "https://static.coindesk.com/wp-content/uploads/2021/04/dogecoin-710x458.jpg",
  //   "https://media.wired.com/photos/593261cab8eb31692072f129/1:1/w_200,h_200,c_limit/85120553.jpg",
  // ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20,top: 20),
      height: 105,
      child: ListView.separated(
        itemCount: List_images.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: 15,);
        },
        itemBuilder: (BuildContext context, int index) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Home_SnapShot_View(image_data: List_images[index]['url'],Hero_Name: List_images[index]['name'],)),
                  );
                },
                child: Hero(
                  tag: List_images[index]['name'],
                  child: w_SnapShot(image_network_address: List_images[index]['url'],),
                ),
              ),
              addVerticalSpace(5),
              w_UserName_LimitedWidth(name: List_images[index]['name'],)
            ],
          );
        },
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
      ),
    );
  }
}

class w_SnapShot extends StatelessWidget {
  final String image_network_address;

  const w_SnapShot({Key key, this.image_network_address}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 75,
          width: 75,
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50.0),),
            gradient: LinearGradient(
                colors: [
                  //looking for more color ?  http://tool.c7sky.com/webcolor/
                  COLOR_LIGHT_GREEN,
                  COLOR_WHITE,
                  COLOR_YELLOW,
                  // const Color(0xff4c68d7),
                  // const Color(0xffFFFF00),
                  // const Color(0xffFF7F00),
                  // const Color(0xffFF0000),
                ]
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50.0),),
              color: Colors.black,
            ),
            child: Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50.0),),
                color: Colors.black,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: FadeInImage.assetNetwork(
                    fit: BoxFit.cover,
                    placeholder: 'assets/images/black_image.png',
                    image:image_network_address
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class w_SnapShot_small extends StatelessWidget {
  final String image_network_address;

  const w_SnapShot_small({Key key, this.image_network_address}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 35,
          width: 35,
          padding: EdgeInsets.all(1.5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50.0),),
            gradient: LinearGradient(
                colors: [
                  //looking for more color ?  http://tool.c7sky.com/webcolor/
                  COLOR_LIGHT_GREEN,
                  COLOR_WHITE,
                  COLOR_YELLOW,
                  // const Color(0xff4c68d7),
                  // const Color(0xffFFFF00),
                  // const Color(0xffFF7F00),
                  // const Color(0xffFF0000),
                ]
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(1.5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50.0),),
              color: Colors.black,
            ),
            child: Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50.0),),
                color: Colors.black,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: FadeInImage.assetNetwork(
                    fit: BoxFit.cover,
                    placeholder: 'assets/images/black_image.png',
                    image:image_network_address
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class w_UserName extends StatelessWidget {
  final String name;

  const w_UserName({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        name,
        style: TEXT_THEME_DEFAULT_WHITE.bodyText2,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.left,
      ),
    );
  }
}


class w_UserName_LimitedWidth extends StatelessWidget {
  final String name;

  const w_UserName_LimitedWidth({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      child: Text(
        name,
        style: TEXT_THEME_DEFAULT_WHITE.bodyText2,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
      ),
    );
  }
}


