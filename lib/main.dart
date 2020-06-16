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
      color: Colors.white,
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
    Items item1 = new Items(
      img:
          "https://pbs.twimg.com/profile_images/1236950392359071744/5gn_uX3Y_400x400.jpg",
      first_name: "Mouhamadou",
      last_name: "DER",
    );
    Items item2 = new Items(
      img:
          "https://pbs.twimg.com/profile_images/1271783906526838784/GjhX1M7O_400x400.jpg",
      first_name: "Thierno",
      last_name: "THIAM",
    );
    Items item3 = new Items(
      img:
          "https://pbs.twimg.com/profile_images/1111994440896389122/ztpQbzlX_400x400.png",
      first_name: "Tonux",
      last_name: "SAMB",
    );

    Items item4 = new Items(
      img:
          "https://pbs.twimg.com/profile_images/1148152622689464320/HteOCi5n_400x400.png",
      first_name: "Free",
      last_name: "",
    );
    Items item5 = new Items(
      img:
          "https://pbs.twimg.com/profile_images/1200045239232335872/qNFMSZWA_400x400.jpg",
      first_name: "Orange",
      last_name: "",
    );
    Items item6 = new Items(
      img:
          "https://pbs.twimg.com/profile_images/1210181354991824896/DSCynbbJ_400x400.jpg",
      first_name: "Expresso",
      last_name: "",
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
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
        body: SingleChildScrollView(
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
                      fontWeight: FontWeight.w400, fontSize: width * 0.05),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                    color: Colors.grey[200],
                    child: Column(
                      children: <Widget>[
                        CardBox(height, width),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Center(
                          child: SizedBox(
                            width: width * 0.55,
                            child: RaisedButton(
                              color: secondaryColor,
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
                          height: height * 0.004,
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
                                  color: Colors.red,
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
                              CardContact(height: height, item: item1),
                              SizedBox(
                                width: 10,
                              ),
                              CardContact(height: height, item: item2),
                              SizedBox(
                                width: 10,
                              ),
                              CardContact(height: height, item: item3),
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
                          height: height * 0.004,
                        ),
                        SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.fromLTRB(
                                0, height * 0.008, 0, height * 0.04),
                            child: Row(children: <Widget>[
                              CircleWidget(
                                  height: height,
                                  width: width,
                                  img: item4.img,
                                  name: item4.first_name),
                              SizedBox(
                                width: 10,
                              ),
                              CircleWidget(
                                  height: height,
                                  width: width,
                                  img: item5.img,
                                  name: item5.first_name),
                              SizedBox(
                                width: 10,
                              ),
                              CircleWidget(
                                  height: height,
                                  width: width,
                                  img: item6.img,
                                  name: item6.first_name),
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

  SizedBox CardBox(double height, double width) {
    return SizedBox(
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
                    color: primaryColor, blurRadius: 2, offset: Offset(1, 2))
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
                  style:
                      TextStyle(color: Colors.white, fontSize: width * 0.068),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                  '47-- ---- ---- --03',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.057,
                      fontWeight: FontWeight.w300,
                      letterSpacing: width * 0.0193),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          color: Colors.white, fontSize: width * 0.055),
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
    );
  }
}

class CardContact extends StatelessWidget {
  const CardContact({
    Key key,
    @required this.height,
    @required this.item,
  }) : super(key: key);

  final double height;
  final Items item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.17,
      width: 100,
      color: Color(0XFF110a5c),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
            height: 1,
          ),
          Container(
            height: height * 0.07,
            width: height * 0.07,
            child: Container(
              width: 10,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.red,
                backgroundImage: NetworkImage(item.img),
              ),
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                border: new Border.all(
                  color: Colors.red,
                  width: 2.0,
                ),
              ),
            ),
          ),
          Text(item.first_name, style: TextStyle(color: Colors.white)),
          Text(item.last_name, style: TextStyle(color: Colors.white)),
          SizedBox(
            height: 1,
          ),
        ],
      ),
    );
  }
}

class CircleWidget extends StatelessWidget {
  const CircleWidget({
    Key key,
    @required this.height,
    @required this.width,
    @required this.img,
    @required this.name,
  }) : super(key: key);

  final double height;
  final double width;
  final String img;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.17,
      width: width * 0.26,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(0),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[400], blurRadius: 1, offset: Offset(0, 2))
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 1,
          ),
          NewWidget(height: height, img: img),
          Text(name),
          SizedBox(
            height: 1,
          ),
        ],
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key key,
    @required this.height,
    @required this.img,
  }) : super(key: key);

  final double height;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.07,
      width: height * 0.07,
      child: CircleAvatar(
        radius: 50,
        backgroundImage: NetworkImage(img),
      ),
    );
  }
}

class Items {
  String img;
  String first_name;
  String last_name;

  Items({this.img, this.first_name, this.last_name});
}
