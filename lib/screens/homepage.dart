import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Homepage extends StatelessWidget {
  static final routeName = '/Homepage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 2),
        child: GNav(
          onTabChange: (index) {
            print(index);
          },
          hoverColor: Colors.blue.shade300,
          padding: EdgeInsets.all(15),
          backgroundColor: Colors.grey.shade300,
          color: Colors.deepPurple,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.deepPurpleAccent.shade200,
          gap: 10,
          tabs: [
            GButton(
              icon: Icons.favorite,
              text: 'Favorites',
              onPressed: () {},
            ),
            GButton(
              icon: Icons.person,
              onPressed: () {},
              text: 'Profile',
            ),
            GButton(
              icon: Icons.inventory,
              onPressed: () {},
              text: 'Invetory',
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent.shade200,
        title: Text('Stock Exchange'),
        centerTitle: true,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
