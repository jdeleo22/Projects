import 'dart:math';

import 'package:flutter/material.dart';
import 'states.dart';

class Wichita extends StatelessWidget {
  final zoo = new LandMarks(
      title: 'Sedgwick County Zoo',
      description: 'The Sedgwick County Zoo is an AZA-accredited wildlife park and major attraction in Wichita, Kansas, United States. Founded in 1971 with the help of the '
          'Sedgwick County Zoological Society, the zoo has quickly become recognized both nationally and internationally for its support of conservation programs and successful '
          'breeding of rare and endangered species. Having over 3,000 animals of nearly 400 species, the zoo has slowly increased its visitors and now ranks as the number one outdoor tourist attraction in the state.',
      image: 'https://assets.simpleviewinc.com/simpleview/image/fetch/c_fill,h_447,q_75,w_670/https://assets.simpleviewcms.com/simpleview/image/upload/v1/clients/wichita/Attractions_Sedgwick_County_Zoo_2016_Elephants_of_the_Zambezi_River_Valley_pool_overview_Gavin_Peters_Visit_Wichita_Full_Public_Use_e5ce6904-cd53-4794-9ffd-8701bf6af986.jpg'
  );
  final statemuseum = new LandMarks(
      title: 'Museum of World Treasures',
      description: 'The Museum of World Treasures is a world history museum in Wichita, Kansas, United States. Among the many items on display are Tyrannosaurus, Daspletosaurus, and Tylosaurus '
          'specimens, Egyptian mummies, signatures of all the American presidents, a section of the Berlin Wall, and a genuine shrunken head. The Museum of World Treasures is not limited to a particular '
          'era of history, but has opted to display an extremely diverse collection representing many different fields of interest and a wide range of subjects.',
      image: 'https://nohomejustroam.com/wp-content/uploads/2020/07/Museum-of-World-Treasures-in-Wichita-Kansas.jpg'
  );
  final artmuseum = new LandMarks(
      title: 'Wichita Art Museum',
      description: 'The Wichita Art Museum is an art museum located in Wichita, Kansas, United States. The museum was established in 1915. The trust would purchase art for the City of Wichita by '
          '“American painters, potters, sculptors, and textile weavers.” The collection includes works by Mary Cassatt, Arthur G. Dove, Thomas Eakins, Robert Henri, Douglas Abdell, Winslow Homer, '
          'Edward Hopper, Yasuo Kuniyoshi, John Marin, Paul Meltsner, Horace Pippin, Maurice Prendergast, Albert Pinkham Ryder and Charles Sheeler.',
      image: 'https://upload.wikimedia.org/wikipedia/commons/d/d5/Wichita_Art_Museum.jpg'
  );
  final List<LandMarks> wichitalandmarks = [];
  bool winter = true;
  final fish2 = Distance(originx: 40.70,originy: -73.99,destinationx: 37.68,destinationy: -97.33);
  String result = '';

  @override
  Widget build(BuildContext context){
    if (winter == true){
    wichitalandmarks.add(zoo);
    wichitalandmarks.add(statemuseum);
    wichitalandmarks.add(artmuseum);
    winter = false;
    }
    result = 'distance is: '+ fish2.calc(originx: 40.70,originy: -73.99,destinationx: 37.68,destinationy: -97.33).toString();
                                            //John DeLeo
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('City of Wichita-John DeLeo'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RaisedButton(color: Colors.lightBlue, onPressed: () =>Navigator.pop(context), child: Text('Back'),
                ),
                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Wichita (/ˈwɪtʃɪtɔː/ WITCH-i-taw) is the largest city in the U.S. state of Kansas '
                        'and the county seat of Sedgwick County. As of 2019, the estimated population of the city was 389,938.'
                        ' Wichita is the principal city of the Wichita metropolitan area which had an estimated population of 644,888 in 2018')
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.all(22.0),
                    itemCount: wichitalandmarks.length,
                    itemBuilder: (BuildContext ctxt, final int index){
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(wichitalandmarks[index].image),
                        ),
                        title: Text(wichitalandmarks[index].title),
                        subtitle: Text(wichitalandmarks[index].description),
                      );
                    },
                  ),
                ),
                RaisedButton(color: Colors.lightBlue,
                //onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Kansas())),
                    onPressed: ()=>Navigator.pushNamed(context, '/Kansas'),
                child: Text('Kansas')),
                Text(result)
              ],
            )
        )
    );
  }
}
class Norman extends StatelessWidget {
  final statepark = new LandMarks(
      title: 'Lake Thunderbird State Park',
      description: 'Lake Thunderbird State Park is a 1,874 acres Oklahoma state park located in Cleveland County, Oklahoma. It is 12 miles east of Norman, '
          'Oklahoma on State Highway 9. National Public Radio reported that this park had over 637,000 visitors in 2011.',
      image: 'https://www.visitnorman.com/uploads/Things-to-Do-and-See/Parks-and-Trails/Lake-Thunderbird-State-Park/Thunderbird.jpg'
  );
  final museumhistory = new LandMarks(
      title: 'Sam Noble Oklahoma Museum of Natural History',
      description: 'The Sam Noble Oklahoma Museum of Natural History is a natural history museum located on the campus of the University of Oklahoma. '
          'The museum was founded in 1899 by an act of the Oklahoma Territorial Legislature, and opened its doors on its current location in 1999. The museum contains '
          'approximately "7 million objects and specimens in 12 collections." It has almost 50,000 sq ft of exhibit space, with five galleries and exhibits that provide an in-depth tour of '
          'Oklahoma\'s natural history. It is "one of the world\'s largest university-based natural history museums." ',
      image: 'https://samnoblemuseum.ou.edu/wp-content/uploads/2016/11/Museum_Aerial-View_WelchCreative-1_950x300_acf_cropped.jpg'
  );
  final casino = new LandMarks(
      title: 'Riverwind Casino',
      description: 'Riverwind Casino is a casino located in Norman, Oklahoma that opened in 2006. The 219,000 square feet casino, owned and operated by the Chickasaw Nation is one of the largest in the state. '
          'In addition to the casino floor, the facility also has two restaurants, a lounge, a food court, several bars, valet parking and a 1500-seat theatre that hosts concerts. ',
      image: 'https://d1jhy9q0556ci9.cloudfront.net/wp-content/uploads/2019/08/MainEntrance_Exterior_267_c_1920x1080-768x432.jpg'
  );
  final List<LandMarks> normanlandmarks = [];
  bool winter = true;
  final fish2 = Distance(originx: 40.70,originy: -73.99,destinationx: 35.22,destinationy: -97.43);
  String result = '';

