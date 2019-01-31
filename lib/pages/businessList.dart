import 'package:flutter/material.dart';

import './save.dart';
import './serializer.dart';

class MainListPage extends StatefulWidget {
  @override
  MainListPageState createState() {
    return new MainListPageState();
  }
}

class MainListPageState extends State<MainListPage> {
  List<Card> _buildList(BuildContext context) {
    List<Business> businesses = BusinessesRepo.loadBusiness();

    if (businesses == null || businesses.isEmpty) {
      return const <Card>[];
    }

    return businesses.map((business) {
      return Card(
          // clipBehavior: Clip.antiAlias,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
            Image.asset(business.image),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(business.title,
                  style:
                      TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold)),
              // child: Image.asset(business.image),
            ),
            // Expanded(
            //   child: Padding(
            //     padding: EdgeInsets.fromLTRB(16.0,12.0,16.0,8.0),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: <Widget>[
            //         Text(
            //           business.title,
            //           maxLines: 1,
            //         ),
            //         SizedBox(height: 8.0,),
            // Container(
            //   padding: EdgeInsets.all(10.0),
            //   child: Text(
            //       'As a locally owned business we’re not just your favorite bistro, we’re your neighbors.',
            //       textAlign: TextAlign.center),
            // ),
            // Container(
            //   padding: EdgeInsets.all(10.0),
            //   child: RaisedButton(
            //     color: Theme.of(context).accentColor,
            //     child:
            //         Text('About', style: TextStyle(color: Colors.red[900])),
            //     elevation: 8.0,
            //     shape: BeveledRectangleBorder(
            //         borderRadius: BorderRadius.all(Radius.circular(7.0))),
            //     onPressed: () {
            //       Navigator.pushReplacementNamed(context, '/businesses');
            //     },
            //   ),
          ]));
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // automaticallyImplyLeading: false,
      // // title: Text('Vecinos'),
      // ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 1,
          padding: EdgeInsets.all(10.0),
          children: _buildList(context),
        ),
      ),
    );
  }
}

// BusinessListPage(this.businesses);

// @override

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
