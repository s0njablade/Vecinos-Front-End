import 'package:flutter/material.dart';

class LGBTQCreatePage extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
 return Scaffold(
        appBar: AppBar(
          title: Text('LGBT Owned Businesses'),
        ),
    body: new Card(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
                Image.asset('assets/protos.jpg'),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: 
                  Text("Proto's Pizza", style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),),
                ),
                Text('Lohi, Denver'),

                Container(
                  padding: EdgeInsets.all(10.0),
                  child:
                      Text('The Pizza experience had been elevated to table service, linen napkins, and delicious wines with a full bar to make it a true dining experience.', textAlign: TextAlign.center),
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