  @override
  Widget build(BuildContext context){
    if (winter == true){
    normanlandmarks.add(statepark);
    normanlandmarks.add(museumhistory);
    normanlandmarks.add(casino);
    winter = false;
    }
    result = 'distance is: '+ fish2.calc(originx: 40.70,originy: -73.99,destinationx: 35.22,destinationy: -97.43).toString();
                                            //John DeLeo
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('City of Norman-John DeLeo'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RaisedButton(color: Colors.lightBlue, onPressed: () =>Navigator.pop(context), child: Text('Back'),
                ),
                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Norman (/ˈnɔːrmən/) is a city in the U.S. state of Oklahoma located 20 miles (32 km) '
                        'south of downtown Oklahoma City. As the county seat of Cleveland County and a part of the '
                        'Oklahoma City metropolitan area, its population was 110,925 at the 2010 census.'
                        ' Norman\'s estimated population of 124,880 in 2019 makes it the third-largest city in Oklahoma.')
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.all(22.0),
                    itemCount: normanlandmarks.length,
                    itemBuilder: (BuildContext ctxt, final int index){
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(normanlandmarks[index].image),
                        ),
                        title: Text(normanlandmarks[index].title),
                        subtitle: Text(normanlandmarks[index].description),
                      );
                    },
                  ),
                ),
                RaisedButton(color: Colors.lightBlue,
                    //onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Oklahoma())),
                    onPressed: ()=>Navigator.pushNamed(context, '/Oklahoma'),
                    child: Text('Oklahoma')),
                Text(result)

              ],
            )
        )
    );
  }
}
class Stillwater extends StatelessWidget {
  final wrestlinghof = new LandMarks(
      title: 'National Wrestling Hall Of Fame & Museum',
      description: 'The National Wrestling Hall of Fame and Museum is a museum and hall of fame for amateur wrestling, headquartered in Stillwater, Oklahoma. In 2010',
      image: 'https://upload.wikimedia.org/wikipedia/commons/5/50/DanGableMuseum.jpg'
  );
  final museum = new LandMarks(
      title: 'Stillwater History Museum at the Sheerar',
      description: 'The Sheerar Museum of Stillwater History is dedicated to collecting, preserving, and interpreting the history of Stillwater. The museum features exhibits on Stillwater and Payne County, '
          'including the first land run that opened Oklahoma Territory for settlement in 1889. The museum also offers a variety of temporary exhibits and programs',
      image: 'https://bloximages.newyork1.vip.townnews.com/ocolly.com/content/tncms/assets/v3/editorial/3/5a/35a56bf8-e67a-11e5-b4bd-fbaacd8c2c53/50902cdbd8bf7.image.jpg'
  );
  final zoo = new LandMarks(
      title: 'Lost Creek Safari Zoo',
      description: 'Lost Creek Safari is located just a few miles south of Stillwater. Visitors get a chance to get up close and personal with unique animals',
      image: 'https://ktul.com/resources/media/108d2c06-3550-4a40-b6fc-e407c2cea742-large16x9_Safaripic.jpg'
  );
  final List<LandMarks> stillwaterlandmarks = [];
  bool winter = true;
  final fish2 = Distance(originx: 40.70,originy: -73.99,destinationx: 36.11,destinationy: -97.05);
  String result = '';

  @override
  Widget build(BuildContext context){
    if (winter == true){
    stillwaterlandmarks.add(wrestlinghof);
    stillwaterlandmarks.add(museum);
    stillwaterlandmarks.add(zoo);
    winter = false;
    }
    result = 'distance is: '+ fish2.calc(originx: 40.70,originy: -73.99,destinationx: 36.11,destinationy: -97.05).toString();
                                        //John DeLeo
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('City of Stillwater-John DeLeo'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RaisedButton(color: Colors.lightBlue, onPressed: () =>Navigator.pop(context), child: Text('Back'),
                ),
                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Stillwater is a city and county seat of Payne County, Oklahoma, United States.'
                        ' It is located in north-central Oklahoma at the intersection of U.S. Route 177 and State Highway 51. '
                        'As of the 2010 census, the city population was 45,688, making it the tenth-largest city in Oklahoma. '
                        'The Stillwater Micropolitan Statistical Area had a population of 78,399 according to the 2012 census estimate.')
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.all(22.0),
                    itemCount: stillwaterlandmarks.length,
                    itemBuilder: (BuildContext ctxt, final int index){
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(stillwaterlandmarks[index].image),
                        ),
                        title: Text(stillwaterlandmarks[index].title),
                        subtitle: Text(stillwaterlandmarks[index].description),
                      );
                    },
                  ),
                ),
                RaisedButton(color: Colors.lightBlue,
                    //onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Oklahoma())),
                    onPressed: ()=>Navigator.pushNamed(context, '/Oklahoma'),
                    child: Text('Oklahoma')),
                Text(result)
              ],
            )
        )
    );
  }
}
class Lawrence extends StatelessWidget {
  final historymuseum = new LandMarks(
      title: 'Watkins Museum of History',
      description: 'The Watkins Museum of History is a museum in Lawrence, Kansas that is managed by the Douglas County Historical Society. '
          'It provides programs and public events, educational resources and activities, and changing exhibits about the heritage of Douglas County.',
      image: 'https://unmistakablylawrence.com/wp-content/uploads/2016/12/WatkinsMuseum.jpg'
  );
  final statemuseum = new LandMarks(
      title: 'Spencer Museum of Art',
      description: 'The Spencer Museum of Art is an art museum located on the University of Kansas campus in Lawrence, Kansas. The museum houses collection that currently numbers nearly 36,000 '
          'artworks and artifacts in all media. The collection spans the history of European and American art from ancient to contemporary, and includes broad holdings of East Asian art. Areas of '
          'special strength include medieval art; European and American paintings, sculpture and prints; photography; Japanese Edo period painting and prints; 20th-century Chinese painting; and KU’s '
          'ethnographic collection, which includes about 10,000 Native American, African, Latin American and Australian works',
      image: 'https://spencerart.ku.edu/sites/default/files/hero-images/SpencerSunset.png'
  );
  final statepark = new LandMarks(
      title: 'Clinton State Park',
      description: 'Clinton State Park is a public recreation area located on the north shore of Clinton Lake at the western edge of Lawrence, Kansas, United States. The 1,500-acre state park lies on the north '
          'shore of Clinton Lake, known for its clear water and good channel catfish, walleye, and crappie fishing. Visitors to the park can enjoy viewing white-tailed deer, wild turkey, waterfowl, bald eagles in '
          'spring and fall, and numerous species of songbirds in the carefully managed habitats that make Clinton a distinctive outdoor destination.',
      image: 'https://upload.wikimedia.org/wikipedia/commons/9/95/Clinton_State_Park.jpg'
  );
  final List<LandMarks> lawrencelandmarks = [];
  bool winter = true;
  final fish2 = Distance(originx: 40.70,originy: -73.99,destinationx: 38.97,destinationy: -95.23);
  String result = '';

