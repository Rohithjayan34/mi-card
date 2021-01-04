import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/rohith.jpg'),
              ),
              Text(
                'Rohith V',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.teal.shade100,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                  margin:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '8943328780',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                  )),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'rohithjayan34@email.com',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro'),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(
                      Ionicons.logo_twitter,
                      size: 50,
                    ), onPressed: () {
                    _launchURL("https://twitter.com/home");
                  },
                  ),
                  IconButton(
                      icon: Icon(
                      Ionicons.logo_facebook,
                      size: 50,
                    ), onPressed: () {
                    _launchURL("https://www.facebook.com/rohith.jayan.71/photos");
                  },
                  ),
                  IconButton(
                    icon: Icon(
                      Ionicons.logo_instagram,
                      size: 50,
                    ), onPressed: () {
                    _launchURL("https://www.instagram.com/");
                  },
                  ),
                  IconButton(
                    onPressed:() {
                      _launchURL("https://github.com/Rohithjayan34");

                    },
                    icon: Icon(
                      Ionicons.logo_github,
                      size: 50,
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _launchURL(String url) async {
    // const url = 'https://github.com/Rohithjayan34';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

