import 'package:flutter/material.dart';

import './pages/auth.dart';
import './pages/communities/community.dart';
import './pages/neighborhoods/neighborhoods.dart';
import './pages/categories/category.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.teal[200],
        accentColor: Colors.orange,
      ),
      home: AuthPage(),
      routes: {
        '/community': (BuildContext context) => CommunityPage(),
        '/neighborhoods': (BuildContext context) => NeighborhoodPage(),
        '/categories': (BuildContext context) => CategoryPage(),
      },
    );
  }
}
