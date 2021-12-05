import 'package:flutter/material.dart';


class GradeCalculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grade Calculator-John DeLeo',
      theme: ThemeData(
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Grade Calculator-John DeLeo'),
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
  int _counter = 0;
  String t1,t2,result='';
  double n2;
  GradeCalculate mygrade = GradeCalculate();

  void _incrementCounter() {
    setState(() {
      result = mygrade.getLetter(t1, n2);

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(decoration: BoxDecoration(border: Border.all(), color: Colors.yellow),
                padding: EdgeInsets.all(10.0),
                child: Text(result, style: TextStyle(backgroundColor: Colors.yellow,
                    fontFamily: 'Courier',fontSize: 16),)),
            SizedBox(height: 12),
            TextFormField(keyboardType: TextInputType.text,
              decoration: InputDecoration(labelText: 'Enter Students Name', border: OutlineInputBorder(), hintText: 'Enter a name'),
              onChanged: (text){
                t1=text;
              },),
            SizedBox(height: 8.0,),
            TextFormField(keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Enter Students Grade', border: OutlineInputBorder(), hintText: 'Enter a grade'),
                onChanged: (text){
                  t2=text;
                  n2=double.parse(t2);
                }),
            FlatButton(onPressed: _incrementCounter,
              child: Container(child: Text('Find your grade'),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(color: Colors.green,border: Border.all())),
            )

          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class GradeCalculate{
  double grade = 0.0;
  String _letter='', name='';
  GradeCalculate({this.name, this.grade});

  String getLetter(name,grade){

    if(grade > 100 || grade < 0.0){
       _letter = '1-100 only please';
      return _letter;
    }
    else if(grade < 100.0 && grade >= 90){
      _letter = 'A';
    }
    else if(grade < 90 && grade >= 80){
      _letter = 'B';
    }
    else if(grade < 80 && grade >= 70){
      _letter = 'C';
    }
    else if(grade < 70 && grade >= 60){
      _letter = 'D';
    }
    else if(grade >= 0 && grade < 60){
      _letter = 'F';
    }
    return name+' got '+_letter+' grade ';
  }       //JOHN DELEO
}
