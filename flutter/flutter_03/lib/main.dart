import 'package:app/GridViewDemo.dart';
import 'package:app/LoginExample.dart';
import 'package:app/profileExample.dart';
import 'package:flutter/material.dart';
import 'examples.dart';
   void main(){
  runApp(const MyApp());
   }

   class MyApp extends StatelessWidget{
     const MyApp({super.key});

     @override
     Widget build(BuildContext context) {
       return MaterialApp(
         title: 'Example',
         theme: ThemeData(
           primaryColor: Colors.blue,
           useMaterial3: true,
         ),
         home: LoginExample(),
       );
    // TODO: implement build
     throw UnimplementedError();
  }
   }
