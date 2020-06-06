import 'package:flutter/material.dart';
import 'package:musicplayer/Screens/drawer/drawer.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Colors.grey[900],
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.grey[850]),
        child: MainDrawer(),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[800],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "SharanRaj S",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 110),
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://avatars2.githubusercontent.com/u/31183466?s=460&u=a23ddbbc8bf1ad44a3334eb2261038c6acd9312c&v=4"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.only(left: 5),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[800],
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                          child: Text(
                        "Edit Profile",
                        style: TextStyle(color: Colors.white),
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  padding: EdgeInsets.only(left: 5),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[800],
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                          child: Text(
                        "Get Pro",
                        style: TextStyle(color: Colors.white),
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  padding: EdgeInsets.only(left: 5),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[800],
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                          child: Text(
                        "Equalizer Settings",
                        style: TextStyle(color: Colors.white),
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  padding: EdgeInsets.only(left: 5),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[800],
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                          child: Text(
                        "Security",
                        style: TextStyle(color: Colors.white),
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.only(left: 5),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[800],
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                          child: Text(
                        "Logout",
                        style: TextStyle(color: Colors.white),
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          NowPlaying(),
        ],
      ),
      backgroundColor: Colors.grey[850],
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
