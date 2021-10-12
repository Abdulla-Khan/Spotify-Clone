import 'package:flutter/material.dart';

class AlbumView extends StatefulWidget {
  const AlbumView({Key? key}) : super(key: key);

  @override
  _AlbumViewState createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  late ScrollController scrollController;
  double imageSize = 0;
  double initialSize = 240;
  double containerHeight = 500;
  double containerInitialHeight = 500;
  double imageOpacity = 1;
  bool showTopBar = false;
  @override
  void initState() {
    scrollController = scrollController
      ..addListener(() {
        imageSize = initialSize - scrollController.offset;
        if (imageSize < 0) {
          imageSize = 0;
        }
        containerHeight = containerInitialHeight + scrollController.offset;
        if (containerHeight < 0) {
          containerHeight = 0;
        }
        imageOpacity = imageSize / initialSize;
        if (scrollController.offset > 224) {
          showTopBar = true;
        } else {
          showTopBar = false;
        }
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      imageSize = initialSize;
    });
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: containerHeight,
            width: MediaQuery.of(context).size.width,
            color: Colors.pink,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Opacity(
                opacity: imageOpacity,
                child: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      offset: Offset(0, 10),
                      blurRadius: 32,
                      spreadRadius: 16,
                    ),
                  ]),
                  child: Image(
                    image: AssetImage('assets/cover1.jpg'),
                    width: imageSize,
                    height: imageSize,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              )
            ]),
          ),
          SafeArea(
            child: SingleChildScrollView(
              controller: scrollController,
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    clipBehavior: Clip.none,
                    width: MediaQuery.of(context).size.width,
                    height: 520,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(1),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Column(
                        children: [
                          SizedBox(height: initialSize),
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'dvasdvsdvsdvsdavsadvsadvdvsdvsdavsadvdsvdasvasvasdvasdvasdvasdvsdavsdv',
                                  style: Theme.of(context).textTheme.caption,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: const [
                                    Image(
                                      image: AssetImage('assets/logo.png'),
                                      width: 32,
                                      height: 32,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'Spotify',
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  '1.004,32 likes 5h 3m',
                                  style: Theme.of(context).textTheme.caption,
                                ),
                                SizedBox(height: 16),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Row(
                                      children: const [
                                        Icon(Icons.favorite),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        Icon(Icons.more_horiz)
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    height: 1000,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            child: Container(
              child: SafeArea(
                child: Container(
                  color: Color(0xFFC61855),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Stack(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.keyboard_arrow_left),
                      ),
                      Text(
                        "Op",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Container(
                              width: 64,
                              height: 64,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff14D860),
                              ),
                              child: Icon(
                                Icons.play_arrow,
                                size: 38,
                              ),
                            ),
                            Container(
                              width: 64,
                              height: 64,
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.shuffle_on,
                                size: 14,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
