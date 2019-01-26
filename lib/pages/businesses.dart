import 'package:flutter/material.dart';

import '../business_manager.dart';
import './community.dart';
import './neighborhoods.dart';
import './category.dart';

class BusinessesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        builder: (BuildContext context) => NeighborhoodPage()));
              },
            ),
            ListTile(
              title: Text('Category'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => CommunityPage()));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Vecinos'),
      ),
      body: BusinessManager(),
    );
  }
}
