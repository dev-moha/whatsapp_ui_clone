

import 'package:flutter/material.dart';

class ChatsScreen extends  StatelessWidget {
  final String name;
  final String message;
  final String image;
  final String time;
  ChatsScreen(this.name,this.message,this.image,this.time);
  @override
  Widget build(BuildContext context) {
      return Container(

child:ListTile(

            leading: new CircleAvatar(

              radius: 35.0,

              backgroundImage: AssetImage("assets/${image}"),

            ),
title: Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
subtitle: Text(message,style: TextStyle(fontSize: 16.0),),
trailing: Text(time),
      
        
          ),
     





 );


 

     
  }
}