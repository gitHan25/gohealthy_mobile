import 'package:flutter/material.dart';
import 'package:gh_mobile/screen/home.dart';

import 'package:gh_mobile/auth/loginOrRegister.dart';
import 'package:gh_mobile/screen/home.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}