import 'package:flutter/material.dart';
import 'package:app_2/Models/post.dart';
import 'package:app_2/View/Screens/homePage.dart';
import 'package:app_2/View/widgets/customCard.dart';

class ProfileScreen extends StatefulWidget {
  Welcome post;
  ProfileScreen(this.post);
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child: Text(
            "${widget.post.title}",
            style: TextStyle(fontSize: 20),
          )),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child:
                  Text("${widget.post.body}", style: TextStyle(fontSize: 20))),
        ),
      ]),
    );
  }
}
