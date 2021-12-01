import 'package:carousel_slider/carousel_slider.dart';
import 'package:elssa/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Flexible(
            // color: Color(0xffC70039  ),
            //  height: 200,
            child: CarouselSlider.builder(
              options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                //  aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.9,
              ),
              itemCount: 4,
              itemBuilder: (context, itemIndex, realIndex) {
                return GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    height: 180.0,
                    child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        child: Stack(
                          children: <Widget>[
                            Image.asset("assets/logo.png")
                            // .asset(
                            //   "assets/login_ill.svg",
                            //   fit: BoxFit.cover,
                            // ),
                          ],
                        )),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.center,
                width: SizeConfig.screenWidth,
                height: 200,
                child: GridView.count(
                  scrollDirection: Axis.horizontal,
                  crossAxisCount: 2,
                  children: List.generate(8, (index) {
                    return Container(
                      // alignment: Alignment.center,
                      color: Colors.blue,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Icon(
                              Icons.format_paint_outlined,
                              size: 30,
                              color: Colors.blue,
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Renovation',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        color: Colors.white,
                      ),
                    );
                  }),
                ),
              )),

          // Flexible(
          //   child: Container(
          //     margin: EdgeInsets.only(top: 0),
          //     child: new FutureBuilder(
          //       future: DefaultAssetBundle.of(context)
          //           .loadString('load_json/subjects.json'),
          //       builder: (context, snapshot) {
          //         //decode json
          //         var subjects = json.decode(snapshot.data.toString());

          //         return new ListView.builder(
          //           shrinkWrap: true,
          //           physics: NeverScrollableScrollPhysics(),
          //           itemBuilder: (BuildContext context, int index) {
          //             if (index == 0) {
          //               return Container(
          //                   margin: EdgeInsets.only(top: 0),
          //                   padding: EdgeInsets.only(bottom: 0.0, top: 0.0),
          //                   width: deviceWidth,
          //                   child: Row(
          //                     mainAxisSize: MainAxisSize.max,
          //                     mainAxisAlignment: MainAxisAlignment.center,
          //                     children: <Widget>[
          //                       Container(
          //                           alignment: Alignment.centerLeft,
          //                           height: 2.0,
          //                           width: deviceWidth * 0.30,
          //                           color: new Color(0xff00c6ff)),
          //                       SizedBox(
          //                         width: deviceWidth * 0.025,
          //                       ),
          //                       Container(
          //                         alignment: Alignment.center,
          //                         width: deviceWidth * 0.35,
          //                         child: Text(
          //                           "1st Year Subjects",
          //                           textAlign: TextAlign.center,
          //                           style: TextStyle(),
          //                         ),
          //                       ),
          //                       SizedBox(
          //                         width: deviceWidth * 0.025,
          //                       ),
          //                       Container(
          //                           alignment: Alignment.centerRight,
          //                           height: 2.0,
          //                           width: deviceWidth * 0.30,
          //                           color: new Color(0xff00c6ff))
          //                     ],
          //                   ));
          //             }
          //             if (index == 4) {
          //               return Container(
          //                   width: deviceWidth,
          //                   child: Row(
          //                     mainAxisSize: MainAxisSize.max,
          //                     mainAxisAlignment: MainAxisAlignment.center,
          //                     children: <Widget>[
          //                       Container(
          //                           alignment: Alignment.centerLeft,
          //                           height: 2.0,
          //                           width: deviceWidth * 0.30,
          //                           color: new Color(0xff00c6ff)),
          //                       SizedBox(
          //                         width: deviceWidth * 0.025,
          //                       ),
          //                       Container(
          //                         alignment: Alignment.center,
          //                         width: deviceWidth * 0.35,
          //                         child: Text(
          //                           "2nd Year Subjects",
          //                           textAlign: TextAlign.center,
          //                           style: TextStyle(),
          //                         ),
          //                       ),
          //                       SizedBox(
          //                         width: deviceWidth * 0.025,
          //                       ),
          //                       Container(
          //                           alignment: Alignment.centerRight,
          //                           height: 2.0,
          //                           width: deviceWidth * 0.30,
          //                           color: new Color(0xff00c6ff))
          //                     ],
          //                   ));
          //             }
          //             if (index == 9) {
          //               return Container(
          //                   width: deviceWidth,
          //                   child: Row(
          //                     mainAxisSize: MainAxisSize.max,
          //                     mainAxisAlignment: MainAxisAlignment.center,
          //                     children: <Widget>[
          //                       Container(
          //                           alignment: Alignment.centerLeft,
          //                           height: 2.0,
          //                           width: deviceWidth * 0.30,
          //                           color: new Color(0xff00c6ff)),
          //                       SizedBox(
          //                         width: deviceWidth * 0.025,
          //                       ),
          //                       Container(
          //                         alignment: Alignment.center,
          //                         width: deviceWidth * 0.35,
          //                         child: Text(
          //                           "3rd Year Subjects",
          //                           textAlign: TextAlign.center,
          //                           style: TextStyle(),
          //                         ),
          //                       ),
          //                       SizedBox(
          //                         width: deviceWidth * 0.025,
          //                       ),
          //                       Container(
          //                           alignment: Alignment.centerRight,
          //                           height: 2.0,
          //                           width: deviceWidth * 0.30,
          //                           color: new Color(0xff00c6ff))
          //                     ],
          //                   ));
          //             }
          //             if (index == 13) {
          //               return Container(
          //                   width: deviceWidth,
          //                   child: Row(
          //                     mainAxisSize: MainAxisSize.max,
          //                     mainAxisAlignment: MainAxisAlignment.center,
          //                     children: <Widget>[
          //                       Container(
          //                           alignment: Alignment.centerLeft,
          //                           height: 2.0,
          //                           width: deviceWidth * 0.30,
          //                           color: new Color(0xff00c6ff)),
          //                       SizedBox(
          //                         width: deviceWidth * 0.025,
          //                       ),
          //                       Container(
          //                         alignment: Alignment.center,
          //                         width: deviceWidth * 0.35,
          //                         child: Text(
          //                           "4th Year Subjects",
          //                           textAlign: TextAlign.center,
          //                           style: TextStyle(),
          //                         ),
          //                       ),
          //                       SizedBox(
          //                         width: deviceWidth * 0.025,
          //                       ),
          //                       Container(
          //                           alignment: Alignment.centerRight,
          //                           height: 2.0,
          //                           width: deviceWidth * 0.30,
          //                           color: new Color(0xff00c6ff))
          //                     ],
          //                   ));
          //             }

          //             return GestureDetector(
          //               child: new Container(
          //                 margin: const EdgeInsets.symmetric(
          //                   vertical: 16.0,
          //                   horizontal: 24.0,
          //                 ),
          //                 child: new Stack(
          //                   children: <Widget>[
          //                     new Container(
          //                       child: new Container(
          //                         margin: new EdgeInsets.fromLTRB(
          //                             76.0, 16.0, 16.0, 16.0),
          //                         constraints: new BoxConstraints.expand(),
          //                         child: new Column(
          //                           crossAxisAlignment:
          //                               CrossAxisAlignment.start,
          //                           children: <Widget>[
          //                             new Container(height: 4.0),
          //                             new
          //                             // Text(subjects[index]['subject'], Style.titleTextStyle)
          //                             Text(
          //                               subjects[index]['subject'],
          //                               style: TextStyle(
          //                                   color: Colors.white,
          //                                   fontSize: 18.0,
          //                                   fontWeight: FontWeight.w600),
          //                               //  style: Style.titleTextStyle
          //                             ),
          //                             new Container(height: 10.0),
          //                             //new Text(planet.location, style: Style.commonTextStyle),
          //                             new Separator(),
          //                             new Row(
          //                               mainAxisAlignment:
          //                                   MainAxisAlignment.center,
          //                               children: <Widget>[
          //                                 new Expanded(
          //                                   flex: 1,
          //                                   child: new Container(
          //                                     child: new Row(
          //                                         mainAxisSize:
          //                                             MainAxisSize.min,
          //                                         children: <Widget>[
          //                                           new Icon(
          //                                             Icons
          //                                                 .folder_open_outlined,
          //                                             color: Colors.white,
          //                                           ),
          //                                           new Container(width: 8.0),
          //                                           new Text(
          //                                               subjects[index]
          //                                                   ['Folder'],
          //                                               style: Style
          //                                                   .smallTextStyle),
          //                                         ]),
          //                                   ),
          //                                 ),
          //                                 new Container(
          //                                   width: 8.0,
          //                                 ),
          //                                 new Expanded(
          //                                   flex: 1,
          //                                   child: new Container(
          //                                     child: new Row(
          //                                         mainAxisSize:
          //                                             MainAxisSize.min,
          //                                         children: <Widget>[
          //                                           new Icon(
          //                                             Icons
          //                                                 .picture_as_pdf_outlined,
          //                                             color: Colors.white,
          //                                           ),
          //                                           new Container(width: 8.0),
          //                                           new Text(
          //                                               subjects[index]['Pdf'],
          //                                               style: Style
          //                                                   .smallTextStyle),
          //                                         ]),
          //                                   ),
          //                                 )
          //                               ],
          //                             ),
          //                           ],
          //                         ),
          //                       ),
          //                       height: 124.0,
          //                       margin: new EdgeInsets.only(left: 46.0),
          //                       // : new EdgeInsets.only(top: 72.0),
          //                       decoration: new BoxDecoration(
          //                         gradient: LinearGradient(
          //                             begin: Alignment.centerLeft,
          //                             end: Alignment.centerRight,
          //                             colors: [
          //                               Color(0xffbd081c).withOpacity(0.8),
          //                               Color(0xffbd081c).withOpacity(1)
          //                             ]),
          //                         //   color: Color(0xffbd081c  ),
          //                         // border: Border.all(
          //                         //   color: Color(0xffbd081c),
          //                         //   width: 1.0,
          //                         // ),
          //                         shape: BoxShape.rectangle,
          //                         borderRadius: new BorderRadius.circular(8.0),
          //                         boxShadow: <BoxShadow>[
          //                           new BoxShadow(
          //                             color: Colors.black12,
          //                             blurRadius: 10.0,
          //                             offset: new Offset(0.0, 10.0),
          //                           ),
          //                         ],
          //                       ),
          //                     ),
          //                     new Container(
          //                       margin:
          //                           new EdgeInsets.symmetric(vertical: 16.0),
          //                       alignment: FractionalOffset.centerLeft,
          //                       child: new CircleAvatar(
          //                         //foregroundColor: Colors.white ,
          //                         backgroundColor: Colors.transparent,
          //                         radius: 55,
          //                         //tag: "planet-hero-",
          //                         child: new CachedNetworkImage(
          //                           colorBlendMode: BlendMode.darken,
          //                           imageUrl: assetimage[index],
          //                           height: 92.0,
          //                           width: 92.0,
          //                           //placeholder: (context, url) =>
          //                           //   CircularProgressIndicator(),
          //                           errorWidget: (context, url, error) =>
          //                               Icon(Icons.error),
          //                         ),
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //               onTap: () {
          //                 Navigator.of(context).push(new MaterialPageRoute(
          //                     builder: (BuildContext context) =>
          //                         // premiumActivated  && index == 0
          //                         //   ?

          //                         new TopicList(subjects[index]['subject'])
          //                     //   : Buy(premiumActivated, days, purchaseDateUser),
          //                     ));
          //                 //   showRandomInterstitialAd();

          //                 //do what you want herecurs
          //               },
          //             );
          //           },
          //           itemCount: subjects == null ? 0 : subjects.length,
          //         );
          //       },
          //     ),
          //   ),
          // ),
          Container(
            height: 300,
          ),
        ],
      )),
    );
  }
}

// class Screen2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.yellow,
//       child: Center(child: Text("Screen 2")),
//     );
//   }
// }

// class Screen3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.cyan,
//       child: Center(child: Text("Screen 3")),
//     );
//   }
// }