import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('John DeLeo Business Card'),
    ),
    body:Container(
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(3.0),
      width: 300,
      height: 150,
      decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
      child: Column(
        children: [   //John DeLeo
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.account_circle, size: 50),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('John DeLeo',
                    style: Theme.of(context).textTheme.headline5,),
                  Text('App Developer'),
                ],
              )
            ],              //JOHN DELEO
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text('300 Jay St'),
              Text('123-456-7890')
            ],
          ),
          SizedBox(height: 3.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.accessibility),
              Icon(Icons.timer),
              Icon(Icons.phone_android),
              Icon(Icons.phone_iphone),
            ],
          )
        ],
      ),
    )
    );
  }
}
