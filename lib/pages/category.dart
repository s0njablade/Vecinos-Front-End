import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category'),
      ),
      body: Center(
        child: Text('Select Category'),
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
