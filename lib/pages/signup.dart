import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignupPage();
  }
}

class _SignupPage extends State<SignupPage> {
  String _nameValue;
  String _emailValue;
  String _passwordValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SIGN UP WITH EMAIL'),
        ),
        body: new Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
              image: new AssetImage('assets/sidewalk.jpg'),
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.dstATop),
              fit: BoxFit.cover,
            )),
            child: Container(
                margin: EdgeInsets.all(10.0),
                child: ListView(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: 'Name'),
                      keyboardType: TextInputType.text,
                      onChanged: (String value) {
                        setState(() {
                          _nameValue = value;
                        });
                      },
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Email'),
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (String value) {
                        setState(() {
                          _emailValue = value;
                        });
                      },
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Password'),
                      obscureText: true,
                      onChanged: (String value) {
                        setState(() {
                          _passwordValue = value;
                        });
                      },
                    ),
                    SizedBox(height: 10.0),
                    RaisedButton(
                      child: Text('Create Account',
                          style: TextStyle(color: Colors.red[900])),
                      elevation: 8.0,
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7.0))),
                      color: Theme.of(context).accentColor,
                      onPressed: () {
                        print(_nameValue);
                        print(_emailValue);
                        print(_passwordValue);
                        Navigator.pushReplacementNamed(context, '/businesses');
                      },
                    )
                  ],
                ))));
  }
}
