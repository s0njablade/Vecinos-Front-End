import 'package:flutter/material.dart';

class BusinessControl extends StatelessWidget {
  final Function addBusiness;

  BusinessControl(this.addBusiness);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).accentColor,
      elevation: 8.0,
      shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(7.0))),
      onPressed: () {
        addBusiness({'title': 'art', 'image': 'assets/denver.jpg', 'description': 'hi, i am a description'});
      },
      child: Text('test test'),
    );
  }
}
