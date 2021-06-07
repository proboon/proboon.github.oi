import 'package:flutter/material.dart';
import 'package:myshop/View/IG_Home/IG_Home_Page.dart';

class IG_Dashboard_Page extends StatefulWidget {
  @override
  _IG_Dashboard_PageState createState() => _IG_Dashboard_PageState();
}

class _IG_Dashboard_PageState extends State<IG_Dashboard_Page> {
  int index = 0;

  final tabs = [
    IG_Home_Page(),
    Center(child: Text("Search",style: TextStyle(color: Colors.white),),),
    Center(child: Text("SnapShot",style: TextStyle(color: Colors.white),),),
    Center(child: Text("Shop",style: TextStyle(color: Colors.white),),),
    Center(child: Text("Home",style: TextStyle(color: Colors.white),),),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        resizeToAvoidBottomInset: true,
        body: tabs[index],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          backgroundColor: Colors.black,
          fixedColor: Colors.red,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (int index) {
            setState(() {
              this.index = index;
              print(index);
            }
            );
            // _navigateToScreens(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled,color: Colors.white,),
              tooltip: "home",
              label: "home",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search,color: Colors.white,),
                tooltip: "search",
                label: "search"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.ondemand_video,color: Colors.white,),
                tooltip: "Snapshot",
                label: "Snapshot"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket,color: Colors.white,),
                tooltip: "Shop",
                label: "Shop"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded,color: Colors.white,),
                tooltip: "Profile",
                label: "Profile"
            ),

          ],
        ),
      ),
    );
  }
}
