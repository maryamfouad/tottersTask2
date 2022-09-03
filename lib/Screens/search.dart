import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key ? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Search for stores or items",
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                prefixIcon: Icon(Icons.search , size: 25, color: Colors.black,),
                filled: true,
                fillColor: Colors.white,
                border: InputBorder.none
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              color: Colors.green,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      height: 90,
                      width: 90,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          image: AssetImage("images/delguy.jpg"),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Order Anything !" , style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),),
                      Padding(padding: EdgeInsets.only(bottom: 5) ),
                      Text("New on totters! if it fits on a \n motorbike we can deliver it.", style: TextStyle(
                        color: Colors.white,
                      ),),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios , color: Colors.white,)
                ],
              ),
            ),

                    cards("images/discount.jpg", "Happy Hour",
                        "is simply dummy text of the \n printing and typesetting industry. ", 28),

                    cards("images/stores.jpg", "Happy Hour",
                        "is simply dummy text of the \n printing and typesetting industry. ", 40),

                    cards("images/fresh.jpg", "Happy Hour",
                        "is simply dummy text of the \n printing and typesetting industry. ", 30),

                    cards("images/grocery.jpg", "Happy Hour",
                        "is simply dummy text of the \n printing and typesetting industry. ", 10),

                    cards("images/wallet.jpg", "Happy Hour",
                        "is simply dummy text of the \n printing and typesetting industry. ", 5),


          ],
        ),
      ) ,
    );
  }
  Widget cards(String img , String title , String caption , int num)
  {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 130,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height:MediaQuery.of(context).size.height ,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('$img'),
                  fit: BoxFit.cover
                )
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 30)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("$title" , style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 6)),
                Text("$caption", style: TextStyle(
                  color: Colors.grey
                ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 6)),
                Text("${num}"+ " Stores" , style: TextStyle(
                  color: Colors.green
                ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
