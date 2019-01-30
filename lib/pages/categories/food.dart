import 'package:flutter/material.dart';

class FoodCreatePage extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
         return Scaffold(
        appBar: AppBar(
          title: Text('Food'),
        ),
    body: new Card(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
                Image.asset('assets/azucar.jpg'),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: 
                  Text('Azucar',style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),),
                ),
                Text('Five Points, Denver'),

                Container(
                  padding: EdgeInsets.all(10.0),
                  child:
                      Text('As a local family-owned business we’re not just your favorite bakery, we’re your neighbors.', textAlign: TextAlign.center),
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