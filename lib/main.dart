
import 'package:flutter/material.dart';
import 'package:mero_ghadi/pages/choose_location.dart';
import 'package:mero_ghadi/pages/home.dart';
import 'package:mero_ghadi/pages/loading.dart';


void main() {
  runApp(MaterialApp(
   initialRoute: '/home',
    routes: {
      '/':(context)=>Loading(),
      '/home':(context)=>Home(),
      '/locations':(context)=>ChooseLocation()
    },

  ));
}

