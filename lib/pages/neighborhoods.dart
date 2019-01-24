import 'package:flutter/material.dart';

class NeighborhoodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Neighborhoods'),
      ),
      body: Center(
        child: Text('Select Neighborhood'),
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
