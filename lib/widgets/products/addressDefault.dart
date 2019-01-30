import 'package:flutter/material.dart';

class AddressDefault extends StatelessWidget {
final String address;

AddressDefault(this.address);
  @override

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Text(address),
    );
  }
}


