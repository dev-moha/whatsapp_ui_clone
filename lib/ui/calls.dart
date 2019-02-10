


import 'package:flutter/material.dart';

class Calls extends  StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        child: ListTile(

            leading: new CircleAvatar(

              radius: 35.0,

              backgroundImage: AssetImage("assets/flutter1.png"),

            ),
title: Text("flutter",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
subtitle: Text("you have a call",style: TextStyle(fontSize: 16.0),),
trailing: Icon(Icons.call,color: new Color(0xff25D366),size: 30.0,),
      
        
          ),
//padding: EdgeInsets.only(top: 10.0),
     


      ),

floatingActionButton:Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 450.0)),
            FloatingActionButton(
              child: Icon(Icons.call,color: Colors.white,),
              onPressed: (){},
            ),
         
          ],
        ),


    );
  }
}