import 'package:flutter/material.dart';
import 'package:one_piece_card/model/re_card.dart';

class CardOP extends StatefulWidget {
  final index;
  final data;
  CardOP({required this.index, required this.data});

  @override
  _CardOPState createState() => _CardOPState();
}

class _CardOPState extends State<CardOP> {
  ReCart? reCart;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    reCart = ReCart.fromFirestore(widget.data);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            border: Border.all(width: 2, color: Colors.pinkAccent),
            gradient: LinearGradient(stops: [
              0.1,
              0.4,
              0.7,
              0.9
            ], colors: <Color>[
              Color(0xFF4A148C),
              Color(0xFF9C27B0),
              Color(0xFFFF4081),
              Color(0xFFFF80AB),
            ])),
        height: 60,
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(8, 8, 16, 0),
        padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Row(
          children: [
            Expanded(
                child: FadeInImage.assetNetwork(
              image: reCart!.imageChibi,
              width: 60,
              placeholder: 'images/ocsen.gif',
            )),
            Expanded(
              flex: 4,
              child: Center(
                child: Text(reCart!.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            )
          ],
        ));
  }
}
