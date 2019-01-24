import 'package:flutter/material.dart';

class Businesses extends StatelessWidget {
  final List<String> businesses;

  Businesses([this.businesses = const[]]){
    print('Businesses Widget] Constructor');
  } 

  Widget _buildBusinessItem(BuildContext context, int index){
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/city.jpg'),
          Text(businesses[index]),
          ButtonBar(children: <Widget>[FlatButton()],)
        ],
      ),
    );
  }

  Widget _buildBusinessList() {
    Widget businessCards;
      if (businesses.length > 0) {
        businessCards = ListView.builder(
        itemBuilder: _buildBusinessItem,
        itemCount: businesses.length,
      );
      } else {
        businessCards = Center(child: Text('Unfortunately, we do not have any businesses that match. Please click to add one!'),);
      }
      return businessCards;
  }

  @override
    Widget build(BuildContext context) {
      print('[Products Widget] build()');
      return _buildBusinessList();
    }
}