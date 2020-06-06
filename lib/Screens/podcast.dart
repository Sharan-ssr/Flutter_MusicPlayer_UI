import 'package:flutter/material.dart';
import 'package:musicplayer/Screens/drawer/drawer.dart';

class Podcast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Podcast"),
        backgroundColor: Colors.grey[900],
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.grey[850]),
        child: MainDrawer(),
      ),
      backgroundColor: Colors.grey[850],
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: new InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(50.0),
                        ),
                      ),
                      filled: true,
                      hintStyle: new TextStyle(color: Colors.grey[800]),
                      hintText: "Search Podcast",
                      fillColor: Colors.white),
                ),
              ),
              PodcastList(
                  "https://firebasestorage.googleapis.com/v0/b/fluttermusicapp-d2393.appspot.com/o/podcast%2F1.jpeg?alt=media&token=09a3b2da-9f3d-4cc6-b476-caf50b33294d",
                  "https://firebasestorage.googleapis.com/v0/b/fluttermusicapp-d2393.appspot.com/o/podcast%2F2.jpeg?alt=media&token=7d0e3108-c039-4755-a23c-71eb1c0c3794"),
              PodcastList(
                  "https://firebasestorage.googleapis.com/v0/b/fluttermusicapp-d2393.appspot.com/o/podcast%2F3.jpeg?alt=media&token=6567cf5a-70df-4c76-91a6-4c8588967b17",
                  "https://firebasestorage.googleapis.com/v0/b/fluttermusicapp-d2393.appspot.com/o/podcast%2F4.jpeg?alt=media&token=03ca4bbd-568a-4053-824b-4910c0774747"),
              PodcastList(
                  "https://firebasestorage.googleapis.com/v0/b/fluttermusicapp-d2393.appspot.com/o/podcast%2F5.jpeg?alt=media&token=a9a1a769-1eee-4174-b310-952e75f69c26",
                  "https://firebasestorage.googleapis.com/v0/b/fluttermusicapp-d2393.appspot.com/o/podcast%2F6.jpeg?alt=media&token=8a699a9f-7f37-4d93-b7dd-625b9c37e48c"),
              PodcastList(
                  "https://firebasestorage.googleapis.com/v0/b/fluttermusicapp-d2393.appspot.com/o/podcast%2F7.jpeg?alt=media&token=f9be78f5-b58d-4989-bbcd-747d0e17e739",
                  "https://firebasestorage.googleapis.com/v0/b/fluttermusicapp-d2393.appspot.com/o/podcast%2F8.jpeg?alt=media&token=48b27767-fa6e-45d4-9411-d2f45cea634a"),
              PodcastList(
                  "https://firebasestorage.googleapis.com/v0/b/fluttermusicapp-d2393.appspot.com/o/podcast%2F9.jpeg?alt=media&token=3ed85d4e-e1ae-4900-be63-805f9b122ad9",
                  "https://firebasestorage.googleapis.com/v0/b/fluttermusicapp-d2393.appspot.com/o/podcast%2F10.jpeg?alt=media&token=288cf448-f6df-40c7-b78e-e174620b5fb3"),
              PodcastList(
                  "https://firebasestorage.googleapis.com/v0/b/fluttermusicapp-d2393.appspot.com/o/podcast%2F11.jpeg?alt=media&token=84da46d4-beed-49ae-be86-931c6acbd62b",
                  "https://firebasestorage.googleapis.com/v0/b/fluttermusicapp-d2393.appspot.com/o/podcast%2F12.jpeg?alt=media&token=50833c0d-eca0-4807-b2e7-384d380e6efa"),
            ],
          ),
          NowPlaying(),
        ],
      ),
    );
  }
}

class PodcastList extends StatelessWidget {
  final String url1;
  final String url2;
  PodcastList(this.url1, this.url2);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 140,
          height: 100,
          margin: EdgeInsets.all(20),
          //color: Colors.grey,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage("$url1"), fit: BoxFit.cover),
          ),
        ),
        Container(
          width: 140,
          height: 100,
          margin: EdgeInsets.all(20),
          //color: Colors.grey,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage("$url2"), fit: BoxFit.cover),
          ),
        ),
      ],
    );
  }
}

class NowPlaying extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -300,
      child: Container(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 3),
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[900],
          ),
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Now PLaying",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "Memories-Maroon5",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.skip_previous,
                                color: Colors.white,
                                size: 40,
                              ),
                              Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                                size: 40,
                              ),
                              Icon(
                                Icons.skip_next,
                                color: Colors.white,
                                size: 40,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
