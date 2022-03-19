// ignore_for_file: unnecessary_new

import 'package:filmapp/pages/nav/bookmark_page.dart';
import 'package:filmapp/pages/nav/main_page.dart';
import 'package:filmapp/pages/nav/profile_page.dart';
import 'package:filmapp/pages/nav/search_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentIndex = 0;

  void NavAction(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> pages = [
    MainPage(),
    const SearchPage(),
    const BookmarkPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color.fromARGB(255, 50, 52, 61),
        ),
        child: new BottomNavigationBar(
          unselectedFontSize: 0,
          selectedFontSize: 0,
          selectedItemColor: const Color(0XFF546EE5),
          unselectedItemColor: const Color(0XFF636882),
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: NavAction,
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.apps),
            ),
            BottomNavigationBarItem(
              label: 'Search',
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: 'Bookmark',
              icon: Icon(Icons.bookmark_border)
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person)
            ),
          ],
        ),
      ),
    );
  }
}