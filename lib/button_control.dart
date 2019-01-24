import 'package:flutter/material.dart';

class ButtonControl extends StatelessWidget {
  final Function addBusiness;

  ButtonControl(this.addBusiness);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: Theme.of(context).primaryColor,
        onPressed: () {
          addBusiness('Pies');
        },
        child: Text('test test'));
  }
}
