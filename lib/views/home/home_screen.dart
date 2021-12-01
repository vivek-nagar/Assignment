import 'package:elssa/views/home/screen1/screen1.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _pageIndex = 0;
  PageController _pageController;

  List<Widget> tabPages = [
    Screen1(),
    Screen1(),
    Screen1(),
    Screen1(),
    Screen1(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _pageIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
         leading: IconButton(
    onPressed: () {},
    icon: Icon(Icons.location_city,color: Colors.black,),
  ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: onTabTapped,
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black87,
              ),
              title: Text("Home", style: TextStyle(color: Colors.black))),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.card_giftcard,
                color: Colors.black87,
              ),
              title: Text("Rewards", style: TextStyle(color: Colors.black))),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.padding_sharp,
                color: Colors.black87,
              ),
              title: Text("My Orders", style: TextStyle(color: Colors.black))),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today_outlined,
                color: Colors.black87,
              ),
              title: Text("Bookings", style: TextStyle(color: Colors.black))),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black87,
              ),
              title: Text("Profile", style: TextStyle(color: Colors.black))),
        ],
      ),
      body: PageView(
        children: tabPages,
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),
    );
  }

  void onPageChanged(int page) {
    setState(() {
      this._pageIndex = page;
    });
  }

  void onTabTapped(int index) {
    this._pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}
