

import 'package:flutter/material.dart';
import 'package:myapp/fetch_api.dart';

void main()
{
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home:  Scaffold(
        appBar: AppBar(
          title: Text('API Intigration',style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 98, 116, 131),
        ),

        body: fetch_api(),
    )
  ));
}