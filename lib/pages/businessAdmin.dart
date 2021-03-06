import 'package:flutter/material.dart';

import './communities/community.dart';
import './neighborhoods/neighborhoods.dart';
import './categories/category.dart';
import './businessList.dart';

class BusinessAdmin extends StatelessWidget {

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
                  Navigator.pushReplacementNamed(context, '/businesses');
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Vecinos'),
        ),
        body: TabBarView(
          children: <Widget>[
            MainListPage(),
          ],
        ),
      ),
    );
  }
}
