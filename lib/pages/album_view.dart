import 'package:flutter/material.dart';
import 'package:spotify/components/album_card.dart';
import 'package:spotify/pages/home_page.dart';

class AlbumView extends StatefulWidget {
  const AlbumView({super.key});

  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  late ScrollController scrollController;
  double imagesize = 0;
  double initialsize = 240;
  @override
  void initState() {
    imagesize = initialsize;
    scrollController = ScrollController()
      ..addListener(() {
        imagesize = initialsize - scrollController.offset;
        print(imagesize);
        if (imagesize > 0 && imagesize < initialsize) {
          setState(() {});
        }
      });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.pink,
        ),
        SafeArea(
          child: SingleChildScrollView(
            controller: scrollController,
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(1),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(.5),
                                blurRadius: 32,
                                offset: const Offset(0, 20),
                                spreadRadius: 16),
                          ]),
                          child: Image.asset(
                            'assets/images/album2.jpg',
                            height: imagesize,
                            width: imagesize,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.caption,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/spotify.png',
                                    height: 40,
                                    width: 40,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Text('Spotify',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium)
                                ],
                              ),
                              Text(
                                '23,40,38,73,856 Likes  5h 3m',
                                style: Theme.of(context).textTheme.caption,
                              ),
                              const SizedBox(height: 16),
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.favorite,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Icons.more_horiz,
                                        color: Colors.white,
                                      )
                                    ],
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
                                          decoration: const BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Icon(
                                            Icons.play_arrow,
                                            size: 38,
                                          ),
                                        ),
                                        Container(
                                          width: 25,
                                          height: 25,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Icon(
                                            Icons.shuffle_rounded,
                                            size: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'You Might Also Like',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'
                            '\s'
                            'standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                            style: Theme.of(context).textTheme.caption,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AlbumPanel(
                                    albumName: 'Get Turnt',
                                    imagepath: 'assets/images/album1.jpg',
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  AlbumPanel(
                                    albumName: 'Get Turnt',
                                    imagepath: 'assets/images/album2.jpg',
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AlbumPanel(
                                    albumName: 'Get Turnt',
                                    imagepath: 'assets/images/album3.jpg',
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  AlbumPanel(
                                    albumName: 'Get Turnt',
                                    imagepath: 'assets/images/album4.jpg',
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AlbumPanel(
                                    albumName: 'Get Turnt',
                                    imagepath: 'assets/images/album5.jpg',
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  AlbumPanel(
                                    albumName: 'Get Turnt',
                                    imagepath: 'assets/images/album6.jpg',
                                  )
                                ],
                              ),
                            ],
                          ),
                        ]),
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
            top: 0,
            left: 0,
            child: SafeArea(
                child: Padding(
                    padding: const EdgeInsets.all(18),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                      child: const Icon(Icons.arrow_back_ios),
                    )))),
      ],
    );
  }
}
