import 'package:flutter/material.dart';

import 'dart:async';

class BusinessPage extends StatelessWidget {
  final String title;
  final String imageURL;
  // final String description;

  BusinessPage(
    this.title,
    this.imageURL,
  );

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
                  child: Text(title,
                      style: TextStyle(
                          fontSize: 26.0, fontWeight: FontWeight.bold)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Capitol Hill, Denver'),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Text('|'),
                    ),
                    // Text('Contact Info'),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child:
                      Text('hi, i am a business.', textAlign: TextAlign.center),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: RaisedButton(
                    color: Theme.of(context).accentColor,
                    child:
                        Text('Back', style: TextStyle(color: Colors.red[900])),
                    elevation: 8.0,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7.0))),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/businesses');
                    },
                  ),
                )
              ],
            ),
          )),
    );
  }
}
