import 'package:flutter/material.dart';

const COLOR_BLACK = Color.fromRGBO(48, 47, 48, 1.0);
const COLOR_GREY = Color.fromRGBO(141, 141, 141, 1.0);
const COLOR_LIGHT_GREEN = const Color(0xff009966);

const COLOR_WHITE = Colors.white;
const COLOR_YELLOW = const Color(0xffFFFF00);
const COLOR_DARK_BLUE = Color.fromRGBO(20, 25, 45, 1.0);

const TextTheme TEXT_THEME_DEFAULT = TextTheme(
    headline1: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 26),
    headline2: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 22),
    headline3: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 20),
    headline4: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 16),
    headline5: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 14),
    headline6: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 12),
    bodyText1: TextStyle(
        color: COLOR_BLACK, fontSize: 14, fontWeight: FontWeight.w500,height: 1.5),
    bodyText2: TextStyle(
        color:  COLOR_BLACK, fontSize: 14, fontWeight: FontWeight.w500,height: 1.5),
    subtitle1:
    TextStyle(color: COLOR_BLACK, fontSize: 12, fontWeight: FontWeight.w400),
    subtitle2: TextStyle(
        color: COLOR_GREY, fontSize: 12, fontWeight: FontWeight.w400));

const TextTheme TEXT_THEME_SMALL = TextTheme(
    headline1: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 22),
    headline2: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 20),
    headline3: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 18),
    headline4: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 14),
    headline5: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 12),
    headline6: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 10),
    bodyText1: TextStyle(
        color: COLOR_BLACK, fontSize: 12, fontWeight: FontWeight.w500,height: 1.5),
    bodyText2: TextStyle(
        color:  COLOR_GREY, fontSize: 12, fontWeight: FontWeight.w500,height: 1.5),
    subtitle1:
    TextStyle(color: COLOR_BLACK, fontSize: 10, fontWeight: FontWeight.w400),
    subtitle2: TextStyle(
        color: COLOR_GREY, fontSize: 10, fontWeight: FontWeight.w400));


const TextTheme TEXT_THEME_DEFAULT_WHITE = TextTheme(
    headline1: TextStyle(
        color: COLOR_WHITE, fontWeight: FontWeight.w700, fontSize: 26),
    headline2: TextStyle(
        color: COLOR_WHITE, fontWeight: FontWeight.w700, fontSize: 22),
    headline3: TextStyle(
        color: COLOR_WHITE, fontWeight: FontWeight.w700, fontSize: 20),
    headline4: TextStyle(
        color: COLOR_WHITE, fontWeight: FontWeight.w700, fontSize: 16),
    headline5: TextStyle(
        color: COLOR_WHITE, fontWeight: FontWeight.w700, fontSize: 14),
    headline6: TextStyle(
        color: COLOR_WHITE, fontWeight: FontWeight.w700, fontSize: 12),
    bodyText1: TextStyle(
        color: COLOR_WHITE, fontSize: 14, fontWeight: FontWeight.w500,height: 1.5),
    bodyText2: TextStyle(
        color:  COLOR_WHITE, fontSize: 14, fontWeight: FontWeight.w500,height: 1.5),
    subtitle1:
    TextStyle(color: COLOR_WHITE, fontSize: 12, fontWeight: FontWeight.w400),
    subtitle2: TextStyle(
        color: COLOR_GREY, fontSize: 12, fontWeight: FontWeight.w400));

const TextTheme TEXT_THEME_SMALL_WHITE = TextTheme(
    headline1: TextStyle(
        color: COLOR_WHITE, fontWeight: FontWeight.w700, fontSize: 22),
    headline2: TextStyle(
        color: COLOR_WHITE, fontWeight: FontWeight.w700, fontSize: 20),
    headline3: TextStyle(
        color: COLOR_WHITE, fontWeight: FontWeight.w700, fontSize: 18),
    headline4: TextStyle(
        color: COLOR_WHITE, fontWeight: FontWeight.w700, fontSize: 14),
    headline5: TextStyle(
        color: COLOR_WHITE, fontWeight: FontWeight.w700, fontSize: 12),
    headline6: TextStyle(
        color: COLOR_WHITE, fontWeight: FontWeight.w700, fontSize: 10),
    bodyText1: TextStyle(
        color: COLOR_WHITE, fontSize: 12, fontWeight: FontWeight.w500,height: 1.5),
    bodyText2: TextStyle(
        color:  COLOR_GREY, fontSize: 12, fontWeight: FontWeight.w500,height: 1.5),
    subtitle1:
    TextStyle(color: COLOR_WHITE, fontSize: 10, fontWeight: FontWeight.w400),
    subtitle2: TextStyle(
        color: COLOR_GREY, fontSize: 10, fontWeight: FontWeight.w400));


final List<dynamic> List_images =
[
    {"name":"Livia", "url":'https://filedn.com/ltOdFv1aqz1YIFhf4gTY8D7/ingus-info/BLOGS/Photography-stocks3/stock-photography-slider.jpg',},
    {"name":"Corinna", "url": "https://www.w3schools.com/w3css/img_lights.jpg",},
    {"name":"Eric", "url":"https://imgd.aeplcdn.com/476x268/n/cw/ec/38904/mt-15-front-view.jpeg?q=80",},
    {"name":"Afi", "url":"https://hatrabbits.com/wp-content/uploads/2017/01/random.jpg",},
    {"name":"Hasyim", "url":"https://st.depositphotos.com/1428083/2946/i/600/depositphotos_29460297-stock-photo-bird-cage.jpg",},
    {"name":"Simon", "url":"https://upload.wikimedia.org/wikipedia/commons/b/bf/Ashley_Young_2018-06-13_1.jpg",},
    {"name":"Siti", "url":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJTNM0hUgZNzeyMr97rGIriXxH72GS10MTiA8vaxre6WekZXMf81jySf-daMuQ73XpTQE&usqp=CAU",},
    {"name":"Angelynn", "url":"https://static.coindesk.com/wp-content/uploads/2021/04/dogecoin-710x458.jpg",},
    {"name":"Darren", "url":"https://media.wired.com/photos/593261cab8eb31692072f129/1:1/w_200,h_200,c_limit/85120553.jpg",},
];