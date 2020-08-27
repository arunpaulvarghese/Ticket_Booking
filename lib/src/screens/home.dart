import 'package:flutter/material.dart';
import 'package:ticket_booking/src/widgets/icon_card.dart';
import 'package:ticket_booking/src/widgets/images_cards.dart';

import '../models/films.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Film> best_films = [
    Film(film: 'Kappela' ,image: 'images/1.jpg', description: 'Film, also called movie, motion picture or moving picture, is a visual art-form used to simulate experiences that communicate ideas, stories, perceptions, feelings, beauty, or atmosphere through the use of moving images. These images are generally accompanied by sound, and more rarely, other sensory stimulations.'),
    Film(film: 'No time to die' ,image: 'images/2.jpg',description: 'Film, also called movie, motion picture or moving picture, is a visual art-form used to simulate experiences that communicate ideas, stories, perceptions, feelings, beauty, or atmosphere through the use of moving images. These images are generally accompanied by sound, and more rarely, other sensory stimulations.'),
    Film(film: 'Kammattipadam' ,image: 'images/3.jpg',description: 'Film, also called movie, motion picture or moving picture, is a visual art-form used to simulate experiences that communicate ideas, stories, perceptions, feelings, beauty, or atmosphere through the use of moving images. These images are generally accompanied by sound, and more rarely, other sensory stimulations.'),
    Film(film: 'Oblivion' ,image: 'images/4.jpg',description: 'Film, also called movie, motion picture or moving picture, is a visual art-form used to simulate experiences that communicate ideas, stories, perceptions, feelings, beauty, or atmosphere through the use of moving images. These images are generally accompanied by sound, and more rarely, other sensory stimulations.'),
  ];

  List<Film> recommended_films = [
    Film(film: 'Bloodshot' ,image: 'images/01.jpeg',description: 'Film, also called movie, motion picture or moving picture, is a visual art-form used to simulate experiences that communicate ideas, stories, perceptions, feelings, beauty, or atmosphere through the use of moving images. These images are generally accompanied by sound, and more rarely, other sensory stimulations.'),
    Film(film: 'jimangi' ,image: 'images/02.jpg',description: 'Film, also called movie, motion picture or moving picture, is a visual art-form used to simulate experiences that communicate ideas, stories, perceptions, feelings, beauty, or atmosphere through the use of moving images. These images are generally accompanied by sound, and more rarely, other sensory stimulations.'),
    Film(film: 'Frozen' ,image: 'images/03.jpg',description: 'Film, also called movie, motion picture or moving picture, is a visual art-form used to simulate experiences that communicate ideas, stories, perceptions, feelings, beauty, or atmosphere through the use of moving images. These images are generally accompanied by sound, and more rarely, other sensory stimulations.'),
    Film(film: 'Kappela' ,image: 'images/1.jpg',description: 'Film, also called movie, motion picture or moving picture, is a visual art-form used to simulate experiences that communicate ideas, stories, perceptions, feelings, beauty, or atmosphere through the use of moving images. These images are generally accompanied by sound, and more rarely, other sensory stimulations.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.menu,color: Colors.black,), onPressed: (){},)
                  ],
                ),
                 SizedBox(height: 10,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(text: 'Welcome ', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700,color: Colors.red),),
                        TextSpan(text: 'to the Biggest \n Entertainment Destination')
                      ], style: TextStyle(fontSize: 32,fontWeight: FontWeight.w500,color:Colors.black )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconCard(iconData: Icons.live_tv, text: 'Bollywood',),
                    IconCard(iconData: Icons.movie, text: 'HollyWood',),
                    IconCard(iconData: Icons.movie_filter, text: 'Kids',),


                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text('Best Movies',style: TextStyle(fontSize: 20,fontWeight:FontWeight.w500 ),),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                ImageCards(best_films),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text('Recommended Movies',style: TextStyle(fontSize: 20,fontWeight:FontWeight.w500 ),),
                    )
                  ],
                ),
                SizedBox(height: 25,),
                ImageCards(recommended_films),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
