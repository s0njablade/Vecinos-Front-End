import 'package:flutter/material.dart';

import './businesses.dart';

class CommunityPage extends StatelessWidget {
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
              title: Text('Businesses'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => BusinessesPage()));
              },
              // title: Text('Neighborhood'),
              // onTap: () {
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (BuildContext context) =>
              //           NeighborhoodPage()));
              // },
              // title: Text('Category'),
              // onTap: () {
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (BuildContext context) =>
              //           CategoryPage()));
              // },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Community'),
      ),
      body: Center(
        child: Text('Select Commmunity'),
      ),
    );
    //     body: Center(
    //       child: RaisedButton(
    //         child: Text('Back'),
    //         onPressed: () {
    //           Navigator.pushReplacement(
    //             context,
    //             MaterialPageRoute(
    //                 builder: (BuildContext context) => BusinessesPage()),
    //           );
    //         },
    //       ),
    //     ),
    //   );
    // }
  }
}
