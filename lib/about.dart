import 'package:flutter/material.dart';
import 'package:learningflutterdiceapp/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AboutListTile(
      icon: Icon(Icons.info),
      applicationIcon: FlutterLogo(),
      applicationName: "My Dices App",
      applicationVersion: "1.0.0",
      applicationLegalese: "Developer by Jorge A Peroza M",
      child: Text("Sobre el app"),
      dense: false,
      aboutBoxChildren: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            "Aplicación de prueba desarrollada como parte"
            " de las actividades del curso 'Introduction to Flutter Development "
            "Using Dart' en:",
            textAlign: TextAlign.justify,
          ),
        ),
        GestureDetector(
          onTap: _launchURL,
          child: Text(
            "https://www.appbrewery.co/",
            style: urlStyle(),
          ),
        ),
      ],
    );
  }
}

_launchURL() async {
  const url = 'https://www.appbrewery.co/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
