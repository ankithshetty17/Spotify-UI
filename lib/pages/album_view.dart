import 'package:flutter/material.dart';

class AlbumView extends StatefulWidget {
  const AlbumView({super.key});

  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
    Container(
      color: Colors.pink,
    ),
    SafeArea(child:
    SingleChildScrollView(
      physics:const  BouncingScrollPhysics(),
      child: Column(
        children:[
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
          padding:const  EdgeInsets.symmetric(vertical: 40),
        child:
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color:Colors.black.withOpacity(.5),
                    blurRadius: 32,
                    offset:const  Offset(0, 20),
                    spreadRadius: 16
                    ),
                ]
              ),
              child:
            Image.asset('assets/images/album2.jpg',
            height: MediaQuery.of(context).size.width-120,
            width: MediaQuery.of(context).size.width-120,
            fit: BoxFit.cover,
            ),
            ),
           const  SizedBox(height: 10,),
           Padding(padding:const  EdgeInsets.all(16),
           child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
            Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.caption,),
            const SizedBox(height:5,),
            Row(
              children: [
                Image.asset('assets/images/spotify.png',height:40,width: 40,),
               const  SizedBox(width: 2,),
                Text('Spotify',style: Theme.of(context).textTheme.bodyMedium)
              ],
            ),
            Text('23,40,38,73,856 Likes  5h 3m',
            style: Theme.of(context).textTheme.caption,)
           ],
           ),
           ),
          ],
        ),
        ),
      ),
      Container(
        color: Colors.black,
        height: 500,
      )
        ],
      ),
    ),
    ),
      ],
    );
  }
}