import 'package:flutter/cupertino.dart';

class NavMenuItem{

  String title;
  IconData icon ;
  Function destination;

  NavMenuItem(this.title, this.icon, this.destination);
}