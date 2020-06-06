import 'package:flutter/material.dart';
import 'package:musicplayer/Screens/mainpage.dart';
import 'package:musicplayer/Screens/playlist.dart';
import 'package:musicplayer/Screens/podcast.dart';
import 'package:musicplayer/Screens/search.dart';
import 'package:musicplayer/Screens/settings.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.cyan,
        width: 80,
        child: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainPage()),
                  );
                },
                child: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Search()),
                  );
                },
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Podcast()),
                  );
                },
                child: Icon(
                  Icons.wifi_tethering,
                  color: Colors.white,
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Playlist()),
                  );
                },
                child: Icon(
                  Icons.library_music,
                  color: Colors.white,
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Settings()),
                  );
                },
                child: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
