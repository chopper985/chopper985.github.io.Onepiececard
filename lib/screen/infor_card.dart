import 'package:flutter/material.dart';

class InforCardOP extends StatefulWidget {
  final String name;
  final String birth;
  final String descripe;
  final String height;
  final String bonus;
  final String image;
  final index;

  InforCardOP(
      {required this.name,
      required this.birth,
      required this.descripe,
      required this.height,
      required this.bonus,
      required this.image,
      required this.index});

  @override
  _InforCardOPState createState() => _InforCardOPState();
}

class _InforCardOPState extends State<InforCardOP> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.name,
          style: TextStyle(
              color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
          constraints: BoxConstraints.expand(),
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
                    child: Center(
                        child: FadeInImage.assetNetwork(
                      placeholder: 'assets/circle.gif',
                      image: widget.image,
                    )) // FadeInImage.assetNetwork
                    ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Tên: ' + widget.name,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Ngày sinh: ' + widget.birth,
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                  child: Text(
                    'Chiều cao: ' + widget.height,
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                  child: Text(
                    'Tiền thưởng: ' + widget.bonus,
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                  child: Text(
                    'Mô tả: ' + widget.descripe,
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
