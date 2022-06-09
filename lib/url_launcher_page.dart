import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherPage extends StatelessWidget {
  UrlLauncherPage({Key? key}) : super(key: key);

  String _url = "https://daryo.uz/uz/p/biz-haqimizda/";

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          _launchUrl();
        },
        child: Text("biz haqimizda"));
  }

  void _launchUrl() async {
    if (!await launch(_url)) throw "Error";
  }
}
