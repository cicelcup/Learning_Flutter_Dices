import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learningflutterdiceapp/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutAPP extends StatelessWidget {
  static const urlTraining = "https://www.appbrewery.co/";
  static const urlIcon = "https://www.flaticon.com";

  final Widget svgIcon = Container(
    width: 32.0,
    height: 32.0,
    child: SvgPicture.asset("images/dices.svg"),
  );

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget createRight(
    String information,
    String url,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            information,
            textAlign: TextAlign.justify,
          ),
        ),
        GestureDetector(
          onTap: () {
            _launchURL(url);
          },
          child: Text(
            url,
            style: urlStyle(),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return AboutListTile(
      icon: Icon(Icons.info),
      applicationIcon: svgIcon,
      applicationName: "My Dices App",
      applicationVersion: "1.0.0",
      applicationLegalese: "Developer by Jorge A Peroza M",
      child: Text("Sobre el app"),
      dense: false,
      aboutBoxChildren: <Widget>[
        createRight(
            "Aplicación de prueba desarrollada como parte"
            " de las actividades del curso 'Introduction to Flutter "
            "Development Using Dart' en:",
            urlTraining),
        createRight("Icon made by Freepik from", urlIcon),
      ],
    );
  }
}
