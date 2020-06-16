import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'constants.dart';
import 'package:dotted_border/dotted_border.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Design PostCash',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.adjust, color: primaryColor),
                Text(
                  'PostCash',
                  style: TextStyle(
                      color: primaryColor, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  width: width * 0.25,
                ),
                Text(
                  'Vendredi 03 Aout',
                  style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 13,
                      fontWeight: FontWeight.w200),
                ),
              ],
            )),
        body: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  ' Bonjour Mouhamadou',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: width * 0.05),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                    color: Colors.grey[200],
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: height * 0.27,
                          child: Padding(
                            padding: EdgeInsets.all(height * 0.013),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [secondaryColor, primaryColor]),
                                  borderRadius: BorderRadius.circular(9),
                                  boxShadow: [
                                    BoxShadow(
                                        color: primaryColor,
                                        blurRadius: 2,
                                        offset: Offset(1, 2))
                                  ]),
                              child: Padding(
                                padding: EdgeInsets.all(height * 0.018),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Text(
                                      'Solde du Compte',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: width * 0.04,
                                          fontWeight: FontWeight.w200),
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Text(
                                      '126 030 cfa',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: width * 0.068),
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Text(
                                      '47-- ---- ---- --03',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: width * 0.057,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          'Expire le:',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: width * 0.05,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        Text(
                                          '04/20',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: width * 0.055),
                                        ),
                                        SizedBox(
                                          width: width * 0.3,
                                        ),
                                        Text(
                                          'VISA',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: width * 0.07,
                                              fontWeight: FontWeight.w100),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: RaisedButton(
                            color: Colors.red,
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Icon(
                                  Icons.credit_card,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: width * 0.02,
                                ),
                                Text(
                                  'Recharger',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width * 0.05,
                                      fontWeight: FontWeight.w200),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.005,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(width * 0.02, 0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Envoyer de l\'argent à:',
                                style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.search,
                                color: primaryColor,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.005,
                        ),
                        SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.all(10),
                            child: Row(children: <Widget>[
                              DottedBorder(
                                color: Colors.red,
                                dashPattern: [8, 4],
                                strokeWidth: 1,
                                child: Container(
                                  height: height * 0.17,
                                  width: 100,
                                  color: Colors.white,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Icon(Icons.add_circle_outline,
                                          color: primaryColor),
                                      Text('Ajouter'),
                                      Text('un contact'),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: height * 0.17,
                                width: 100,
                                color: Color(0XFF110a5c),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 1,
                                    ),
                                    Container(
                                      height: height * 0.07,
                                      width: height * 0.07,
                                      child: CircleAvatar(
                                        radius: 50,
                                        backgroundImage: NetworkImage(
                                            'https://pbs.twimg.com/profile_images/1236950392359071744/5gn_uX3Y_400x400.jpg'),
                                      ),
                                    ),
                                    Text('Mouhamadou',
                                        style: TextStyle(color: Colors.white)),
                                    Text('DER',
                                        style: TextStyle(color: Colors.white)),
                                    SizedBox(
                                      height: 1,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: height * 0.17,
                                width: 100,
                                color: Color(0XFF110a5c),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 1,
                                    ),
                                    Container(
                                      height: height * 0.07,
                                      width: height * 0.07,
                                      child: CircleAvatar(
                                        radius: 50,
                                        backgroundImage: NetworkImage(
                                            'https://pbs.twimg.com/profile_images/1271783906526838784/GjhX1M7O_400x400.jpg'),
                                      ),
                                    ),
                                    Text('Thierno',
                                        style: TextStyle(color: Colors.white)),
                                    Text('THIAM',
                                        style: TextStyle(color: Colors.white)),
                                    SizedBox(
                                      height: 1,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: height * 0.17,
                                width: 100,
                                color: Color(0XFF110a5c),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 1,
                                    ),
                                    Container(
                                      height: height * 0.07,
                                      width: height * 0.07,
                                      child: CircleAvatar(
                                        radius: 50,
                                        backgroundImage: NetworkImage(
                                            'https://pbs.twimg.com/profile_images/1111994440896389122/ztpQbzlX_400x400.png'),
                                      ),
                                    ),
                                    Text(
                                      'Tonux',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text('SAMB',
                                        style: TextStyle(color: Colors.white)),
                                    SizedBox(
                                      height: 1,
                                    ),
                                  ],
                                ),
                              ),
                            ])),
                        Padding(
                          padding: EdgeInsets.fromLTRB(width * 0.02, 0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Acheter du crédit via:',
                                style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.005,
                        ),
                        SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.all(10),
                            child: Row(children: <Widget>[
                              Container(
                                height: height * 0.17,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey[400],
                                          blurRadius: 1,
                                          offset: Offset(0, 2))
                                    ]),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 1,
                                    ),
                                    Container(
                                      height: height * 0.07,
                                      width: height * 0.07,
                                      child: CircleAvatar(
                                        radius: 50,
                                        backgroundImage: NetworkImage(
                                            'https://pbs.twimg.com/profile_images/1148152622689464320/HteOCi5n_400x400.png'),
                                      ),
                                    ),
                                    Text('Free'),
                                    SizedBox(
                                      height: 1,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: height * 0.17,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey[400],
                                          blurRadius: 1,
                                          offset: Offset(0, 2))
                                    ]),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 1,
                                    ),
                                    Container(
                                      height: height * 0.07,
                                      width: height * 0.07,
                                      child: CircleAvatar(
                                        radius: 50,
                                        backgroundImage: NetworkImage(
                                            'https://pbs.twimg.com/profile_images/1200045239232335872/qNFMSZWA_400x400.jpg'),
                                      ),
                                    ),
                                    Text('Orange'),
                                    SizedBox(
                                      height: 1,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: height * 0.17,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey[400],
                                          blurRadius: 1,
                                          offset: Offset(0, 2))
                                    ]),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 1,
                                    ),
                                    Container(
                                      height: height * 0.07,
                                      width: height * 0.07,
                                      child: CircleAvatar(
                                        radius: 50,
                                        backgroundImage: NetworkImage(
                                            'https://pbs.twimg.com/profile_images/1210181354991824896/DSCynbbJ_400x400.jpg'),
                                      ),
                                    ),
                                    Text('Expresso'),
                                    SizedBox(
                                      height: 1,
                                    ),
                                  ],
                                ),
                              ),
                            ])),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
