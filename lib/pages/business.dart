import 'package:flutter/material.dart';

import 'dart:async';

class BusinessPage extends StatelessWidget {
  final String title;
  final String imageURL;

  BusinessPage(this.title, this.imageURL);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print('Back button pressed!');
        Navigator.pop(context);
        return Future.value(false);
      },
      child: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(imageURL),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(title),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: RaisedButton(
                    color: Theme.of(context).accentColor,
                    child: Text('Back', style: TextStyle(color: Colors.red[900])),
                    elevation: 8.0,
                    shape:BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0))
                    ),
                    onPressed: () {Navigator.pushReplacementNamed(context, '/businesses');
                    },
                  ),
                )
              ],
            ),
          )),
    );
  }
}
