import 'package:assignment/fruititem.dart';
import 'package:assignment/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class fruits extends StatefulWidget {
  const fruits({super.key});

  @override
  State<fruits> createState() => _fruitsState();
}

class _fruitsState extends State<fruits> {
  int myIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fruits and vegetables'),
        centerTitle: true,
        actions: [
          Icon(Icons.add_shopping_cart_sharp)
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
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: 'Home',
        backgroundColor: Colors.green),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),
        label: 'Cart',
        backgroundColor: Colors.green),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),
        label: 'Favorite',
        backgroundColor: Colors.green),
        BottomNavigationBarItem(icon: Icon(Icons.person),
        label: 'Me',
        backgroundColor: Colors.green),
      ]),
        
        
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 12,
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.infinity,
                height: MediaQuery.of(context).size.height/15,
                child: Row(
                  children: [
                  Container(
                    child: Text('7 products', style: TextStyle(fontSize: 25),),
                    
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.only(right: 15),
                    child: Icon(Icons.menu),
                  ),
                ],),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: fruitList(),
      
              // height: MediaQuery.of(context).size.height/4,
              // color:Colors.grey,
              // child: GridView.count(
              // crossAxisCount: 2,
              // children: [
              //   Container(
              //     color: Colors.yellow,
              //   ),
              //   Container(
              //     color:Colors.blue
              //   )
              // ],
              // ),
            )
          ]
          ),
      )
      
    );
  }
}