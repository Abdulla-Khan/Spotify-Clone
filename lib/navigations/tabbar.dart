import 'package:flutter/material.dart';
import 'package:spotify/views/home.dart';
import 'package:spotify/views/library.dart';
import 'package:spotify/views/profile.dart';
import 'package:spotify/views/search.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({Key? key}) : super(key: key);

  @override
  _TabbarState createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _selectedtab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedtab,
        onTap: (index) {
          setState(() {
            this._selectedtab = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_music_outlined), label: "Your Library"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "Profile"),
        ],
      ),
      body: Stack(
        children: [
          renderView(
            0,
            HomeView(),
          ),
          renderView(
            1,
            Search(),
          ),
          renderView(
            2,
            Library(),
          ),
          renderView(
            3,
            Profile(),
          ),
        ],
      ),
    );
  }

  Widget renderView(int tabIndex, Widget view) {
    return IgnorePointer(
      ignoring: _selectedtab != tabIndex,
      child: Opacity(
        opacity: _selectedtab == tabIndex ? 1 : 0,
        child: view,
      ),
    );
  }
}
