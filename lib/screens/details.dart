import 'package:flutter/material.dart';

import '../res/consts_global.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 10.0,
        title: Text("details", style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(5.0),
          shrinkWrap: true,
          children: [
          Container(
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 70.0,
              backgroundColor: Colors.blue,
              backgroundImage: AssetImage('assets/profil3.png'),
            ),
          ),
          Card(
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(myQuality, textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.email,
                color: Colors.white,
              ),
              SizedBox(
                width: 5.0,
              ),
              Text(
                myEmail,
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Card(
            color: Colors.lightBlue,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Text(myDescription, 
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.white, fontSize: 15.0)),
            ),
          ),
          Card(
            color: Colors.lightBlue,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Text(myDescription2, 
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.white, fontSize: 15.0)),
            ),
          ),
        ]),
      ),
    );
  }
}
