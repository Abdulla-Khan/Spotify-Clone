import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:spotify/views/album_view.dart';
import 'package:spotify/widget/album_cards.dart';
import 'package:spotify/widget/songs_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.topLeft, children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.6,
          decoration: const BoxDecoration(color: Color(0xFf1c7a74)),
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0),
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(1),
                  Colors.black.withOpacity(1),
                  Colors.black.withOpacity(1),
                ],
              ),
            ),
            child: SafeArea(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Recently Played',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Row(
                                children: const [
                                  Icon(Icons.history),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(Icons.settings),
                                ],
                              ),
                            ])),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(20.0),
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          Albumcard(
                            label: "?",
                            image: AssetImage('assets/cover10.jpg'),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const AlbumView(),
                                ),
                              );
                            },
                          ),
                          SizedBox(width: 20),
                          Albumcard(
                            label: "Ye",
                            image: AssetImage('assets/cover11.jpg'),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AlbumView(),
                                ),
                              );
                            },
                          ),
                          SizedBox(width: 20),
                          Albumcard(
                            label: "K.",
                            image: AssetImage('assets/cover12.jpg'),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AlbumView(),
                                ),
                              );
                            },
                          ),
                          SizedBox(width: 20),
                          Albumcard(
                            label: "Die Lit",
                            image: AssetImage('assets/cover13.jpg'),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AlbumView(),
                                ),
                              );
                            },
                          ),
                          SizedBox(width: 20),
                          Albumcard(
                            label: "Top 50 Global",
                            image: AssetImage('assets/top50.jpg'),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AlbumView(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Good Evening',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              RowAlbumCard(
                                  image: AssetImage("assets/cover1.jpg"),
                                  label: "Top Hits Rap"),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                  image: AssetImage("assets/cover2.jpg"),
                                  label: "Top 10 Hits"),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              RowAlbumCard(
                                  image: AssetImage("assets/cover3.jpg"),
                                  label: "For You"),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                  image: AssetImage("assets/cover4.jpg"),
                                  label: "Recently Played"),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              RowAlbumCard(
                                  image: AssetImage("assets/cover6.jpg"),
                                  label: "FU"),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                  image: AssetImage("assets/cover5.jpg"),
                                  label: "Nigga"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Based on your recent listening',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: const [
                              SongCard(
                                image: AssetImage('assets/cover8.jpg'),
                                label: 'WeekEnd',
                              ),
                              SizedBox(
                                width: 32,
                              ),
                              SongCard(
                                image: AssetImage('assets/cover9.jpg'),
                                label: 'Mac Miller',
                              ),
                              SizedBox(
                                width: 32,
                              ),
                              SongCard(
                                image: AssetImage('assets/cover10.jpg'),
                                label: 'XXXTENTACTION',
                              ),
                              SizedBox(
                                width: 32,
                              ),
                              SongCard(
                                image: AssetImage('assets/cover11.jpg'),
                                label: 'Kanye West',
                              ),
                              SizedBox(
                                width: 32,
                              ),
                              SongCard(
                                image: AssetImage('assets/cover12.jpg'),
                                label: 'Kendrick Lamar',
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Recommended Radio',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: const [
                              SongCard(
                                image: AssetImage('assets/radio1.jpg'),
                                label: 'Rap Demon Radio',
                              ),
                              SizedBox(
                                width: 32,
                              ),
                              SongCard(
                                image: AssetImage('assets/radio5.jpg'),
                                label: 'Eminem',
                              ),
                              SizedBox(
                                width: 32,
                              ),
                              SongCard(
                                image: AssetImage('assets/radio2.jpg'),
                                label: 'Rap Plug-ins',
                              ),
                              SizedBox(
                                width: 32,
                              ),
                              SongCard(
                                image: AssetImage('assets/radio4.jpg'),
                                label: 'MacMiller',
                              ),
                              SizedBox(
                                width: 32,
                              ),
                              SongCard(
                                image: AssetImage('assets/radio3.jpg'),
                                label: 'Kendrick Lamar',
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ]),
            ),
          ),
        )
      ]),
    );
  }
}

class RowAlbumCard extends StatelessWidget {
  final AssetImage image;
  final String label;
  const RowAlbumCard({
    Key? key,
    required this.image,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(8.0),
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Image(
              image: image,
              width: 48,
              height: 48,
            ),
            Text(label)
          ],
        ),
      ),
    );
  }
}