  @override
  Widget build(BuildContext context){
    if (winter == true ){
    lawrencelandmarks.add(historymuseum);
    lawrencelandmarks.add(statemuseum);
    lawrencelandmarks.add(statepark);
    winter = false;
    }
    result = 'distance is: '+ fish2.calc(originx: 40.70,originy: -73.99,destinationx: 38.97,destinationy: -95.23).toString();
                                        //John DeLeo
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('City of Lawrence-John DeLeo'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RaisedButton(color: Colors.lightBlue, onPressed: () =>Navigator.pop(context), child: Text('Back'),
                ),
                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Lawrence is the county seat of Douglas County and sixth-largest city in Kansas. '
                        'It is in the northeastern sector of the state, astride Interstate 70, between the Kansas and Wakarusa Rivers. '
                        'As of the 2010 census, the city\'s population was 87,643')
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.all(22.0),
                    itemCount: lawrencelandmarks.length,
                    itemBuilder: (BuildContext ctxt, final int index){
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(lawrencelandmarks[index].image),
                        ),
                        title: Text(lawrencelandmarks[index].title),
                        subtitle: Text(lawrencelandmarks[index].description),
                      );
                    },
                  ),
                ),
                RaisedButton(color: Colors.lightBlue,
                    //onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Kansas())),
                    onPressed: ()=>Navigator.pushNamed(context, '/Kansas'),
                    child: Text('Kansas')),
                Text(result)

              ],
            )
        )
    );
  }
}
class Brooklyn extends StatelessWidget {
  final prospect = new LandMarks(
      title: 'Prospect Park',
      description: 'Prospect Park is an urban park in Brooklyn, New York City. The park is situated between the neighborhoods of Park Slope, Prospect Heights, Prospect Lefferts Gardens, Flatbush, '
          'and Windsor Terrace, and is adjacent to the Brooklyn Museum, Grand Army Plaza, and the Brooklyn Botanic Garden. With an area of 526 acres, Prospect Park is the second largest public park in '
          'Brooklyn, behind Marine Park.',
      image: 'https://upload.wikimedia.org/wikipedia/commons/3/3a/Prospect_Park_New_York_October_2015_003.jpg'
  );
  final coneyisland = new LandMarks(
      title: 'Coney Island',
      description: 'Coney Island is a residential and commercial neighborhood and entertainment area on a peninsula in the southwestern section of the New York City borough of Brooklyn. '
          'The origin of Coney Island\'s name is disputed, but the area was originally part of the colonial town of Gravesend. By the mid-19th century it had become a seaside resort, and by the late 19th century, '
          'amusement parks had also been built at the location.',
      image: 'https://cdn.abcotvs.com/dip/images/5467251_081419-wabc-shutterstock-luna-park-nyc-img.jpg'
  );
  final brooklynmuseum = new LandMarks(
      title: 'Brooklyn Museum',
      description: 'The Brooklyn Museum is an art museum located in the New York City borough of Brooklyn. At 560,000 square feet (52,000 m2), the museum is New York City\'s third largest in physical size and '
          'holds an art collection with roughly 1.5 million works.',
      image: 'https://d1lfxha3ugu3d4.cloudfront.net/about/images/Photo_Shoots_1_Plaza_at_night_650x431.jpg'
  );
  final List<LandMarks> brooklynlandmarks = [];
  bool winter = true;
  final fish2 = Distance(originx: 40.70,originy: -73.99,destinationx: 40.70,destinationy: -73.99);
  String result = '';

  @override
  Widget build(BuildContext context){
    if (winter == true) {
    brooklynlandmarks.add(prospect);
    brooklynlandmarks.add(coneyisland);
    brooklynlandmarks.add(brooklynmuseum);
    winter = false;
    }
    result = 'distance is: '+ fish2.calc(originx: 40.70,originy: -73.99,destinationx: 40.70,destinationy: -73.99).toString();
                                            //John DeLeo
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('City of Brooklyn-John DeLeo'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RaisedButton(color: Colors.lightBlue, onPressed: () =>Navigator.pop(context), child: Text('Back'),
                ),
                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Brooklyn (/ˈbrʊklɪn/) is a borough of New York City, coterminous with Kings County, '
                        'in the U.S. state of New York. It is the most-populous county in the state, the second-most densely '
                        'populated county in the United States,[5] and New York City\'s most populous borough, with an '
                        'estimated 2,648,403 residents in 2020.')
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.all(22.0),
                    itemCount: brooklynlandmarks.length,
                    itemBuilder: (BuildContext ctxt, final int index){
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(brooklynlandmarks[index].image),
                        ),
                        title: Text(brooklynlandmarks[index].title),
                        subtitle: Text(brooklynlandmarks[index].description),
                      );
                    },
                  ),
                ),
                RaisedButton(color: Colors.lightBlue,
                    //onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Newyork())),
                    onPressed: ()=>Navigator.pushNamed(context, '/Newyork'),
                    child: Text('New York')),
                Text(result)
              ],
            )
        )
    );
  }
}
class Pocatello extends StatelessWidget {
  final historymuseum = new LandMarks(
      title: 'Idaho Museum of Natural History',
      description: 'The Idaho Museum of Natural History is the official state natural history museum of Idaho, located on the campus of Idaho State University in Pocatello. '
          'Founded in 1934, it has collections in anthropology, vertebrate paleontology, earth science, and the life sciences. Additionally, it contains an archive of documents and ethnographic photographs',
      image: 'https://upload.wikimedia.org/wikipedia/commons/8/82/Museum_entrance_image.jpg'
  );
  final cleanmuseum = new LandMarks(
      title: 'Museum of Clean',
      description: 'Exhibits on cleaning methods & devices',
      image: 'https://www.rvhive.com/wp-content/uploads/2018/09/museum-of-clean-building-e1537039130307.jpg'
  );
  final zoo = new LandMarks(
      title: 'Idaho Zoo',
      description: 'Zoo Idaho is a zoo in Pocatello, Idaho, that features animals native to the Intermountain West and has been open since 1932. The zoo has more than 100 animals representing about 40 different species. '
          '"It is one of two zoos in the United States specializing in animals native to the Intermountain West." Zoo Idaho is the only zoo to incorporate the Shoshone-Bannock tribal culture into its program and design. '
          'The zoo itself sits on a natural landscape covering 25 acres in Ross Park.',
      image: 'https://zooidaho.org/wp-content/uploads/2013/05/zoo-entrance-cropped1.jpg'
  );
  final List<LandMarks> pocatellolandmarks = [];
  bool winter = true;
  final fish2 = Distance(originx: 40.70,originy: -73.99,destinationx: 42.86,destinationy: -112.45);
  String result = '';

