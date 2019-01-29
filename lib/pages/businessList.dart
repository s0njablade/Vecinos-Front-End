import 'package:flutter/material.dart';

class BusinessListPage extends StatelessWidget {
  final List<Map<String, dynamic>> businesses;

  BusinessListPage(this.businesses);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index){
        return ListTile(
          leading: Image.asset(businesses[index]['image']), 
        title: Text(businesses[index]['title']), 
        );
      }, 
      itemCount: businesses.length,
      );
  }

}