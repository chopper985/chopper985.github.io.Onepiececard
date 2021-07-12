import 'package:flutter/material.dart';
import 'package:one_piece_card/widget/cardop.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:one_piece_card/screen/infor_card.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  @override
  Widget build(BuildContext context) {
    //create a new player
    return Scaffold(
        appBar: AppBar(
          title: Text('Thẻ nhân vật',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
        ),
        body: Container(
          child: StreamBuilder(
            stream: FirebaseFirestore.instance.collection('carts').snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return Container(
                  child: Center(child: CircularProgressIndicator()),
                );
              }            
              var data = snapshot.data!.docs;
              return ListView.builder(
                padding: EdgeInsets.only(top: 12.0),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () { Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => InforCardOP(
                                index: data[index].reference,
                                name: data[index]['name'],
                                image: data[index]['image'],
                                birth: data[index]['birth'],
                                bonus: data[index]['bonus'],
                                descripe: data[index]['descripe'],
                                height: data[index]['height'],),));
                                
                          },
                      child: CardOP(
                        data: data[index],
                        index: data[index].reference,
                      ));
                },
              );
            },
          ),
        ));
  }
}
