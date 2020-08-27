import 'package:flutter/material.dart';
import 'package:ticket_booking/src/models/films.dart';
import 'package:ticket_booking/src/widgets/icon_card.dart';
import '../screens/details.dart';

class ImageCards extends StatefulWidget {

  List<Film> films=[];

  @override
  _ImageCardsState createState() => _ImageCardsState();

  ImageCards(this.films);

}

class _ImageCardsState extends State<ImageCards> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.films.length,
        itemBuilder: (_,index) {

          return Card( elevation: 7,
              child: Column(
                children: [
                  Container( padding: EdgeInsets.all(5),
                      child: InkWell(onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context )=> Details(widget.films[index])));
                      } ,
                        child: Image.asset(
                          widget.films[index].image,
                          height: 240,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                ],
              ),
          );

//            Image.asset(
//            'images/download.jpeg',
//            fit:BoxFit.fill,
//            height: 100,
//            width: 100,
//          );
//            ImageCard(
//            films: films[index],
//            name: films[index].film,
//            days: films[index].day,
//            picture: films[index].image,
//          );
        }
      ),
    );
  }
}
