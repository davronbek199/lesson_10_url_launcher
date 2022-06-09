import 'package:flutter/material.dart';
import 'package:lesson_10_url_launcher/url_launcher_page.dart';
import 'package:lesson_10_url_launcher/web_view_page.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
        onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => UrlLauncherPage()));
        },
        child: Text("Url Launcher"),
      ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => WebViewPage()));
                },
                child: Text("Web View"),
              ),
            ],
          )),
    );
  }
}
