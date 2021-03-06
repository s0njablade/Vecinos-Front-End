import 'package:flutter/material.dart';

import './businessList.dart';

class BusinessesPage extends StatelessWidget {
  final List<Map<String, dynamic>> businesses;

  BusinessesPage(this.businesses);

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
                Navigator.pushReplacementNamed(context, '/community');
              },
            ),
            ListTile(
              title: Text('Neighborhood'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/neighborhoods');
              },
            ),
            ListTile(
              title: Text('Category'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/categories');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Vecinos'),
      ),
      body: MainListPage(),
    );
  }
}
