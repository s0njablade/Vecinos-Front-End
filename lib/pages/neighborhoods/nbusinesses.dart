import 'package:flutter/material.dart';

class NBusinessesCreatePage extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Featured Neighborhood'),
        // ),
    body: new Card(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
                Image.asset('assets/storefront.jpg'),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: 
                  Text('Five Points', style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),),
                ),
                Text('Denver'),

                // Container(
                //   padding: EdgeInsets.all(10.0),
                //   child:
                //       Text('We truly are locals who love locals locally.', textAlign: TextAlign.center),
                // ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: RaisedButton(
                    color: Theme.of(context).accentColor,
                    child:
                        Text('Explore', style: TextStyle(color: Colors.red[900])),
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
  
    }}