  @override
  Widget build(BuildContext context){
    if (winter == true ){
    pocatellolandmarks.add(historymuseum);
    pocatellolandmarks.add(cleanmuseum);
    pocatellolandmarks.add(zoo);
    winter = false;
    }
    result = 'distance is: '+ fish2.calc(originx: 40.70,originy: -73.99,destinationx: 42.86,destinationy: -112.45).toString();
                                    //John DeLeo
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('City of Pocatello-John DeLeo'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RaisedButton(color: Colors.lightBlue, onPressed: () =>Navigator.pop(context), child: Text('Back'),
                ),
                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Pocatello /ˈpoʊkəˈtɛloʊ/  is the county seat and largest '
                        'city of Bannock County, with a small portion on the Fort Hall Indian Reservation in neighboring '
                        'Power County, in the southeastern part of the U.S. state of Idaho. It is the principal city of the '
                        'Pocatello metropolitan area, which encompasses all of Bannock County. As of the 2010 census the '
                        'population of Pocatello was 54,255.')
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.all(22.0),
                    itemCount: pocatellolandmarks.length,
                    itemBuilder: (BuildContext ctxt, final int index){
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(pocatellolandmarks[index].image),
                        ),
                        title: Text(pocatellolandmarks[index].title),
                        subtitle: Text(pocatellolandmarks[index].description),
                      );
                    },
                  ),
                ),
                RaisedButton(color: Colors.lightBlue,
                    //onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Idaho())),
                    onPressed: ()=>Navigator.pushNamed(context, '/Idaho'),
                    child: Text('Idaho')),
                Text(result)
              ],
            )
        )
    );
  }
}                                       //John DeLeo
class Durham extends StatelessWidget {
  final gardens = new LandMarks(
      title: 'Sarah P. Duke Gardens',
      description: 'The Sarah P. Duke Gardens consist of approximately 55 acres of landscaped and wooded areas at Duke University located in Durham, North Carolina. '
          'There are 5 miles of allées, walks, and pathways throughout the gardens. The gardens are divided into four areas, the Historic Core and Terraces, the H.L Blomquist Garden of Native Plants, '
          'the William Louis Culberson Asiatic Arboretum and the Doris Duke Center Gardens.',
      image: 'https://tclf.org/sites/default/files/thumbnails/image/SarahPDukeGardens_MarkHough_feature.jpg'
  );
  final museum = new LandMarks(
      title: 'Museum of Life and Science',
      description: 'The Museum of Life and Science—previously known as the North Carolina Museum of Life and Science and the NC Children\'s Museum—is '
          'an 84-acre science museum located in Durham, North Carolina, United States, featuring an array of largely hands-on exhibits intended to spark curiosity and wonder. '
          'With a focus on STEM learning, the Museum\'s mission is to create a place of lifelong learning where people of all ages embrace science as a way of knowing about themselves, their community, and their world. ',
      image: 'https://www.cityprofile.com/forum/attachments/north-carolina/23198-durham-museum-of-live-and-science1.jpg'
  );
  final enopark = new LandMarks(
      title: 'Eno River State Park',
      description: 'Eno River State Park is a 4,319-acre North Carolina state park in Durham and Orange Counties, North Carolina. Together with the adjoining West Point on the Eno city park, '
          'the two parks preserve over 14 miles of the Eno River and surrounding lands. There are five public access areas with features including twenty-four miles of hiking trails, canoe launches, '
          'picnic areas, and historic structures',
      image: 'https://i.pinimg.com/originals/92/74/8a/92748a11230c738125adce8f1aae6cf6.jpg'
  );
  final List<LandMarks> durhamlandmarks = [];
  bool winter = true;
  final fish2 = Distance(originx: 40.70,originy: -73.99,destinationx: 35.99,destinationy: -78.89);
  String result = '';

  @override
  Widget build(BuildContext context){
    if (winter== true ){
    durhamlandmarks.add(gardens);
    durhamlandmarks.add(museum);
    durhamlandmarks.add(enopark);
    winter = false;
    }
    result = 'distance is: '+ fish2.calc(originx: 40.70,originy: -73.99,destinationx: 35.99,destinationy: -78.89).toString();
                                      //John DeLeo
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('City of Durham-John DeLeo'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RaisedButton(color: Colors.lightBlue, onPressed: () =>Navigator.pop(context), child: Text('Back'),
                ),
                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Durham (/ˈdʌrəm/) is a city in and the county seat of Durham County in the U.S. state of '
                        'North Carolina. Small portions of the city limits extend into Orange County and Wake County. '
                        'The U.S. Census Bureau estimated the city\'s population to be 278,993 as of July 1, 2019, '
                        'making it the 4th-most populous city in North Carolina, and the 79th-most populous city '
                        'in the United States. The city is located in the east-central part of the Piedmont region along '
                        'the Eno River.')
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.all(22.0),
                    itemCount: durhamlandmarks.length,
                    itemBuilder: (BuildContext ctxt, final int index){
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(durhamlandmarks[index].image),
                        ),
                        title: Text(durhamlandmarks[index].title),
                        subtitle: Text(durhamlandmarks[index].description),
                      );
                    },
                  ),
                ),
                RaisedButton(color: Colors.lightBlue,
                    //onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>NCarolina())),
                    onPressed: ()=>Navigator.pushNamed(context, '/NCarolina'),
                    child: Text('North Carolina')),
                Text(result)
              ],
            )
        )
    );
  }
}
class Goodwell extends StatelessWidget {
  final museum = new LandMarks(
      title: 'No Man\'s Land Museum',
      description: 'Goodwell is home of the No Man\'s Land Museum, which was originally established in 1932 as a project of the science department '
          'at Panhandle Agricultural and Mechanical College. In 1933, the No Man\'s Land Historical Society was established and took control of the museum.',
      image: 'https://i.pinimg.com/originals/4f/ca/8a/4fca8a19d2e324663200e5fd06587560.jpg'
  );
  final optimalake = new LandMarks(
      title: 'Optima Lake',
      description: 'Optima Lake was built to be a reservoir in Texas County, Oklahoma. The site is located just north of Hardesty and east of Guymon in the Oklahoma Panhandle. '
          'The earthen Optima Lake Dam was completed in 1978 by the United States Army Corps of Engineers, with a height of 120 feet, and a length at its crest of 16,875 feet. Although being called a lake it never reaches 5% capacity.',
      image: 'https://www.405magazine.com/content/uploads/data-import/7432dafb/Optima-Lake-03.jpg'
  );

