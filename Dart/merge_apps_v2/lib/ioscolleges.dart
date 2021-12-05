import 'package:flutter/material.dart';

class IosColleges extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('John DeLeo IosColleges'),
      ),
      body: Center(
        //JOHN DELEO
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CollegeButtons(collegename: 'WSU', college: '/Wsu', color1: Colors.black, color2: const Color(0xFFFFC217)),
                CollegeButtons(collegename: 'CUNY', college: '/Cuny',color1: const Color(0xFF1D3A83), color2: const Color(0xFF636466)),
                CollegeButtons(collegename: 'ISU', college: '/Isu',color1: const Color(0xFFF47920), color2: const Color(0xFF000000)),
                CollegeButtons(collegename: 'OU', college: '/Ou',color1: const Color(0xFF841617), color2: const Color(0xFFDDCBA4)),
                CollegeButtons(collegename: 'NYU', college: '/Nyu',color1: const Color(0xFF57068c), color2: const Color(0xFFf2f2f2))
                //JOHN DELEO
              ],),
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CollegeButtons(collegename: 'DUKE', college: '/Duke',color1: const Color(0xFF003087), color2: const Color(0xFFFFFFFF),),
                CollegeButtons(collegename: 'OSU', college: '/Osu',color1: const Color(0xFFe5c00), color2: Colors.black),
                CollegeButtons(collegename: 'OPSU', college: '/Opsu',color1: Color.fromARGB(255,207,10,44), color2: Color.fromARGB(255,0,31,91)),
                CollegeButtons(collegename: 'UTULSA', college: '/Utulsa',color1: const Color(0xFFE0CE78), color2: const Color(0xFFF5002E)),
                CollegeButtons(collegename: 'KU', college: '/Ku',color1: const Color(0xFF0051ba), color2: const Color(0xFFe8000d))
              ],
            ),
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CollegeButtons(collegename: 'RICE', college: '/Rice',color1: const Color(0xFF00205B), color2: const Color(0xFFC1C6C8)),
                CollegeButtons(collegename: 'BC', college: '/Bc',color1: const Color(0xFF002145), color2: const Color(0xFF97D4E9)),
                CollegeButtons(collegename: 'MIT', college: '/Mit',color1: const Color(0xFF8A8B8C), color2: const Color(0xFFA31F34)),
                CollegeButtons(collegename: 'BROWN', college: '/Brown',color1: const Color(0xFF381C00), color2: const Color(0xFFE4002B)),
                CollegeButtons(collegename: 'SUNY', college: '/Suny',color1: const Color(0xFF004C93), color2: const Color(0xFF838687))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CollegeButtons extends StatelessWidget {
  final String collegename;
  final String college;
  final Color color1;
  final Color color2;
  CollegeButtons({this.collegename,this.college, this.color1, this.color2});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: color1,
      child: Text(collegename, style: TextStyle(color: color2),),
      //onPressed: ()=> Navigator.push(context,
      // MaterialPageRoute(builder: (BuildContext context)=>college)),
      onPressed: ()=>Navigator.pushNamed(context, college),
    );
  }
}