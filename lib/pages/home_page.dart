import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _listItem =[
    'assets/images/airpods3.png',
    'assets/images/iphone13.png',
    'assets/images/iwatch.png',
    'assets/images/macbookm1.png',
    'assets/images/airpods3.png',
    'assets/images/iphone13.png',
    'assets/images/iwatch.png',
    'assets/images/macbookm1.png',

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Apple Products'),
        backgroundColor: Colors.deepOrange,
        actions: [
          Padding(
            child: Container(
              height: 36,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text('7'),
              ),
            ),
            padding: EdgeInsets.all(10),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 10,right: 10),
        color: Colors.deepOrange,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              height: 240,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage('assets/images/allproducts.jpeg'),
                  fit: BoxFit.cover,
                ),
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.6),
                    Colors.black.withOpacity(0.3),
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('LifeStyle sale',style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  ),),
                  SizedBox(height: 20,),
                  Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child:Text('Shop Now',style: TextStyle(color: Colors.grey[900],fontSize: 20),),
                    ),
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child:GridView.count(
              crossAxisCount: 1,
                children: _listItem.map((item) => cellOfList(item)).toList(),
            ),
            ),
          ],
        ),
      ),
    );
  }
  Widget cellOfList(String item){
    return  Card(
      color: Colors.transparent,
      elevation:  0,
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          crossAxisAlignment:CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.favorite,color: Colors.white,size: 35,)
          ],
        ),
      ),
    );
  }
}
