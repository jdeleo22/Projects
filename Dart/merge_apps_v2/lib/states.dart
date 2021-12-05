import 'package:flutter/material.dart';
import 'countries.dart';

class Kansas extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('State of Kansas'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RaisedButton(color: Colors.lightBlue, onPressed: () =>Navigator.pop(context), child: Text('Back'),
                ),
                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Kansas /ˈkænzəs/  is a U.S. state in the Midwestern United States. '
                        'Its capital is Topeka and its largest city is Wichita. Kansas is bordered by Nebraska to the north; '
                        'Missouri to the east; Oklahoma to the south; and Colorado to the west.')
                ),
                RaisedButton(color: Colors.lightBlue,
                    //onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Usa())),
                    onPressed: ()=>Navigator.pushNamed(context, '/Usa'),
                    child: Text('USA'))

              ],
            )
        )
    );
  }
}
class Oklahoma extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('State of Oklahoma'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RaisedButton(color: Colors.lightBlue, onPressed: () =>Navigator.pop(context), child: Text('Back'),
                ),
                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Oklahoma (/ˌoʊkləˈhoʊmə/ is a state in the South Central region of the United States, '
                        'bordered by the state of Texas on the south and west, Kansas on the north, Missouri on the northeast, '
                        'Arkansas on the east, New Mexico on the west, and Colorado on the northwest. '
                        'Located partially in the western extreme of the Upland South, it is the 20th-most extensive and '
                        'the 28th-most populous of the 50 United States. Its capital and largest city is Oklahoma City. ')
                ),
                RaisedButton(color: Colors.lightBlue,
                    //onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Usa())),
                    onPressed: ()=>Navigator.pushNamed(context, '/Usa'),
                    child: Text('USA'))
              ],
            )
        )
    );
  }
}
class Newyork extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('State of New York'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RaisedButton(color: Colors.lightBlue, onPressed: () =>Navigator.pop(context), child: Text('Back'),
                ),
                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('New York is a state in the Northeastern United States. New York was one of the original '
                        'thirteen colonies that formed the United States. With more than 19 million residents in 2019,'
                        ' it is the fourth-most-populous state. To distinguish it from New York City, which is the largest '
                        'city in the state, it is sometimes referred to as New York State.')
                ),
                RaisedButton(color: Colors.lightBlue,
                    //onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Usa())),
                    onPressed: ()=>Navigator.pushNamed(context, '/Usa'),
                    child: Text('USA'))

              ],
            )
        )
    );
  }
}
class Idaho extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('State of Idaho'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RaisedButton(color: Colors.lightBlue, onPressed: () =>Navigator.pop(context), child: Text('Back'),
                ),
                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Idaho /ˈaɪdəhoʊ/ is a state in the Pacific Northwest region of the United States. '
                        'It borders the state of Montana to the east and northeast, Wyoming to the east, Nevada and Utah to the '
                        'south, and Washington and Oregon to the west. To the north, it shares a small portion of the Canadian '
                        'border with the province of British Columbia. With a population of approximately 1.7 million and an '
                        'area of 83,569 square miles (216,440 km2), Idaho is the 14th largest, the 12th least populous and the '
                        '7th least densely populated of the 50 U.S. states. The state\'s capital and largest city is Boise.')
                ),
                RaisedButton(color: Colors.lightBlue,
                    //onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Usa())),
                    onPressed: ()=>Navigator.pushNamed(context, '/Usa'),
                    child: Text('USA'))

              ],
            )
        )
    );
  }
}
class NCarolina extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('State of North Carolina'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RaisedButton(color: Colors.lightBlue, onPressed: () =>Navigator.pop(context), child: Text('Back'),
                ),
                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('North Carolina /ˌkærəˈlaɪnə/ is a state in the southeastern region of the United States. '
                        'North Carolina is the 28th largest and 9th-most populous of the 50 United States. It is bordered by '
                        'Virginia to the north, the Atlantic Ocean to the east, Georgia and South Carolina to the south, and '
                        'Tennessee to the west. Raleigh is the state\'s capital and Charlotte is its largest city.')
                ),
                RaisedButton(color: Colors.lightBlue,
                    //onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Usa())),
                    onPressed: ()=>Navigator.pushNamed(context, '/Usa'),
                    child: Text('USA'))
              ],
            )
        )
    );
  }
}
class Texas extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('State of Texas'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RaisedButton(color: Colors.lightBlue, onPressed: () =>Navigator.pop(context), child: Text('Back'),
                ),
                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Texas (/ˈtɛksəs/, Spanish: Texas or Tejas, is a state in the South Central Region of the '
                        'United States. It is the second largest U.S. state by both area (after Alaska) and population '
                        '(after California). Texas shares borders with the states of Louisiana to the east, Arkansas to the '
                        'northeast, Oklahoma to the north, New Mexico to the west, and the Mexican states of Chihuahua, '
                        'Coahuila, Nuevo León, and Tamaulipas to the southwest, and has a coastline with the Gulf of Mexico '
                        'to the southeast. ')
                ),
                RaisedButton(color: Colors.lightBlue,
                    //onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Usa())),
                    onPressed: ()=>Navigator.pushNamed(context, '/Usa'),
                    child: Text('USA'))
              ],
            )
        )
    );
  }
}                                       //John DeLeo
class BritishColumbia extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Providence of British Columbia'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RaisedButton(color: Colors.lightBlue, onPressed: () =>Navigator.pop(context), child: Text('Back'),
                ),
                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('British Columbia (BC) is the westernmost province in Canada, between the Pacific Ocean and the '
                        'Rocky Mountains. With an estimated population of 5.1 million as of 2020, it is Canada\'s '
                        'third-most populous province. The capital of British Columbia is Victoria, the fifteenth-largest '
                        'metropolitan region in Canada, named for Queen Victoria, who ruled during the creation of the original '
                        'colonies. The largest city is Vancouver, the third-largest metropolitan area in Canada, '
                        'the largest in Western Canada, and the second-largest in the Pacific Northwest.')
                ),
                RaisedButton(color: Colors.lightBlue,
                    //onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Canada())),
                    onPressed: ()=>Navigator.pushNamed(context, '/Canada'),
                    child: Text('Canada'))
              ],
            )
        )
    );
  }
}
class Massachusetts extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('State of Massachusetts'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RaisedButton(color: Colors.lightBlue, onPressed: () =>Navigator.pop(context), child: Text('Back'),
                ),
                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Massachusetts /ˌmæsəˈtʃuːsɪts/ is the most populous state in the New England region of the '
                        'northeastern United States. It borders on the Atlantic Ocean to the east, the states of Connecticut '
                        'and Rhode Island to the south, New Hampshire and Vermont to the north, and New York to the west. '
                        'The capital of Massachusetts is Boston, which is also the most populous city in New England.')
                ),
                RaisedButton(color: Colors.lightBlue,
                    //onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Usa())),
                    onPressed: ()=>Navigator.pushNamed(context, '/Usa'),
                    child: Text('USA'))
              ],
            )
        )
    );
  }
}
class RhodeIsland extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('State of Rhode Island'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RaisedButton(color: Colors.lightBlue, onPressed: () =>Navigator.pop(context), child: Text('Back'),
                ),
                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Rhode Island /ˌroʊd -/ officially the State of Rhode Island and Providence Plantations,'
                        ' is a state in the New England region of the United States. It is the smallest U.S. state by area and '
                        'the seventh least populous, but it is also the second most densely populated. The state takes its '
                        'short name from Rhode Island; however, most of the state is located on the mainland. The state has '
                        'land borders with Connecticut to the west, Massachusetts to the north and east, and the Atlantic Ocean'
                        ' to the south via Rhode Island Sound and Block Island Sound. It also shares a small maritime border '
                        'with New York. Providence is the state capital and most populous city in Rhode Island.')
                ),
                RaisedButton(color: Colors.lightBlue,
                    //onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Usa())),
                    onPressed: ()=>Navigator.pushNamed(context, '/Usa'),
                    child: Text('USA'))
              ],
            )
        )
    );
  }
}                                     //JOHN DELEO