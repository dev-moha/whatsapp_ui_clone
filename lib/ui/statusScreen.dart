

import 'package:flutter/material.dart';

class StatusScreen extends  StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
     return Scaffold(


       body: new Container(

  child: Padding(
    padding: const EdgeInsets.only(top: 2.0),
    child: ListTile(
    leading:   new CircleAvatar(
                   radius: 35.0,

                  backgroundImage: AssetImage("assets/flutter1.png"),
                 child: Padding(
                   padding: const EdgeInsets.only(top: 30.0,left: 45.0),
                   child: Image.asset("assets/add.png",width: 30.0,height: 30.0,),
                 ),
              
               ),


              title: Text("My Status",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
              subtitle: Text("Tap to Add Status Update",style: TextStyle(fontSize: 16.0),),
    ),
  ),
             
                      
                
  
    
     ),


 floatingActionButton:Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 400.0)),
            FloatingActionButton(
              child: Icon(Icons.edit,color: Colors.white,),
              onPressed: (){},
            ),
            FloatingActionButton(
                backgroundColor: new Color(0xff25D366),

              child: Icon(Icons.camera_alt,color: Colors.white,),
              onPressed: (){},
            ),
          ],
        ),



     );
     
  }
}