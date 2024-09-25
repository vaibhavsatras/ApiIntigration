

import 'package:flutter/material.dart';
import 'package:myapp/pages/home.dart';

void main()
{
  runApp(myapp());
}

class myapp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      color: Colors.white,
      title: "My Application",

      initialRoute: '/',

      routes: {
        '/': (context)=>home()
      },

    );

  }
}