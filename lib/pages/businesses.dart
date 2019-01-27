import 'package:flutter/material.dart';

import '../business_manager.dart';
// import './communities/community.dart';
// import './neighborhoods/neighborhoods.dart';
// import './categories/category.dart';

class BusinessesPage extends StatelessWidget {
  final List<Map<String, String>> businesses;
  final Function addBusiness;

  BusinessesPage(this.businesses, this.addBusiness);

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
      body: BusinessManager(businesses, addBusiness),
    );
  }
}
