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
  List<Card> _buildList(BuildContext context){
    List<Business> businesses = BusinessesRepo.loadBusiness();

  if (businesses == null || businesses.isEmpty){
    return const <Card>[];
  }

    return businesses.map((business){
        return Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 18/11,
                child: Image.asset(business.image),
                
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(16.0,12.0,16.0,8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        business.title,
                        maxLines: 1,
                      ),
                      SizedBox(height: 8.0,),
                      Text(
                        business.description,
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
    }
              ).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      automaticallyImplyLeading: false,
      // title: Text('Vecinos'),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(16.0),
          childAspectRatio: 8.0 / 9.0,
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
