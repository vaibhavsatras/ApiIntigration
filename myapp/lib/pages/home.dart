

import 'package:flutter/material.dart';
import 'package:myapp/widgets/appbar.dart';
import 'package:myapp/widgets/catageories.dart';

class home extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Scaffold(

        body: ListView(
          children: [
            appbar(),

            Container(

                height: 40,
                width: 30,
                margin: const EdgeInsets.all(20),
                padding: EdgeInsets.only(left: 10),
                  decoration: const BoxDecoration(
                    color:  Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
            
                        BoxShadow(color: Color.fromARGB(255, 241, 233, 233), offset: Offset(0,3), blurRadius: 2.0,spreadRadius: 5.0 )
                  
                    ]
                  ),

                child:  Padding(

                  padding: EdgeInsets.symmetric(horizontal: 10),

                  child: Row(
                    children: [
                      Icon(Icons.search,size: 20,),
                      Container(
                        margin: EdgeInsets.only(bottom: 11),
                        height: 50,
                        width: 200,
                        child: Padding(padding: EdgeInsets.symmetric(horizontal: 18),
                          child: TextFormField(decoration: InputDecoration(hintText: "Search",border: InputBorder.none),),
                        )
                      ),
                      
                     Container(
                      padding: EdgeInsets.only(left: 35.0),
                      child: Icon(Icons.filter_list),
                     )
                    ],
                  ),
                
                )
            ),

            Container(
               margin: const EdgeInsets.all(20),
              child: Text("Categories",style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold),),
            ),

            catageories()

          ],
        ),

      )
    );
  }
}