import 'package:flutter/material.dart';
import 'cities.dart';
import 'colleges.dart';
import 'countries.dart';
import 'states.dart';

import 'ioscolleges.dart';
import 'BusinessCard.dart';
import 'Test1Review.dart';
import 'customclass.dart';
import 'lab0layouts.dart';
import 'calculator.dart';
import 'tipcalc.dart';
import 'GradeCalc.dart';
import 'kelvincalc.dart';
import 'guessgame.dart';
import 'picturegallery.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apps By John DeLeo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes:{
        '/': (context) => MyHomePage(title: 'Apps By John DeLeo'),
        //colleges
        '/Wsu': (context) =>Wsu(),
        '/Cuny': (context) => Cuny(),
        '/Isu': (context) => Isu(),
        '/Ou':(context) => Ou(),
        '/Nyu':(context) => Nyu(),
        '/Duke':(context) => Duke(),
        '/Osu':(context) => Osu(),
        '/Opsu':(context) =>Opsu(),
        '/Utulsa':(context) => Utulsa(),
        '/Ku':(context) => Ku(),
        '/Rice':(context) => Rice(),
        '/Bc':(context) => Bc(),
        '/Mit':(context) => Mit(),
        '/Brown':(context) => Brown(),
        '/Suny':(context) => Suny(),

        //cities
        '/Wichita': (context) =>Wichita(),
        '/Norman': (context) =>Norman(),
        '/Stillwater': (context) =>Stillwater(),
        '/Lawrence': (context) =>Lawrence(),
        '/Cambridge': (context) =>Cambridge(),
        '/Brooklyn': (context) =>Brooklyn(),
        '/Goodwell': (context) =>Goodwell(),
        '/Houston': (context) =>Houston(),
        '/Pocatello': (context) =>Pocatello(),
        '/Durham': (context) =>Durham(),
        '/Tulsa': (context) =>Tulsa(),
        '/Vancouver': (context) =>Vancouver(),
        '/Albany': (context) =>Albany(),

        //states
        '/Kansas': (context) =>Kansas(),
        '/Oklahoma': (context) =>Oklahoma(),
        '/Massachusetts': (context) =>Massachusetts(),
        '/Newyork': (context) =>Newyork(),
        '/Texas': (context) =>Texas(),
        '/RhodeIsland': (context) =>RhodeIsland(),
        '/Idaho': (context) =>Idaho(),
        '/NCarolina': (context) =>NCarolina(),
        '/Bc': (context) =>Bc(),
        '/BritishColumbia':(context)=>BritishColumbia(),

        //Countries
        '/Usa': (context) =>Usa(),
        '/Canada': (context) =>Canada(),

        //Projects
        '/IosColleges':(context)=>IosColleges(),
        '/BusinessCard':(context)=>BusinessCard(),
        '/Test1Review':(context)=>Test1Review(),
        //'/CustomClass':(context)=>CustomClass(),
        '/LabLayout0':(context)=>LabLayout0(),
        '/Calculator':(context)=>Calculator(),
        '/Tipcalc':(context)=>TipCalculator(),
        '/Gradecalc':(context)=>GradeCalculator(),
        '/Kelvincalc':(context)=>KelvinCalculator(),
        '/GuessGame':(context)=>GuessingGame(),
        '/PicGallery':(context)=>PictureGallery(),


      },
      //home: MyHomePage(title: 'John DeLeo Colleges'),
    );
  }
}                   //JOHN DELEO

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
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
        //JOHN DELEO
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CollegeButtons(collegename: 'IOS Colleges', college: '/IosColleges', color1: Colors.black, color2: const Color(0xFFFFC217)),
                CollegeButtons(collegename: 'Business Card', college: '/BusinessCard',color1: const Color(0xFF1D3A83), color2: const Color(0xFF636466)),
                //CollegeButtons(collegename: 'Test1 Review', college: '/Test1Review',color1: const Color(0xFFF47920), color2: const Color(0xFF000000)),
                //CollegeButtons(collegename: 'Custom Class', college: '/CustomClass',color1: const Color(0xFF841617), color2: const Color(0xFFDDCBA4)),
                //CollegeButtons(collegename: 'Lab Layout 0', college: '/LabLayout0',color1: const Color(0xFF57068c), color2: const Color(0xFFf2f2f2)),
                CollegeButtons(collegename: 'Calculator', college: '/Calculator', color1: Colors.black, color2: Colors.white),
                CollegeButtons(collegename: 'Picture Gallery', college: '/PicGallery', color1: Colors.black, color2: Colors.white),
                                          //JOHN DELEO
            ],),
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CollegeButtons(collegename: 'Tip Calculator', college: '/Tipcalc', color1: Colors.black, color2: Colors.red),
                CollegeButtons(collegename: 'Grade Calculator', college: '/Gradecalc', color1: Colors.black, color2: Colors.blue),
                CollegeButtons(collegename: 'Celcius to Kelvin Calculator', college: '/Kelvincalc', color1: Colors.black, color2: Colors.green),
                CollegeButtons(collegename: 'Number Guessing Game', college: '/GuessGame', color1: Colors.black, color2: Colors.pink),

                //JOHN DELEO
              ],),
          ],
        ),
      ),
    );
  }
}