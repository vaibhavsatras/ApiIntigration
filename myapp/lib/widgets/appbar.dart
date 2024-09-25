

import 'package:flutter/material.dart';

class appbar extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
           decoration: const BoxDecoration(
            color:Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(100)),
            boxShadow: [
              BoxShadow(color: Color.fromARGB(255, 241, 233, 233), offset: Offset(0,3), blurRadius: 2.0,spreadRadius: 5.0 )
              
            ]
           ),
           child: const Padding(padding: EdgeInsets.all(10),
           child: Icon(Icons.menu),
           ),
          ),
           Container(
           decoration: const BoxDecoration(
            color:Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(100)),
            boxShadow: [
              BoxShadow(color: Color.fromARGB(255, 241, 233, 233), offset: Offset(0,3), blurRadius: 2.0,spreadRadius: 5.0 )
            ]
           ),
           child: const Padding(padding: EdgeInsets.all(10),
           child: Icon(Icons.notifications),
           ),
          )
        ],
      ),
      );

  }
}