  final List<LandMarks> goodwelllandmarks = [];
  bool winter = true;
  final fish2 = Distance(originx: 40.70,originy: -73.99,destinationx: 36.59,destinationy: -101.63);
  String result = '';

  @override
  Widget build(BuildContext context){
    if (winter == true) {
    goodwelllandmarks.add(museum);
    goodwelllandmarks.add(optimalake);
    winter = false;
    }
    result = 'distance is: '+ fish2.calc(originx: 40.70,originy: -73.99,destinationx: 36.59,destinationy: -101.63).toString();
                                          //John DeLeo
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('City of Goodwell-John DeLeo'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RaisedButton(color: Colors.lightBlue, onPressed: () =>Navigator.pop(context), child: Text('Back'),
                ),
                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Goodwell is a town in Texas County, Oklahoma, United States. The population was 1,293 at the 2010 census.')
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.all(22.0),
                    itemCount: goodwelllandmarks.length,
                    itemBuilder: (BuildContext ctxt, final int index){
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(goodwelllandmarks[index].image),
                        ),
                        title: Text(goodwelllandmarks[index].title),
                        subtitle: Text(goodwelllandmarks[index].description),
                      );
                    },
                  ),
                ),
                RaisedButton(color: Colors.lightBlue,
                    //onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Oklahoma())),
                    onPressed: ()=>Navigator.pushNamed(context, '/Oklahoma'),
                    child: Text('Oklahoma')),
                Text(result)
              ],
            )
        )
    );
  }
}
class Tulsa extends StatelessWidget {
  final artmuseum = new LandMarks(
      title: 'Philbrook Museum of Art',
      description: 'Philbrook Museum of Art is an art museum with expansive formal gardens located in Tulsa, Oklahoma. The museum, which opened in 1939, is located in a former 1920s '
          'villa, "Villa Philbrook", the home of Oklahoma oil pioneer Waite Phillips and his wife Genevieve. Showcasing nine collections of art from all over the world, and spanning various '
          'artistic media and styles, the cornerstone collection focuses on Native American art featuring basketry, pottery, paintings and jewelry.',
      image: 'https://upload.wikimedia.org/wikipedia/commons/5/5e/Philbrook_Museum_of_Art%2C_and_gardens.jpg'
  );
  final gilcreasemuseum = new LandMarks(
      title: 'Gilcrease Museum',
      description: 'Gilcrease Museum is a museum northwest of downtown Tulsa, Oklahoma housing the world\'s largest, most comprehensive collection of art of the American West, '
          'as well as a growing collection of art and artifacts from Central and South America.',
      image: 'https://artsandsciences.utulsa.edu/wp-content/uploads/sites/6/2019/09/Gilcrease-museum.jpg'
  );
  final aquarium = new LandMarks(
      title: 'Oklahoma Aquarium',
      description: 'The Oklahoma Aquarium is 72,000-square-foot public aquarium built in 2002 and opened on May 28, 2003 in Jenks, a southern suburb of Tulsa. The Oklahoma Aquarium is home to the '
          'world\'s largest exhibit of bull sharks, as well as a loggerhead sea turtle, zebra shark, and humphead wrasse. As of 2020, the aquarium has more than 500 species and 10,000 animals.',
      image: 'https://atlas-assets.roadtrippers.com/uploads/place_image/image/30418248/-strip_-quality_60_-interlace_Plane_-resize_640x360_U__-gravity_center_-extent_640x360/place_image-image-7087c476-e328-40ff-b276-9574ebd4ccd9.jpg'
  );
  final List<LandMarks> tulsalandmarks = [];
  bool winter = true;
  final fish2 = Distance(originx: 40.70,originy: -73.99,destinationx: 36.15,destinationy: -95.99);
  String result = '';

