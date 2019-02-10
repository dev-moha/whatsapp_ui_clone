

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui/chatsScreen.dart';
import 'package:whatsapp_clone/ui/statusScreen.dart';
import 'package:whatsapp_clone/ui/calls.dart';
class WhatsappHome extends  StatefulWidget {
  @override
  _WhatsappHomeState createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends State<WhatsappHome> with SingleTickerProviderStateMixin{
  TabController tabController;
  @override
    void initState() {
      // TODO: implement initState
      super.initState();
    tabController =  TabController(length: 4,vsync: this);
    }

    @override
      void dispose() {
        // TODO: implement dispose
              tabController.dispose();
   
        super.dispose();
  
      }
  @override

  Widget build(BuildContext context) {
     return Scaffold(
 
     appBar: new AppBar(
       backgroundColor: new Color(0xff075E54),
      title: new Text("WhatsApp",style: TextStyle(fontSize: 25.0),),
       actions: <Widget>[
         new IconButton(
           icon: Icon(Icons.search,color: Colors.white,size: 25,),
         ),
           new IconButton(
           icon: Icon(Icons.more_horiz,color: Colors.white,size: 25,),
         )
       ],

 bottom: TabBar(controller: tabController,unselectedLabelColor: Colors.white,indicatorColor: Colors.white,labelColor: Colors.white,tabs: <Widget>[           
        new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: "CHATS",),
            new Tab(text:"STATUS"),
            new Tab(text:"CALLS"),


      ],),
     ),



body:  Padding(
  padding: const EdgeInsets.only(top: 30.0),
  child:   new TabBarView(
  
          controller: tabController,
  
          children: <Widget>[
  
            new Container(
              alignment: Alignment.center
              ,child: new Icon(Icons.camera_alt,size: 60.0,),),
  
   new Column(
     children: <Widget>[
          new ChatsScreen("ali ","Hey flutter , your are amazing ","avatar1.png","12:00"),
          new ChatsScreen("ali","hello ","avatar2.png","11:00"),
          new ChatsScreen("flutter","hey flutter ,your are so good","flutter1.png","10:00"),            
          new ChatsScreen("omar","hey ","avatar2.png","9:00"),
          new ChatsScreen("flutter","hey ","flutter1.png","8:00"),
          new ChatsScreen("flutter","hey ","avatar1.png","7:00"),
 
Padding(
  padding: const EdgeInsets.only(top: 30.0,left: 330.0),
  child:   new FloatingActionButton(
  
  
  
     backgroundColor: new Color(0xff25D366),
  
  
  
     child: Icon(Icons.comment),
  
  
  
   ),
),
     ],
   ),

 
new StatusScreen(),

new Calls(),
  
  
          ],
  
        ),
),






);
      


  }





}

