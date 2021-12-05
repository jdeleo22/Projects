import 'dart:convert';

import 'package:flutter/material.dart';


class KelvinCalculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kelvin Calculator John DeLeo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Kelvin Calculator John DeLeo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //int _counter = 0;
  double input = 0;
  String output = '';
  Converter convert1 = new Converter();
  Color col;

  void _incrementCounter() {
    setState(() {
      output=convert1.doit(input);
      col = convert1.clr(input);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(output,
              style: TextStyle(fontFamily: 'ariel',
                  backgroundColor: col,fontSize: 20),),
            SizedBox(height: 12.0),
            TextFormField(decoration: InputDecoration(border: OutlineInputBorder(),
                labelText: 'Enter Temperature in Celcius', hintText: 'Only numbers'),
              keyboardType: TextInputType.number,
              onChanged: (text){
                input = double.parse(text);
              },
            ),
            FlatButton(onPressed: _incrementCounter,
              child: Container(child: Text('Convert to Kelvin'),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(color: Colors.blue,border: Border.all())),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Converter{
  double celsius;
  String output; String temp = '';
  Color col = Colors.orange;
  Converter({this.celsius,this.output});
  String doit(celsius){
    if (celsius >= 30){
      temp = 'Hot';
    }
    else if (celsius < 30 && celsius > 18){
      temp = 'Warm';
    }
    else if (celsius < 18 && celsius >0){
      temp = 'Cold';
    }
    else if (celsius < 0 && celsius > -20){
      temp = 'Very Cold';
    }
    else if (celsius < -20 ){
      temp = 'Extreme Cold';
    }

    return (273+celsius).toString()+' degrees kelvin. '+'It is '+temp;
  }
  //JOHN DELEO
  Color clr(celsius){
    if (celsius >= 30){
      col =Colors.red;
    }
    else if (celsius < 30 && celsius > 18){
      col =Colors.orange;
    }
    else if (celsius < 18 && celsius >0){
      col =Colors.lightGreen;
    }
    else if (celsius < 0 && celsius > -20){
      col =Colors.lightBlue;
    }
    else if (celsius < -20 ){
      col =Colors.blueAccent;
    }
    return col;
  }

}