  @override
  Widget build(BuildContext context){
    if (winter == true) {
    tulsalandmarks.add(artmuseum);
    tulsalandmarks.add(gilcreasemuseum);
    tulsalandmarks.add(aquarium);
    winter = false;
    }
    result = 'distance is: '+ fish2.calc(originx: 40.70,originy: -73.99,destinationx: 36.15,destinationy: -95.99).toString();
                                      //JOhn DeLeo
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('City of Tulsa-John DeLeo'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RaisedButton(color: Colors.lightBlue, onPressed: () =>Navigator.pop(context), child: Text('Back'),
                ),
                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Tulsa /ˈtʌlsə/ is the second-largest city in the state of Oklahoma and '
                        '47th-most populous city in the United States. As of July 2019, the population was 401,190, an increase of 11,129 '
                        'since the 2010 Census.')
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.all(22.0),
                    itemCount: tulsalandmarks.length,
                    itemBuilder: (BuildContext ctxt, final int index){
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(tulsalandmarks[index].image),
                        ),
                        title: Text(tulsalandmarks[index].title),
                        subtitle: Text(tulsalandmarks[index].description),
                      );
                    },
                  ),
                ),
                RaisedButton(color: Colors.lightBlue,
                    //onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Oklahoma())),
                    onPressed: ()=>Navigator.pushNamed(context, '/Oklahoma'),
                    child: Text('Oklahoma')),
                Text(result)
              ],
            )
        )
    );
  }
}                                     //JOHN DELEO
class Houston extends StatelessWidget {
  final spacecenter = new LandMarks(
      title: 'Space Center',
      description: 'Space Center Houston is a science museum which serves as the official visitor center of NASA Johnson Space Center in Houston. '
          'It earned a place as a Smithsonian Affiliate museum in 2014. The organization is owned by NASA and is the home of Mission Control and astronaut training.',
      image: 'https://www.nasa.gov/centers/johnson/images/content/747465main_ssh_shuttle2_full.jpg'
  );
  final zoo = new LandMarks(
      title: 'Houston Zoo',
      description: 'The Houston Zoo is a 55-acre zoological park located within Hermann Park in Houston, Texas, United States. The zoo houses over 6,000 animals from 900 species. '
          'It receives 2.1 million visitors each year and is the second most visited zoo in the United States',
      image: 'https://s28164.pcdn.co/files/Medical-Center-Entrance-0002-6268-1080x720.jpg'
  );
  final fineartsmuseum = new LandMarks(
      title: 'Houston Museum of Fine Arts',
      description: 'The Museum of Fine Arts, Houston, located in the Houston Museum District, Houston, is one of the largest museums in the United States. '
          'The permanent collection of the museum spans more than 6,000 years of history with approximately 64,000 works from six continents.',
      image: 'https://news.artnet.com/app/news-upload/2020/05/5d9e9098-d198-4c34-be70-2ea54baca460-1024x683.jpg'
  );
  final List<LandMarks> houstonlandmarks = [];
  bool winter = true;
  final fish2 = Distance(originx: 40.70,originy: -73.99,destinationx: 29.76,destinationy: -95.36);
  String result = '';

  @override
  Widget build(BuildContext context){
    if (winter == true){
    houstonlandmarks.add(spacecenter);
    houstonlandmarks.add(zoo);
    houstonlandmarks.add(fineartsmuseum);
    winter = false;
    }
    result = 'distance is: '+ fish2.calc(originx: 40.70,originy: -73.99,destinationx: 29.76,destinationy: -95.36).toString();
                                      //JOHN DELEO
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('City of Houston-John DeLeo'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RaisedButton(color: Colors.lightBlue, onPressed: () =>Navigator.pop(context), child: Text('Back'),
                ),
                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Houston (/ˈhjuːstən/ (About this soundlisten) HEW-stən) is the most '
                        'populous city in the U.S. state of Texas, fourth most populous city in the United States, '
                        'most populous city in the Southern United States, as well as the sixth most populous in North America, '
                        'with an estimated 2019 population of 2,320,268.')
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.all(22.0),
                    itemCount: houstonlandmarks.length,
                    itemBuilder: (BuildContext ctxt, final int index){
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(houstonlandmarks[index].image),
                        ),
                        title: Text(houstonlandmarks[index].title),
                        subtitle: Text(houstonlandmarks[index].description),
                      );
                    },
                  ),
                ),
                RaisedButton(color: Colors.lightBlue,
                    //onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Texas())),
                    onPressed: ()=>Navigator.pushNamed(context, '/Texas'),
                    child: Text('Texas')),
                Text(result)
              ],
            )
        )
    );
  }
}
class Vancouver extends StatelessWidget {
  final scienceworld = new LandMarks(
      title: 'Science World',
      description: 'Science World is a science centre run by a not-for-profit organization of the same name in Vancouver, British Columbia, Canada. It is located at the end of False Creek and '
          'features many permanent interactive exhibits and displays, as well as areas with varying topics throughout the years.',
      image: 'https://upload.wikimedia.org/wikipedia/commons/e/e5/Science_World_at_TELUS_World_of_Science.jpg'
  );
  final stanleypark = new LandMarks(
      title: 'Stanley Park',
      description: 'Stanley Park is a 405-hectare public park that borders the downtown of Vancouver in British Columbia, Canada, and is mostly surrounded by waters of Burrard Inlet and English Bay. '
          'The park has a long history and was one of the first areas to be explored in the city. The land was originally used by Indigenous peoples for thousands of years before British Columbia was '
          'colonized by the British during the 1858 Fraser Canyon Gold Rush',
      image: 'https://i.ytimg.com/vi/h9mOQ0U0ao0/maxresdefault.jpg'
  );
  final artgallery = new LandMarks(
      title: 'Vancouver Art Gallery',
      description: 'The Vancouver Art Gallery is an art museum located in Vancouver, British Columbia, Canada. Situated in downtown Vancouver, the museum occupies a 15,300-square-metre-building adjacent to '
          'Robson Square, making it the largest art museum in Western Canada by building size.',
      image: ''
  );
  final List<LandMarks> vancouverlandmarks = [];
  bool winter = true;
  final fish2 = Distance(originx: 40.70,originy: -73.99,destinationx: 49.26,destinationy: -123.13);
  String result = '';

