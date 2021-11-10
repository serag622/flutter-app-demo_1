import 'package:flutter/material.dart';
import 'package:app_2/Models/post.dart';
import 'package:app_2/Services/PostsService.dart';
import 'package:app_2/View/Screens/profilePage.dart';
import 'package:app_2/View/widgets/customCard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Welcome> posts = [];
  bool isLoading = true;

  getPosts() async {
    posts = await PostsService().getPosts();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome")),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: posts.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ProfileScreen(posts[index])));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomCard("${posts[index].title}"),
                    ));
              },
            ),
    );
  }
}
