import 'package:flutter/material.dart';

import './businesses.dart';
import './nbusinesses.dart';


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
              title: Text('Businesses'),
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
          Tab(
            icon: Icon(Icons.list),
            text: 'Select Neighborhood'),
        ],),
      ),
      body: TabBarView(
        children: <Widget>[
          NBusinessesCreatePage(),
        ],
      ),),
    );
  }
}