  @override
  Widget build(BuildContext context){
    if (winter == true){

    vancouverlandmarks.add(scienceworld);
    vancouverlandmarks.add(stanleypark);
    vancouverlandmarks.add(artgallery);
    winter = false;

  }
  result = 'distance is: '+ fish2.calc(originx: 40.70,originy: -73.99,destinationx: 49.26,destinationy: -123.13).toString();
                                  //JOHN DELEO
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('City of Vancouver-John DeLeo'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RaisedButton(color: Colors.lightBlue, onPressed: () =>Navigator.pop(context), child: Text('Back'),
                ),
                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Vancouver (/vænˈkuːvər/ (About this soundlisten)) is a major city in western Canada, '
                        'located in the Lower Mainland region of British Columbia. As the most populous city in the province, '
                        'the 2016 census recorded 631,486 people in the city, up from 603,502 in 2011. '
                        'The Greater Vancouver area had a population of 2,463,431 in 2016, making it the third-largest '
                        'metropolitan area in Canada. Vancouver has the highest population density in Canada, with over 5,400 '
                        'people per square kilometre,[5][6] which makes it the fifth-most densely populated city with over '
                        '250,000 residents in North America, behind New York City, Guadalajara, San Francisco,[7] and Mexico City.')
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.all(22.0),
                    itemCount: vancouverlandmarks.length,
                    itemBuilder: (BuildContext ctxt, final int index){
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(vancouverlandmarks[index].image),
                        ),
                        title: Text(vancouverlandmarks[index].title),
                        subtitle: Text(vancouverlandmarks[index].description),
                      );
                    },
                  ),
                ),
                RaisedButton(color: Colors.lightBlue,
                    //onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>BritishColumbia())),
                    onPressed: ()=>Navigator.pushNamed(context, '/BritishColumbia'),
                    child: Text('British Columbia')),
                Text(result)

              ],
            )
        )
    );
  }
}
class Cambridge extends StatelessWidget {
  final artmuseums = new LandMarks(
      title: 'Harvard Art Museums',
      description: 'The Harvard Art Museums are part of Harvard University and comprise three museums: the Fogg Museum, the Busch-Reisinger Museum, and the Arthur M. Sackler Museum and four research '
          'centers: the Archaeological Exploration of Sardis, the Center for the Technical Study of Modern Art, the Harvard Art Museums Archives, and the Straus Center for Conservation and Technical Studies.',
      image: 'https://s3.amazonaws.com/media.harvardartmuseums.org/production/uploaded_files/tour_builder/HAM01_Photo-Aerial-by-lesvants.jpg'
  );
  final freedomtrail = new LandMarks(
      title: 'Freedom Trail',
      description: 'The Freedom Trail is a 2.5-mile-long path through downtown Boston, Massachusetts, that passes by 16 locations significant to the history of the United States. '
          'Marked largely with brick, it winds between Boston Common to the Bunker Hill Monument in Charlestown. Stops along the trail include simple explanatory ground markers, graveyards, notable churches '
          'and buildings, and a historic naval frigate.',
      image: 'https://www.tripsavvy.com/thmb/ga5uVkoqKCWbA_xvg6ZfSu8Yv9A=/3112x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Freedomtrail6-05aafe03e1204cf69e11912efcf697ce.jpg'
  );
  final statemuseum = new LandMarks(
      title: 'Harvard Museum of Natural History',
      description: 'The Harvard Museum of Natural History is a natural history museum housed in the University Museum Building, located on the campus of Harvard University in Cambridge, Massachusetts. '
          'It displays a sampling of specimens drawn from the collections of the University\'s three natural history research museums: the Harvard University Herbaria the Museum of Comparative Zoology the Harvard '
          'Mineralogical Museum. The museum is physically connected to the Peabody Museum of Archaeology and Ethnology at 26 Oxford Street',
      image: 'https://hwpi.harvard.edu/files/styles/os_slideshow_16%3A9_980/public/hmnh/files/hmnh.about_.jpg?m=1515603571&itok=9MRfPd1Z'
  );
  final List<LandMarks> cambridgelandmarks = [];
  bool winter = true;
  final fish2 = Distance(originx: 40.70,originy: -73.99,destinationx: 42.37,destinationy: -71.10);
  String result = '';

  @override
  Widget build(BuildContext context){
    if (winter == true){
   cambridgelandmarks.add(artmuseums);
   cambridgelandmarks.add(freedomtrail);
   cambridgelandmarks.add(statemuseum);
   winter = false;
  }
  result = 'distance is: '+ fish2.calc(originx: 40.70,originy: -73.99,destinationx: 42.37,destinationy: -71.10).toString();
                                    //John DeLeo
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('City of Cambridge-John DeLeo'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RaisedButton(color: Colors.lightBlue, onPressed: () =>Navigator.pop(context), child: Text('Back'),
                ),
                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Cambridge (/ˈkeɪmbrɪdʒ/[5] KAYM-brij) is a city in Middlesex County, Massachusetts,'
                        ' and part of the Boston metropolitan area as a major suburb of Boston. As of July 2019,'
                        ' it was the fifth most populous city in the state, behind Boston, Worcester, Springfield, '
                        'and Lowell. According to the 2010 Census, the city\'s population was 105,162.')
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.all(22.0),
                    itemCount: cambridgelandmarks.length,
                    itemBuilder: (BuildContext ctxt, final int index){
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(cambridgelandmarks[index].image),
                        ),
                        title: Text(cambridgelandmarks[index].title),
                        subtitle: Text(cambridgelandmarks[index].description),
                      );
                    },
                  ),
                ),
                RaisedButton(color: Colors.lightBlue,
                    //onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Massachusetts())),
                    onPressed: ()=>Navigator.pushNamed(context, '/Massachusetts'),
                    child: Text('Massachusetts')),
                Text(result)
              ],
            )
        )
    );
  }
}
class Providence extends StatelessWidget {
  final museum = new LandMarks(
      title: 'RISD Museum',
      description: 'Museum of Art, Rhode Island School of Design (RISD Museum) is an art museum in Providence affiliated with the Rhode Island School of Design, in the U.S. state of Rhode Island. The museum was founded in 1877 and is the 20th largest art museum in the United States. ',
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/RISD_Museum_of_Art_Chace_Center_entrance.jpg/451px-RISD_Museum_of_Art_Chace_Center_entrance.jpg'
  );
  final zoo = new LandMarks(
      title: 'Roger Williams Park Zoo',
      description: 'The Roger Williams Park Zoo of Providence, Rhode Island, contains more than 150 animals from around the world in natural settings. '
          'In 1986, it became the first zoo in New England to earn accreditation from the Association of Zoos and Aquariums. Founded in 1872, it is one of the oldest zoos in the nation.',
      image: 'https://www.providencejournal.com/storyimage/PJ/20150520/NEWS/150529832/AR/0/AR-150529832.jpg'
  );
  final park = new LandMarks(
      title: 'Waterplace Park',
      description: 'Waterplace Park is an urban park situated along the Woonasquatucket River in downtown Providence, Rhode Island. Finished in 1994, Waterplace Park is connected to 3/4 mile of '
          'cobblestone-paved pedestrian walkways along the waterfront known as Riverwalk. Venice-styled Pedestrian bridges cross the river. Most of Riverwalk is below street level and automotive traffic. '
          'Waterplace Park and Riverwalk together are host to Providence\'s popular summertime Waterfire events, a series of bonfires lit on the river accompanied by classical and world music.',
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Waterplacepark.JPG/1280px-Waterplacepark.JPG'
  );
  final List<LandMarks> providencelandmarks = [];

  bool winter = true;
  final fish2 = Distance(originx: 40.70,originy: -73.99,destinationx: 41.8,destinationy: -71.41);
  String result = '';

