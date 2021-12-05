import 'package:flutter/material.dart';

class LabLayout0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(                                 //JOHN DELEO
      appBar: AppBar(
        title: Text('Lab Layout0-John DeLeo'),
      ),
      //John DeLeo
      body: Stack(
        children: <Widget>[
          SizedBox(
            width: 250,
            height: 250,
            child: Container(color: Colors.red),
                                                //John DeLeo
          ),
          SizedBox(
            width: 150,
            height: 150,
            child: Container(color: Colors.white),

          ),
          Positioned(
            left: 100,
            top: 100,
            width: 50,
            height: 50,
            child: Container(color: Colors.green),

          ),
        ],

      ),
    );
  }
}
