import 'package:flutter/material.dart';

import './businesses.dart';
import './business.dart';

// import './'



class BusinessListPage extends StatelessWidget {
  final List<Map<String, dynamic>> businesses;

  BusinessListPage(this.businesses);


@override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   // title: Text('Featured'),
        // ),
    body: new Card(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
                Image.asset('assets/denver.jpg'),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: 
                  Text('Welton St Cafe'),
                ),
                Text('Capitol Hill, Denver'),

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

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemBuilder: (BuildContext context, int index){
//         return ListTile(
//           leading: Image.asset(businesses[index]['image']), 
//         title: Text(businesses[index]['title']), 
//         trailing: RaisedButton(
//       color: Theme.of(context).accentColor,
//       elevation: 8.0,
//       shape: BeveledRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(7.0))),
//       onPressed: () {
//         Navigator.of(context).push(
//           MaterialPageRoute(
//             builder: (BuildContext context){
//             return BusinessPage(businesses[index]);
//           }
//         ));
//       },
//         ),
//         );
        
//       }, 
//       itemCount: businesses.length,
//       );
  }

