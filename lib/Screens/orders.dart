import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({Key ? key}) : super(key: key);

  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 30,
            backgroundColor: Colors.white,
            elevation: 0.7,
            bottom: const TabBar(
             indicatorWeight: 4,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Color(0xfff2ba2e),
              labelColor:Color(0xfff2ba2e) ,
              tabs:<Widget> [
                Text("Past Orders" , style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                ),
                ),
                Text("Upcoming" , style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                ),
                )
              ],
            ),
          ),
          body: TabBarView(
              children: [
                Center(child: Text("You don't have any past orders !" , style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  fontSize: 17
                ),
                )
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        image: DecorationImage(
                          image: AssetImage("images/delguy.jpg")
                        )
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 10)),
                    Center(child: Text("No Upcoming orders !" , style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 17
                    ),
                    )
                    ),
                  ],
                )
              ]
          ),
        ));
  }
}
