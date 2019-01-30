import 'package:flutter/material.dart';

class POCCreatePage extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('POC Owned Businesses'),
        ),
    body: new Card(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
                Image.asset('assets/welton_street_cafe.jpg'),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: 
                  Text('Welton St Cafe'),
                ),
                Text('Five Points, Denver'),

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