

import 'package:flutter/material.dart';

class catageories extends StatelessWidget
{
  @override

  Widget build(BuildContext context) {
   
      return Container(
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              padding: EdgeInsets.all(25.0),
              height: 50.0,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(color: Color.fromARGB(255, 241, 233, 233), offset: Offset(3,3), blurRadius: 2.0,spreadRadius: 4.0 )
                ]
            
              ),
              child: const CircleAvatar(backgroundImage: AssetImage('images/food.jpg'),)
            )
          ],
        ),
      );
  }
}