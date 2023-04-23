import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'fruits.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int myIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('UBazar'),
        centerTitle: true,
        title: Container(
          height: 60,
          width: 50,
          child: Image.asset('assets/images/ubazarS.png'),
        ),
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
          myIndex=index;
          });
        },
        currentIndex: myIndex,
        items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.green
            ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
            label: 'Cart',
            backgroundColor: Colors.green
            ),
        BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
              backgroundColor: Colors.green
              ),
        BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Me',
                backgroundColor: Colors.green
                )
      ],
      ),
          
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/3,
              child: Center(
                child: ListView(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height/3,
                      width: double.infinity,
                      child: Carousel(
                        dotSize: 2.5,
                        images: [
                          Image.asset('assets/images/itemOne.png', fit: BoxFit.cover,),
                          Image.asset('assets/images/itemTwo.png', fit: BoxFit.cover,),
                          Image.asset('assets/images/itemThree.jpg', fit: BoxFit.cover,),
                          Image.asset('assets/images/itemFour.png', fit: BoxFit.cover,)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height/6,
              width: double.infinity,
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height/2,
                      width: MediaQuery.of(context).size.width/5,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height/8,
                            child: Card(
                              elevation: 8,
                              child: Image.asset('assets/images/home.png')),
                          ),

                          Text('Home')
                        ],
                      )
                      
                    ),
                    Container(height: MediaQuery.of(context).size.height/2,
                      width: MediaQuery.of(context).size.width/5,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height/8,
                            child: Card(
                              elevation: 8,
                              child: Image.asset('assets/images/fruit.png')),
                          ),

                          Text('Fruits')
                        ],
                      )
                    ),
                    Container(height: MediaQuery.of(context).size.height/6,
                      width: MediaQuery.of(context).size.width/5,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height/8,
                            child: Card(
                              elevation: 8,
                              child: Image.asset('assets/images/vegs.png')),
                          ),

                          Text('Vegtables')
                        ],
                      )
                    ),
                    Container(height: MediaQuery.of(context).size.height/6,
                      width: MediaQuery.of(context).size.width/5,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height/8,
                            child: Card(
                              elevation: 8,
                              child: Image.asset('assets/images/fish.png')),
                          ),

                          Text('Fish')
                        ],
                      )
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            
            ListTile(
              leading: Container(
                width: MediaQuery.of(context).size.width/5,
                child: Image.asset('assets/images/itemOne.png')),
              title: Text('Fruits and Vegetables'),
              subtitle: Text('Buy all kinds of fruit and vegetable from here.'),
              trailing: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> fruits()),
                  );
                },
                child: Icon(Icons.arrow_forward, color: Colors.green,)),
            ),
            SizedBox(
              height: 8,),
            ListTile(
              leading: Container(
                width: MediaQuery.of(context).size.width/5,
                child: Image.asset('assets/images/groceriesstaples.png')),
              title: Text('Grocery and Staples'),
              subtitle: Text('Buy all kinds of grocery and staples from here.'),
              trailing: InkWell(
                onTap: (){

                },
                child: Icon(Icons.arrow_forward, color: Colors.green)),
            ),
            SizedBox(
              height: 8,),
            ListTile(
              leading: Container(
                width: MediaQuery.of(context).size.width/5,
                child: Image.asset('assets/images/household.jpg')),
              title: Text('Household needs'),
              subtitle: Text('Buy all kinds of household from here.'),
              trailing: InkWell(
                onTap: (){

                },
                child: Icon(Icons.arrow_forward, color: Colors.green)),
            ),
            SizedBox(
              height: 8,),
            ListTile(
              leading: Container(
                width: MediaQuery.of(context).size.width/5,
                child: Image.asset('assets/images/cloths.jpg')),
              title: Text('Mens and Womens wear'),
              subtitle: Text('Buy all kinds of mens and womens wear from here.'),
              trailing: InkWell(
                onTap:(){

                } ,
                child: Icon(Icons.arrow_forward, color: Colors.green)),
            ),
            SizedBox(
              height: 8,),
            ListTile(
              leading: Container(
                width: MediaQuery.of(context).size.width/5,
                child: Image.asset('assets/images/foot.jpg', fit: BoxFit.cover,)),
              title: Text('Foot wear'),
              subtitle: Text('Buy all kinds of foot wear from here.'),
              trailing: InkWell(
                onTap: (){

                },
                child: Icon(Icons.arrow_forward)),
            ),
          ],
        ),
      ),
    );
  }
}