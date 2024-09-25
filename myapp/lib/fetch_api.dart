import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class fetch_api extends  StatefulWidget
{
  @override

  State<fetch_api> createState()=> _fetchState_api();

}

class _fetchState_api extends State<fetch_api>
{
    String? getData;
    Map? mapData;

    Future fetchData() async {

        http.Response response;

        final uri = Uri.parse("https://fakestoreapi.com/products/1");

        response = await http.get(uri);

         if(response.statusCode == 200)
          {
             setState(() {
            getData = response.body;
            mapData = json.decode(response.body);

          });
          }        
    }
    
  @override

  void initState()
  {
    super.initState();
    fetchData();
  }

  @override 
  Widget build(BuildContext context) {

      return  Center(
        child: Column(
          children: [
           Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 50),
          
           child:  Table(
              border: TableBorder.all(),
              children: [
                TableRow(
                  children: [
                    Text("Sr. No.",textAlign: TextAlign.center),
                    Text("Title",textAlign: TextAlign.center,),
                    Text("Description",textAlign: TextAlign.center,),
                    Text("Price",textAlign: TextAlign.center,),
                    Text("Image",textAlign: TextAlign.center,)
                  ]
                ),

                TableRow(
                  children: [
                    Text("${mapData!['id'].toString()}",textAlign: TextAlign.center,),
                    Text("${mapData!['title'].toString()}",textAlign: TextAlign.center,),
                    Text("${mapData!['description'].toString()}",textAlign: TextAlign.center,),
                    Text("${mapData!['price'].toString()}",textAlign: TextAlign.center,),
                    Image.network(mapData!['image'],height: 100,width: 80,)
                  ]
                )

              ],
            ),
           )
          ],
        )
      );
  }
}