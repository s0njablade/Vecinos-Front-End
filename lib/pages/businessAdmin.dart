import 'package:flutter/material.dart';

// import '../businesses.dart';
import './communities/community.dart';
import './neighborhoods/neighborhoods.dart';
import './categories/category.dart';
import './businessList.dart';

class BusinessAdmin extends StatelessWidget {

final List<Map<String, dynamic>> businesses;

  BusinessAdmin(this.businesses);

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
                          builder: (BuildContext context) => CommunityPage(businesses)));
                },
              ),
              ListTile(
                title: Text('Neighborhood'),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              NeighborhoodPage(businesses)));
                },
              ),
              ListTile(
                title: Text('Category'),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => CategoryPage(businesses)));
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
          title: Text('Featured'),
        ),
        body: TabBarView(
          children: <Widget>[
            BusinessListPage(businesses),
          ],
        ),
      ),
    );
  }
}