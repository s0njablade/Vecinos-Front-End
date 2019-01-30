import 'package:flutter/material.dart';

class WomenCreatePage extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Women Owned Businesses'),
        ),
    body: new Card(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
                Image.asset('assets/Olive-Finch_0.jpg'),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: 
                  Text('Olive & Finch'),
                ),
                Text('At Olive & Finch our focus is scratch-made food.'),

                Container(
                  padding: EdgeInsets.all(10.0),
                  child:
                      Text('Soul food, Carribean Food', textAlign: TextAlign.center),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: RaisedButton(
                    color: Theme.of(context).accentColor,
                    child:
                        Text('About', style: TextStyle(color: Colors.red[900])),
                    elevation: 8.0,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7.0))),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/businesses');
                    },
                  ),)
              ]
              ))
              );
  
  }

    }
