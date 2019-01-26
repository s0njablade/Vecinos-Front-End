import 'package:flutter/material.dart';

import '../businesses.dart';
import './apperal.dart';
import './food.dart';
import './other.dart';
import '../neighborhoods/neighborhoods.dart';
import '../communities/community.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text('Filter'),
              ),
              ListTile(
                title: Text('Community'),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => CommunityPage()));
                },
              ),
              ListTile(
                title: Text('Neighborhood'),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              NeighborhoodPage()));
                },
              ),
              ListTile(
                title: Text('Category'),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => CategoryPage()));
                },
              ),
              ListTile(
                title: Text('All Businesses'),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => BusinessesPage()));
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Categories'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: 'Apperal'),
              Tab(text: 'Food'),
              Tab(text: 'Other'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ApperalCreatePage(),
            FoodCreatePage(),
            OtherCreatePage(),
          ],
        ),
      ),
    );
  }
}
