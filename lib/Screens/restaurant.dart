import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:totterstask/Screens/Home.dart';

class Restaurant extends StatefulWidget {
  final String RestName;
  final String img;
  final double rate;
  final int timer;
  const Restaurant({
    Key? key,
    required this.RestName,
    required this.img,
    required this.rate,
    required this.timer,
  }) : super(key: key);

  @override
  _RestaurantState createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                   // margin: EdgeInsets.all(10),
                    height: 300,
                    width: 500,
                    decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage(widget.img),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  Positioned(
                    bottom: -15,
                    right: 20,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 2 , top: 2),
                      height: 50,
                      width: 65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              spreadRadius: 2,
                            )
                          ]
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("${widget.timer}" ,
                              style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
                            Text("min")
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),

                   Padding(
                     padding: const EdgeInsets.only(top: 10.0 ),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [

                             Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 Text(widget.RestName , style: TextStyle(
                                   fontSize: 20,
                                   fontWeight: FontWeight.bold
                                 ),),
                               ],
                             ),

                         Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, \nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                           ],
                         )
                       ],
                     ),
                   ),

              Padding(padding: EdgeInsets.only(bottom: 12)),
              Row(
                children: [
                  Container(
                    height: 25,
                    width: 115,
                    margin: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color:Color(0xfff2ba2e).withOpacity(0.2),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.assignment_return_outlined,
                            size: 17, color:Color(0xfff2ba2e)),
                        Padding(padding: EdgeInsets.only(left: 5)),
                        Text("10% cashback" , style: TextStyle(
                            color:Color(0xfff2ba2e)
                        ),),


                      ],
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 4)),
                  Container(
                    height: 25,
                    width: 85,
                    margin: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color:Colors.grey.withOpacity(0.2),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.my_library_add_outlined ,
                          size: 17, color:Colors.grey ,),
                        Padding(padding: EdgeInsets.only(left: 5)),
                        Text("اكسب نقاط" , style: TextStyle(
                          color: Colors.grey
                        ),),


                      ],
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("${widget.rate}" , style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ),),

                      Padding(padding: EdgeInsets.only(left: 6)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                         Row(
                           children: [
                             star(),
                             star(),
                             star(),
                             star(),
                             star(),
                           ],
                         ),
                          Text("Based on 1200 ratings", style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey
                          ),),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios_rounded , size: 23, color:Color(0xfff2ba2e) ,)
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 3),
                height: 2,
                width: double.infinity,
                color: Colors.grey.withOpacity(0.2),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Maryam"),
                      star(),
                      star(),
                      star(),
                      star(),
                      star(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("جدا لذييييذ" ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget star()
  {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Icon(Icons.star , size: 20, color:Color(0xfff2ba2e) ,),
    );
  }
}
