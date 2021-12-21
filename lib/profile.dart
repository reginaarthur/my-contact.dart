

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.lightBlue.shade50,
    appBar: AppBar(iconTheme: const IconThemeData(color: Colors.black),backgroundColor: Colors.white,
    title: Padding(
      padding: const EdgeInsets.only(left:60.0),
      child: Text("Profile",style: TextStyle(color: Colors.black),),
    ),
    actions: [Icon(Icons.more_vert,color: Colors.black,)],
    bottom: PreferredSize(child: Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Column(children: [
        CircleAvatar(backgroundImage: NetworkImage("https://media.istockphoto.com/photos/middle-aged-man-portrait-picture-id1285156699?b=1&k=20&m=1285156699&s=170667a&w=0&h=l8Bs_xHY2um7IUHKXj7szXvNDW5jMJmnLMuvQWO5vEo="),
        radius: 50,),SizedBox(height: 12,),
        Text("Jeffery Amoah",style: TextStyle(fontWeight: FontWeight.bold),),
        Text("Takorodi, Ghana",style: TextStyle(color: Colors.grey),)

      ],),
    ),
     preferredSize: Size.fromHeight(200)),),
    body: ListView(children: [
      Container(child:  ListTile(title: Text("Mobile"),
      subtitle: Text("+233 545 365 777"),
      
      ),)
    ],),
      
    );
  }
}