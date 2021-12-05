import 'package:flutter/material.dart';
import 'dart:math';


class GuessingGame extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guessing Game-John DeLeo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Guessing Game-John DeLeo'),
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
  int number = 0;
  String output = '';
  Guess try1 = new Guess();

  void _incrementCounter() {
    setState(() {
      output = try1.checkguess(number);
    });
  }

  void _resetnum() {
    try1.reset(100);
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(output),
                RaisedButton(
                  onPressed: _incrementCounter,
                  child: Text('Guess It'),
                )
              ],
            ),
            SizedBox(height: 8),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your Guess',
                hintText: '1-100 please',
              ),
              keyboardType: TextInputType.number,
              onChanged: (text){
                number = int.parse(text);
              },
            ),
            FlatButton(child: Text('Reset'),
              onPressed: _resetnum,)
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
                                          //JOHN DELEO
class Guess{
  int number=0, count = 0;
  int secret = Random().nextInt(100);
  String output = '';
  Guess({this.number});
  String checkguess(number){
    print('Secret number is '+secret.toString());
    count = count+1;
    if (number>secret){
      output = 'Too High';
    }
    else if (number < secret){
      output = 'Too Low';
    }
    else if (number == secret){
      output = 'Congratulations, it took '+ count.toString() + " tries";
    }
    return output;
  }           //JOHN DELEO
  void reset(number){
    secret = Random().nextInt(100);
    count = 0;
  }
}