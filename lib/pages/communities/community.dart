import 'package:flutter/material.dart';

import '../businesses.dart';
import './poc.dart';
import './women.dart';
import './lgbtq.dart';
import '../neighborhoods/neighborhoods.dart';
import '../categories/category.dart';

class CommunityPage extends StatelessWidget {
// final List<Map<String, dynamic>> businesses;

  // CommunityPage(this.businesses);

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
          title: Text('Community'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: 'Women Owned'),
              Tab(text: 'LGTBQ Owned'),
              Tab(text: 'POC Owned'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            WomenCreatePage(),
            LGBTQCreatePage(),
            POCCreatePage()
          ],
        ),
      ),
    );
  }
}
