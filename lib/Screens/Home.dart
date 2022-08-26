import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:totterstask/Screens/restaurant.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key ? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int SelectedIndex=0;

  String nameR="CHILLI HOUSE" ;
  String url="images/chilli.jpg";
  int timer =30;
  double rate=4.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: SelectedIndex,
        selectedItemColor: Color(0xfff2ba2e),
        selectedIconTheme: IconThemeData(
          size: 30,
          color: Color(0xfff2ba2e),
          opacity: 1,
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.grey,
          fontSize: 10
        ),
        showUnselectedLabels:true ,
        selectedLabelStyle: TextStyle
          (
            color:Color(0xfff2ba2e),
            fontWeight: FontWeight.bold
        ),
        unselectedIconTheme: IconThemeData(
            size: 20,
            color: Colors.grey,
            opacity: 0.9
        ),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled ,),
              label: "رئيسية"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search ,),
              label: "بحث"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag ,),
              label: "طلبات"
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.delivery_dining ,),
              label: "مندوب"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person ,),
              label: "حساب"
          ),
        ],
        onTap: (index){
          setState(() {
            SelectedIndex=index;
          });
        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.filter_alt ,
                size: 28,
              color: Color(0xfff2ba2e).withOpacity(0.6),),
              Icon(Icons.notifications_none_outlined,
                size: 28,
                  color: Color(0xfff2ba2e).withOpacity(0.6),),
            ],
          ),
        ),
        leadingWidth: 80,
        elevation: 0.5,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [

                Icon(Icons.keyboard_arrow_down_outlined ,
                  size: 30,
                  color: Colors.black,),

                Text("توصيل الى \n المنزل", style: TextStyle(
                  color: Colors.black,
                 // fontWeight: FontWeight.w700
                ),),

              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height-119,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                 Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text("نقطة" , style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  ),),
                                  Icon(Icons.arrow_back_rounded ,
                                    color: Colors.black,
                                    size: 21,)
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(right: 6)),
                              Text("3.8k" , style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 33,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("الفئة الخضراء" , style: TextStyle(
                                  color: Color(0xfff2ba2e),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold
                              ),),
                              Padding(padding: EdgeInsets.only(bottom: 2)),
                              Row(
                                children: [
                                  row(),
                                  row(),
                                  row(),
                                  row(),
                                  row(),
                                  row(),
                                  row(),
                                  row(),
                                  row(),
                                  row(),
                                  row(),
                                  row(),
                                  row(),
                                  row(),

                                ],
                              ),
                              Padding(padding: EdgeInsets.only(bottom: 6)),
                              Text("تبقى 9 طلبات اضافية لغاية اغسطس 31 للترقية الى \n الفئة الذهبية"),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 10)),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 300,
                      width: 500,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage("images/discount.jpg"),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 10)),
                    Column(

                      children: [
                        Row(
                          mainAxisAlignment:  MainAxisAlignment.center,
                          children: [
                            cards("images/grocery.jpg", "البقالة"),
                            cards("images/fresh.jpg", "توترز فريش"),
                            cards("images/burger.png", "المطاعم"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment:  MainAxisAlignment.center,
                          children: [
                            cards("images/wallet.jpg", "اضف رصيد"),
                            cards("images/delguy.jpg", "المندوب"),
                            cards("images/stores.jpg", "المتاجر")
                          ],
                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 8)),
                    Container(
                      height: 11,
                      width: double.infinity,
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.arrow_back_ios_outlined ,
                                size: 28,
                                color: Color(0xfff2ba2e).withOpacity(1),),
                              Text("خصومات اسبوعية" , style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 2)),
                          Text("احصل على خصم 50% على مطاعم هذا الاسبوع" , style: TextStyle(
                            color: Colors.grey,
                          ),),
                          Padding(padding: EdgeInsets.only(bottom: 4)),
                        ],
                      ),
                    ),
                    Container(
                      height:MediaQuery.of(context).size.height,
                      child: ListView (
                        scrollDirection: Axis.horizontal,
                        reverse: true,
                        children: [

                          restaurants("images/burgarat.jpg", 30, "Burgerat", 4.5),
                          restaurants("images/hizen.jpg", 35, "Hizen", 2),
                          restaurants("images/khan.jpg", 40, "Khan Mandy", 4),
                          GestureDetector(
                              child: restaurants("images/chilli.jpg", 20, "Chilli House", 4.5),
                            onTap: () {
                                Navigator.of(context).push(MaterialPageRoute
                                  (builder: (context) =>
                                    Restaurant(RestName: nameR, img: url, timer: timer, rate: rate,) ));
                            },
                          ),


                        ],
                      ),
                    )

                  ],
                ),
              ],
            ),
          )
        ],
      )
    );
  }
  Widget row ()
  {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0),
      child: Container(
        height: 3,
        width: 15,
        decoration: BoxDecoration(
            color: Color(0xfff2ba2e).withOpacity(0.4),
          borderRadius: BorderRadius.circular(5)
        ),

      ),
    );
  }

  Widget cards( String url , String label)
  {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 3,
                  spreadRadius: 3,
                )
              ],
              image: DecorationImage(
                image: AssetImage("$url"),
                fit: BoxFit.cover
              )
            ),
          ),
        ),
        Text("$label" , style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 17
        ),)
      ],
    );
  }
  Widget restaurants (String img ,
      int num ,
      String name ,
      double evaluation,
      )
  {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,

        children: [
          Container(
              height: 200,
              width: 200,

              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  //Padding(padding: EdgeInsets.all(10)),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        image: DecorationImage(
                            image: AssetImage("$img"),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  Positioned(
                    child: Icon(Icons.favorite_border_rounded , size: 30, color: Colors.white,),
                    top: 10,
                    left: 10,
                  ),
                  Positioned(
                    bottom: -25,
                    left: 10,
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
                            Text("$num" ,
                              style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
                            Text("min")
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
          ),
          Padding(padding: EdgeInsets.all(10)),
          Text("$name", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          Padding(padding: EdgeInsets.all(5)),
          Text("وجبة_\$\$" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
          Padding(padding: EdgeInsets.all(5)),
          Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: 90,
                    margin: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color:Color(0xfff2ba2e),
                    ),
                    child: Row(
                      children: [
                        Text("اكسب نقاط"),
                        Padding(padding: EdgeInsets.only(left: 5)),
                        Icon(Icons.my_library_add_outlined)
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 5 , vertical: 10)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 30,
                        width: 64,
                        margin: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("$evaluation"),
                            Padding(padding: EdgeInsets.only(left: 5)),
                            Icon(Icons.star, color: Color(0xfff2ba2e),)
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),

            ],
          ),


        ],
      ),
    );
  }
}
