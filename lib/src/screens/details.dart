import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking/src/models/films.dart';

class Details extends StatefulWidget {
  final Film films;

  Details(this.films);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int ticket = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context){
          return SafeArea(
            child: Container(
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                    child: Column(
                      children: [
                        Image.asset(
                          widget.films.image,
                          height: 250,
                          width: double.infinity,
                          fit: BoxFit.fill,
                        ),
                        Card(
                          elevation: 5,
                          child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Text(
                                  'Description',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  widget.films.description,
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(10),
                            child: Container(
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Card(
                                      child: Container(
                                          height: 30,
                                          margin: EdgeInsets.all(10),
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                if (ticket > 1) ticket--;
                                              });
                                            },
                                            child: Image.asset(
                                              'images/minus.png',
                                              height: 30,
                                            ),
                                          ))),
                                  Card(
                                      child: Container(
                                          height: 30,
                                          margin: EdgeInsets.all(10),
                                          child: Center(
                                            child: Text(
                                              ticket.toString(),
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 24),
                                            ),
                                          ))),
                                  Card(
                                      child: Container(
                                        margin: EdgeInsets.all(10),
                                        height: 30,
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              ticket = ticket + 1;
                                            });

                                            print(ticket.toString());
                                          },
                                          child: Image.asset(
                                            'images/plus.png',
                                            height: 30,
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      child: new Align(
                        alignment: Alignment.bottomCenter,
                        child: RaisedButton(
                          child: Container(
                            child: Center(
                              child: Text(
                                'Book Ticket',
                                style: TextStyle(fontSize: 20, color: Colors.white),
                              ),
                            ),
                            width: double.infinity,
                            height: 50,
                          ),
                          color: Colors.green,
                          onPressed: () {
                            Scaffold.of(context).showSnackBar(
                              new SnackBar(
                                content: Text('Ticket booked successfully'),
                                duration: Duration(milliseconds: 1000),
                              ),
                            );
                            Future.delayed(Duration(milliseconds: 1000), (){
                              Navigator.pop(context);


                            });

                          },
                        ),
                      ))
                ],
              ),
            ),
          );
        },

      ),
    );
  }
}
