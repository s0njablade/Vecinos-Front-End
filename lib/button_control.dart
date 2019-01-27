import 'package:flutter/material.dart';

class ButtonControl extends StatelessWidget {
  final Function addBusiness;

  ButtonControl(this.addBusiness);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).accentColor,
      elevation: 8.0,
      shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(7.0))),
      onPressed: () {
        addBusiness({'title': 'art', 'image': 'assets/denver.jpg'});
      },
      child: Text('test test'),
    );
  }
}
