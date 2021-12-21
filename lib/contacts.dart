import 'package:contacts/profile.dart';
import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  Contacts({Key? key}) : super(key: key);
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "My Contacts",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://media.istockphoto.com/photos/camel-isolated-on-the-white-background-picture-id1190556631?b=1&k=20&m=1190556631&s=170667a&w=0&h=eevM9LShRqdfv20GYofeAT1CLz2KUyhgYmTGLVFOmIQ="),
              ),
            )
          ],
          bottom: PreferredSize(
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    prefixIcon: Icon(Icons.search_rounded),
                    hintText: "Search by name or number"),
              ),
              preferredSize: Size.fromHeight(90)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
              controller: _scrollController,
              shrinkWrap: true,
              children: [
                Text("Recents"),
                NewWidget(
                  image: "https://images.unsplash.com/photo-1602491453631-e2a5ad90a131?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1527&q=80",
                  name: "Dearie",
                  number: "+233 554 624 352",
                ),
                Divider(
                  indent: 25,
                  thickness: 1.2,
                ),
                NewWidget(
                  image: "https://images.unsplash.com/photo-1555169062-013468b47731?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YW5pbWFsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                  name: "Waters",
                  number: "+233 546 787 909",
                ),
                Divider(
                  indent: 25,
                  thickness: 1.2,
                ),
                NewWidget(
                  image: "https://images.unsplash.com/photo-1497206365907-f5e630693df0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YW5pbWFsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                  name: "Brown",
                  number: "+233 205 654 342",
                ),
                Text("Contacts"),
                NewWidget(
                   image: "https://images.unsplash.com/photo-1602491453631-e2a5ad90a131?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1527&q=80",
                  name: "Dearie",
                  number: "+233 554 624 352",
                ),
                Divider(
                  indent: 25,
                  thickness: 1.2,
                ),
                NewWidget(
                  image: "https://images.unsplash.com/photo-1555169062-013468b47731?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YW5pbWFsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                  name: "Waters",
                  number: "+233 546 787 909",
                ),
                Divider(
                  indent: 25,
                  thickness: 1.2,
                ),
                NewWidget(
                   image: "https://images.unsplash.com/photo-1497206365907-f5e630693df0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YW5pbWFsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                  name: "Brown",
                  number: "+233 205 654 342",
                ),
                Divider(
                  indent: 25,
                  thickness: 1.2,
                ),
                  NewWidget(
                   image: "https://images.unsplash.com/photo-1517849845537-4d257902454a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YW5pbWFsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                  name: "Christabel",
                  number: "+233 235 121 342",
                ),
                Divider(
                  indent: 25,
                  thickness: 1.2,
                ),
                NewWidget(
                   image: "https://images.unsplash.com/photo-1546182990-dffeafbe841d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YW5pbWFsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                  name: "Carabel",
                  number: "+233 244 121 342",
                ),
              ])),
        floatingActionButton: FloatingActionButton(onPressed:(){ Navigator.push(context,
         MaterialPageRoute(builder:(context)=> const Profile()));
        },
        child: Icon(Icons.add),
        )
        );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
    required this.image,
    required this.name,
    required this.number
  }) : super(key: key);
  final String image;
  final String name;
  final String number;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(image),
        ),
        title: Text(name),
        subtitle: Text(number),
        trailing: Icon(Icons.more_horiz));
  }
}
