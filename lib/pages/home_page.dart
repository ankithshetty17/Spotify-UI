import 'package:flutter/material.dart';
import 'package:spotify/components/recent_tile.dart';
import 'package:spotify/models/recent_albumlist.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 final List<Album> Recentlyplayed=[
  Album(
   imagepath: 'assets/images/album1.jpg',
   title: 'Best Mode',
   ),
   Album(
   imagepath: 'assets/images/album2.jpg',
   title: 'Top 50-Global',
   ),
   Album(
   imagepath: 'assets/images/album3.jpg',
   title: 'Motivation Mix',
   ),
   Album(
   imagepath: 'assets/images/album4.jpg',
   title: 'Power Gamming',
   ),
   Album(
   imagepath: 'assets/images/album5.jpg',
   title: 'Top Songs-Global',
   ), 
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*.5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors:[
                  Colors.white.withOpacity(0.5),
                  Colors.white.withOpacity(0.1),
                  Colors.white.withOpacity(0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
                 ),
            ),
          ),
          SingleChildScrollView(
            physics:const  BouncingScrollPhysics(),
            child:Column(
              children: [
                SizedBox(height:MediaQuery.of(context).size.height*0.07),
                Padding(padding:const  EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text('Recently Played',
                  style: Theme.of(context).textTheme.headline6),
                 const  Row(
                    children:[
                  Icon(Icons.settings),
                  SizedBox(width: 15,),
                  Icon(Icons.history),
                    ],
                  ),
                ],
                ),
                ),
                SizedBox(height: 150,
                child:
                ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Recentlyplayed.length,
                  itemBuilder: (context,index){
                    final album= Recentlyplayed[index];
                  return RecentTile(album: album);
                }),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}