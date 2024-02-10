import 'package:flutter/material.dart';

import 'details.dart';
import '../res/consts_global.dart';

class VisitCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 10.0,
        title: Text("Ma carte de visite", style: TextStyle(color: Colors.white),),
      ),
      body: _buildBody(context),
    );
  }
}

Widget _buildBody(BuildContext context){
  return Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 90.0,
                backgroundColor: Colors.blue,
                backgroundImage: AssetImage('assets/profil.png'),
              ),
              Card(
                color: Colors.lightBlue,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(myName, style: TextStyle(color: Colors.white)),
                ),
              ),
              Card(
                color: Colors.lightBlue,
                margin: EdgeInsets.only(top: 20.0, bottom: 15.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(myJob,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Background color
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return Details();
                  }));
                },
                child: Container(
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Voir plus", style: TextStyle(color: Colors.white)),
                      Icon(Icons.arrow_right, color: Colors.white,),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}