import 'package:flutter/material.dart';
import 'package:musicplayer/Screens/drawer/drawer.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Music",
          style: TextStyle(fontSize: 30),
        ),
        backgroundColor: Colors.grey[900],
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.grey[850]),
        child: MainDrawer(),
      ),
      backgroundColor: Colors.grey[850],
      body: Stack(
        children: <Widget>[
          ListView(children: <Widget>[
            Container(
              height: 70,
              padding: EdgeInsets.only(left: 15, top: 10),
              child: Text(
                "Good Day ,Sharan",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.only(left: 15, top: 10),
              child: Text(
                "Recently Played",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  RecentlyPayed(
                      "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/summer-vibes-cd-album-cover-template-design-496875f6399f8c4bd4f1a34881f304fd_screen.jpg?ts=1588588366"),
                  RecentlyPayed(
                      "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/summer-music-album-cover-template-design-dac1237443d249f08244044955dc81cf.jpg?ts=1582621644"),
                  RecentlyPayed(
                      "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/mixtape-album-cover-art-design-template-68450756e786f85861314fa7d49d8366.jpg?ts=1586223871"),
                  RecentlyPayed(
                      "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/trap-mixtape-album-cover-art-design-template-8def87ea03395258562ea02e59dbba10.jpg?ts=1585192418"),
                  RecentlyPayed(
                      "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/trap-king-throne-the-mixtape-cd-cover-design-template-0c038ad88e188288820d31fd5a626161.jpg?ts=1583729062"),
                  RecentlyPayed(
                      "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/160db2f2cc6eaef1ad40cb4f5f43cffd.jpg?ts=1561422695"),
                ],
              ),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.only(left: 15, top: 10),
              child: Text(
                "Top Played Albums",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  TopAlbums(
                      "https://img.discogs.com/dVJz4Gr9FSwjnuro00d-mSSS2bs=/fit-in/600x600/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-12356091-1533585573-9838.jpeg.jpg"),
                  TopAlbums(
                      "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/taylor-swift-lover-album-art-1560458980-640x640-1560529343.jpg"),
                  TopAlbums(
                      "https://upload.wikimedia.org/wikipedia/en/3/34/One_Direction_-_Drag_Me_Down_%28Official_Single_Cover%29.png"),
                  TopAlbums(
                      "https://img.discogs.com/Nkh4thD79PG8LBd4IoyS3BscbTw=/fit-in/300x300/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/R-7470398-1442140314-3273.jpeg.jpg"),
                  TopAlbums(
                      "https://m.media-amazon.com/images/I/71chgqh303L._SS500_.jpg"),
                ],
              ),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.only(left: 15, top: 10),
              child: Text(
                "Trending Now",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  TrendingNow(
                      "https://upload.wikimedia.org/wikipedia/en/5/53/Maroon_5_-_V_%28Official_Album_Cover%29.png",
                      "https://i0.wp.com/abitofpopmusic.com/wp-content/uploads/2019/06/d9hf8adxuaegh_r2983594819281445903.jpg?fit=953%2C1200&ssl=1"),
                  TrendingNow(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXyd7KbNPejSrBtd52ilueK8i6KtWsopSsZwfzjMt68CHNPm4ltg&s",
                      "https://upload.wikimedia.org/wikipedia/en/e/e5/Marshmello_and_Bastille_Happier.png"),
                  TrendingNow(
                      "https://upload.wikimedia.org/wikipedia/en/0/01/Taylor_Swift_-_Love_Story.png",
                      "https://ojp8zqasz32qat8n13om56p4-wpengine.netdna-ssl.com/wp-content/uploads/2013/10/One-Direction-Story-of-My-Life.png"),
                  TrendingNow(
                      "https://c-sf.smule.com/s-sf-bck4/arr/30/c3/3c019ee2-5f9a-4799-a219-dce17d4a1460.jpg",
                      "https://i0.wp.com/themusicalhype.com/wp-content/uploads/2019/11/lewis-capaldi-divinely-uninspired-to-a-hellish-extent-capitol.jpg?ssl=1"),
                  TrendingNow(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQyScC63xoi16FMAA64zd16BE60tmaLXzMLLqFSsZ--ZIWcbLgF&usqp=CAU",
                      "https://i.pinimg.com/originals/73/65/29/736529b299e10c9f59f92385346c0f1c.jpg"),
                  TrendingNow(
                      "https://pm1.narvii.com/6985/43df72a5b8e94a837e55abbf099a1f839faa7146r1-850-850v2_uhq.jpg",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQwOKTzD4sdWmmr2YRRkuJTXvmul2oGFGI2XYJmv8coYBMCYJnAg&s"),
                ],
              ),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.only(left: 15, top: 10),
              child: Text(
                "Top Artists",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  TopArtist(
                      "https://www.readunwritten.com/wp-content/uploads/30592554_1854883871259124_20622547464749056_n-696x400.jpg",
                      "https://www.sierraguitar.org/wp-content/uploads/2017/11/ty.jpg"),
                  TopArtist(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQQsjyKvEqGhbj6ZWtzvF00zQSyziXotdAwTUyU6ZYLEBz_8Rg&s",
                      "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F6%2F2012%2F04%2F01-30-greatest-artists-adele_610.jpg"),
                  TopArtist(
                      "https://api.time.com/wp-content/uploads/2016/12/top-twitter-music-trends-2016.jpg",
                      "https://www.grammy.com/sites/com/files/styles/news_detail_header/public/gettyimages-1014868608.jpg?itok=eLyDCDbM"),
                  TopArtist(
                      "https://www.missmalini.com/wp-content/uploads/2017/07/Ed-Sheeran-1.jpg",
                      "https://pbs.twimg.com/profile_images/1209988634184581120/Bu95OE_R_400x400.jpg"),
                  TopArtist(
                      "https://cdn.dnaindia.com/sites/default/files/styles/full/public/2019/02/25/795570-hip-hop-tamizha-aadhi.jpg",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbER7weTHg3xUuHKBkleswEH75JRvNq_A-GehVfuGPpDzF9lCcwA&s"),
                  TopArtist(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgnrHW7xTdwvDnxWJ39wBprSsvdK9WUytDd7DFA1-cL5BdHF7m&s",
                      "https://upload.wikimedia.org/wikipedia/commons/0/07/Haricharan_Stage.JPG"),
                ],
              ),
            ),
          ]),
          NowPlaying(),
        ],
      ),
    );
  }
}

class RecentlyPayed extends StatelessWidget {
  final String url;
  RecentlyPayed(this.url);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage("$url"), fit: BoxFit.cover)),
          ),
        ),
      ],
    ));
  }
}

class TopAlbums extends StatelessWidget {
  final String url;
  TopAlbums(this.url);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage("$url"), fit: BoxFit.cover)),
      ),
    );
  }
}

class TrendingNow extends StatelessWidget {
  final String url1;
  final String url2;
  TrendingNow(this.url1, this.url2);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage("$url1"), fit: BoxFit.cover)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage("$url2"), fit: BoxFit.cover)),
            ),
          ),
        ],
      ),
    );
  }
}

class TopArtist extends StatelessWidget {
  final String url1;
  final String url2;
  TopArtist(this.url1, this.url2);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: NetworkImage("$url1"), fit: BoxFit.cover)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: NetworkImage("$url2"), fit: BoxFit.cover)),
            ),
          ),
        ],
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
