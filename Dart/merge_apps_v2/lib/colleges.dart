import 'package:flutter/material.dart';
import 'cities.dart';

class College extends StatelessWidget {
  final String collegename, collegetext, collegelogo, citytext;
  final String citywidget;
  College({this.collegename, this.collegetext, this.collegelogo, this.citytext, this.citywidget});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text(collegename),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RaisedButton(color: Colors.lightBlue, onPressed: () =>Navigator.pop(context), child: Text('Back'),
                ),
                Image.asset(collegelogo),
                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(collegetext)
                ),
                RaisedButton(color: Colors.lightBlue,
                  child: Text(citytext),
                  //onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => citywidget)),
                  onPressed: ()=>Navigator.pushNamed(context, citywidget),
                )
              ],
            )
        )
    );
  }
}
//John DeLeo
class Wsu extends College{
  Wsu()
  : super (
    collegename: 'Wichita State University',
    collegetext: 'Located in Wichita, KS, tuition for Computer Science is \$26k annually',
    collegelogo: 'lib/images/wsu.jpg',
      citytext: 'City of Wichita',
      citywidget: '/Wichita',
  );
}
//John DeLeo
class Cuny extends College{
  Cuny()
      : super (
    collegename: 'City University of New York',
    collegetext: 'Located in Brooklyn, NY, tuition for Computer Science is \$18k annually',
    collegelogo: 'lib/images/cuny.png',
    citytext: 'City of Brooklyn',
    citywidget: '/Brooklyn',
  );
}
//John DeLeo
class Isu extends College{
  Isu()
      : super (
    collegename: 'Idaho State University',
    collegetext: 'Located in Pocatello, ID, tuition for Computer Science is \$25k annually',
    collegelogo: 'lib/images/isu.png',
    citytext: 'City of Pocatello',
    citywidget: '/Pocatello',
  );
}
//John DeLeo
class Ou extends College{
  Ou()
      : super (
    collegename: 'University of Oklahoma',
    collegetext: 'Located in Norman, OK, tuition for Computer Science is \$20k annually',
    collegelogo: 'lib/images/ou.png',
    citytext: 'City of Norman',
    citywidget: '/Norman',
  );
}
//John DeLeo
class Nyu extends College{
  Nyu()
      : super (
    collegename: 'New York University',
    collegetext: 'Located in Brooklyn, NY, tuition for Computer Science is \$2k per credit annually',
    collegelogo: 'lib/images/nyu.png',
    citytext: 'City of Brooklyn',
    citywidget: '/Brooklyn',
  );
}
//John DeLeo
class Duke extends College{
  Duke()
      : super (
    collegename: 'Duke University',
    collegetext: 'Located in Durham, NC, tuition for Computer Science is \$59k annually',
    collegelogo: 'lib/images/duke.png',
    citytext: 'City of Durham',
    citywidget: '/Durham',
  );
}
//John DeLeo
class Osu extends College{
  Osu()
      : super (
    collegename: 'Oklahoma State University',
    collegetext: 'Located in Stillwater, OK, tuition for Computer Science is \$7k annually',
    collegelogo: 'lib/images/osu.jpg',
    citytext: 'City of Stillwater',
    citywidget: '/Stillwater',
  );
}
//John DeLeo
class Opsu extends College{
  Opsu()
      : super (
    collegename: 'Oklahoma Panhandle State Univ.',
    collegetext: 'Located in Goodwell, OK, tuition for Computer Science is \$8k per credit annually',
    collegelogo: 'lib/images/opsu.png',
    citytext: 'City of Goodwell',
    citywidget: '/Goodwell',
  );
}
//John DeLeo
class Utulsa extends College{
  Utulsa()
      : super (
    collegename: 'University of Tulsa',
    collegetext: 'Located in Tulsa, OK, tuition for Computer Science is \$44k annually',
    collegelogo: 'lib/images/tulsa.png',
    citytext: 'City of Tulsa',
    citywidget: '/Tulsa',
  );
}
//John DeLeo
class Ku extends College{
  Ku()
      : super (
    collegename: 'Kansas University',
    collegetext: 'Located in Lawrence, KS, tuition for Computer Science is \$28k annually',
    collegelogo: 'lib/images/KU.png',
    citytext: 'City of Lawrence',
    citywidget: '/Lawrence',
  );
}
//John DeLeo
class Rice extends College{
  Rice()
      : super (
    collegename: 'Rice University',
    collegetext: 'Located in Houston, TX, tuition for Computer Science is \$48k annually',
    collegelogo: 'lib/images/rice.png',
    citytext: 'City of Houston',
    citywidget: '/Houston',
  );
}
//John DeLeo
class Bc extends College{
  Bc()
      : super (
    collegename: 'University of British Columbia',
    collegetext: 'Located in Vancouver, Canada, tuition for Computer Science is \$23k annually',
    collegelogo: 'lib/images/BC.png',
    citytext: 'City of Vancouver',
    citywidget: '/Vancouver',
  );
}
//John DeLeo
class Mit extends College{
  Mit()
      : super (
    collegename: 'Massachusetts Institute of Technology',
    collegetext: 'Located in Cambridge, MA, tuition for Computer Science is \$51k annually',
    collegelogo: 'lib/images/mit.png',
    citytext: 'City of Cambridge',
    citywidget: '/Cambridge',
  );
}
//John DeLeo
class Brown extends College{
  Brown()
      : super (
    collegename: 'Brown University',
    collegetext: 'Located in Providence, RI, tuition for Computer Science is \$71k annually',
    collegelogo: 'lib/images/brown.png',
    citytext: 'City of Providence',
    citywidget: '/Providence',
  );
}
//John DeLeo
class Suny extends College{
  Suny()
      : super (
    collegename: 'State University of New York',
    collegetext: 'Located in Albany, NY, tuition for Computer Science is \$23k annually',
    collegelogo: 'lib/images/suny.png',
    citytext: 'City of Albany',
    citywidget: '/Albany',
  );
}