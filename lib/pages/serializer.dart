import 'package:flutter/foundation.dart';

class Business {
  const Business({
    @required this.id,
    @required this.title,
    @required this.image,
    @required this.description
  }) :

    assert (id !=null),
    assert (title !=null),
    assert (image !=null),
    assert (description !=null);

  final int id;
  final String title;
  final String image;
  final String description;




}

