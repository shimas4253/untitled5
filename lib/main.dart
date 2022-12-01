import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/homepage.dart';

void main(){
  runApp(Myapp());
}
 class Myapp extends StatelessWidget {
   const Myapp({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home:home() ,
       debugShowCheckedModeBanner: false,
     );
   }
 }
