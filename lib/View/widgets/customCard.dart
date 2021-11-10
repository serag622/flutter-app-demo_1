import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  String cardText;
  CustomCard(this.cardText);

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.1,
          child: Center(
              child: Text(
            "${widget.cardText}",
            style: TextStyle(fontSize: 20),
          )),
        ),
      ),
    );
  }
}