  @override
  Widget build(BuildContext context){
    if (winter == true){
    providencelandmarks.add(museum);
    providencelandmarks.add(zoo);
    providencelandmarks.add(park);
    winter = false;
  }
  result = 'distance is: '+ fish2.calc(originx: 40.70,originy: -73.99,destinationx: 41.8,destinationy: -71.41).toString();
                                          //JOHN DELEO
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('City of Providence-John DeLeo'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RaisedButton(color: Colors.lightBlue, onPressed: () =>Navigator.pop(context), child: Text('Back'),
                ),
                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Providence is the capital and most populous city of the state of Rhode Island '
                        'and is one of the oldest cities in the United States.[7] It was founded in 1636 by Roger Williams, '
                        'a Reformed Baptist theologian and religious exile from the Massachusetts Bay Colony. '
                        'He named the area in honor of "God\'s merciful Providence" which he believed was responsible for '
                        'revealing such a haven for him and his followers. The city is situated at the mouth of the '
                        'Providence River at the head of Narragansett Bay.')
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.all(22.0),
                    itemCount: providencelandmarks.length,
                    itemBuilder: (BuildContext ctxt, final int index){
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(providencelandmarks[index].image),
                        ),
                        title: Text(providencelandmarks[index].title),
                        subtitle: Text(providencelandmarks[index].description),
                      );
                    },
                  ),
                ),
                RaisedButton(color: Colors.lightBlue,
                    //onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>RhodeIsland())),
                    onPressed: ()=>Navigator.pushNamed(context, '/RhodeIsland'),
                    child: Text('Rhode Island')),
                Text(result)
              ],
            )
        )
    );
  }
}

class Albany extends StatelessWidget {
  final capitol = new LandMarks(
      title: 'State Capitol',
      description: 'The New York State Capitol, the seat of the New York State government, '
          'is located in Albany, the capital city of the U.S. state of New York. The capitol'
          ' building is part of the Empire State Plaza complex on State Street in Capitol Park.'
          ' Housing the New York State Legislature, the building was completed in 1899 at a cost of US'
          '\$25 million, making it the most expensive government building of its time',
      image: 'https://upload.wikimedia.org/wikipedia/commons/4/42/NYSCapitolPanorama.jpg'
  );
  final statemuseum = new LandMarks(
      title: 'New York State Museum',
      description: 'The New York State Museum is a research-backed institution in Albany, New York, '
          'United States. It is located on Madison Avenue, attached to the south side of the Empire State '
          'Plaza, facing onto the plaza and towards the New York State Capitol. The museum houses art, artifacts, '
          'and ecofacts that reflect New York’s cultural, natural, and geological development. ',
      image: 'upload.wikimedia.org/wikipedia/commons/thumb/c/c1/NewYorkStateCulturalEducationCenter.JPG/1280px-NewYorkStateCulturalEducationCenter.JPG'
  );
  final historyart = new LandMarks(
      title: 'Albany Institute of History and Art',
      description: 'The Albany Institute of History & Art is a museum in Albany, New York, United States, '
          '"dedicated to collecting, preserving, interpreting and promoting interest in the history, art, '
          'and culture of Albany and the Upper Hudson Valley region". It is located on Washington Avenue '
          'in downtown Albany. Founded in 1791, it is among the oldest museums in the United States',
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Albany_Institute_of_History_and_Art_Panorama.jpg/1280px-Albany_Institute_of_History_and_Art_Panorama.jpg'
  );
  final List<LandMarks> albanylandmarks = [];
  bool winter = true;
  final fish2 = Distance(originx: 40.70,originy: -73.99,destinationx: 42.65,destinationy: -73.75);
  String result = '';
  //final fish3 = Distance(originx:2.0, originy: 11.0, destinationx: 5.0, destinationy: 7);
  @override
  Widget build(BuildContext context){
    if (winter == true) {
      albanylandmarks.add(capitol);
      albanylandmarks.add(statemuseum);
      albanylandmarks.add(historyart);
      winter = false;
    }
    result = 'distance is: '+ fish2.calc(originx: 40.70,originy: -73.99,destinationx: 42.65,destinationy: -73.75).toString();
                                      //JOHN DELEO
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('City of Albany-John DeLeo'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RaisedButton(color: Colors.lightBlue, onPressed: () =>Navigator.pop(context), child: Text('Back'),
                ),
                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Albany (/ˈɔːlbəni/ (About this soundlisten) AWL-bə-nee) is the capital of the U.S. '
                        'state of New York and the seat and largest city of Albany County. Albany is located on the west '
                        'bank of the Hudson River approximately 10 miles (16 km) south of its confluence with the Mohawk River '
                        'and approximately 135 miles (220 km) north of New York City. Albany is known for its rich history,'
                        ' commerce, culture, architecture, and institutions of higher education. Albany constitutes the economic and cultural core '
                        'of the Capital District of New York State, which comprises the Albany–Schenectady–Troy, NY Metropolitan Statistical Area, including the nearby cities and suburbs of Troy, '
                        'Schenectady, and Saratoga Springs. With a 2013 Census-estimated population of 1.1 million[9] the Capital District is the third-most populous metropolitan region in the state. '
                        'As of the 2010 census, the population of Albany was 97,856. ')
                ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(22.0),
              itemCount: albanylandmarks.length,
              itemBuilder: (BuildContext ctxt, final int index){
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(albanylandmarks[index].image),
                  ),
                  title: Text(albanylandmarks[index].title),
                  subtitle: Text(albanylandmarks[index].description),
                );
              },
            ),
          ),
                RaisedButton(color: Colors.lightBlue,
                    //onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Newyork())),
                    onPressed: ()=>Navigator.pushNamed(context, '/Newyork'),
                    child: Text('New York')),
                Text(result)

              ]),
    )
    );
  }
}
class LandMarks{
  final String title, description, image;
  LandMarks({this.title, this.description, this.image});
}
                              //JOHN DELEO
class Distance{
  double originx, originy, destinationx, destinationy;
  double result, x,y, deglen=110.25;
  Distance({this.originx=40.70,this.originy=-73.99,this.destinationx=5.0,this.destinationy=7.0});

  double calc({originx,originy,destinationx,destinationy}){
    x =originx - destinationx;
    y=(originy -destinationy) * cos(destinationx);
    result = deglen * sqrt(x*x+y*y);
    print('distance is: '+result.toString());
    return result;

  }


}