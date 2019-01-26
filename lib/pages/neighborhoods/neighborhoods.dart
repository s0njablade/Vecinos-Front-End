import 'package:flutter/material.dart';

import '../businesses.dart';
import './nbusinesses.dart';
import '../communities/community.dart';
import '../categories/category.dart';

class NeighborhoodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
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
          title: Text('Denver'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.list), text: 'Select Neighborhood'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            NBusinessesCreatePage(),
          ],
        ),
      ),
    );
  }
}