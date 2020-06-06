import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicplayer/Screens/drawer/drawer.dart';

class Playlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Playlist"),
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
                      hintText: "Search Song in Playlist",
                      fillColor: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 15, 30, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Create new Playlist",
                      style: TextStyle(color: Colors.greenAccent, fontSize: 18),
                    ),
                    Icon(
                      Icons.add_box,
                      color: Colors.greenAccent,
                    )
                  ],
                ),
              ),
              PlayListCard(
                  "https://i.pinimg.com/originals/d3/b1/25/d3b1252338c0461134e34aa7f902552e.jpg",
                  "My Playlist",
                  "125 songs"),
              PlayListCard(
                  "https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/123516231/original/f7c4a574a4c693e43c00d1829cf5a6a15505ae2f/create-custom-spotify-or-apple-music-playlist-covers.jpeg",
                  "Melody",
                  "75 songs"),
            ],
          ),
          NowPlaying()
        ],
      ),
    );
  }
}

class PlayListCard extends StatelessWidget {
  final String url;
  final String ply_name;
  final String song_numbers;
  PlayListCard(this.url, this.ply_name, this.song_numbers);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey[800],
        ),
        height: 70,
        padding: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage("$url"), fit: BoxFit.cover)),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    ply_name,
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    song_numbers,
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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
