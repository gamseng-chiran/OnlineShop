import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class fruitList extends StatefulWidget {
  const fruitList({super.key});

  @override
  State<fruitList> createState() => _fruitListState();
}

class _fruitListState extends State<fruitList> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Fresh Banana",
      "price": "25 tk",
      "images":"assets/images/banana.jpg"
          
    },
    {
      "title": "Fresh Potato",
      "price": "45 tk",
      "images":"assets/images/potato.jpg"
          
    },
    {
      "title": "Fresh Brinjal",
      "price": "55 tk",
      "images":"assets/images/brinjal.jpg"
          
    },
    {
      "title": "Fresh Watermelon",
      "price": "40 tk/kg",
      "images":"assets/images/watermelon.jpg"
          
    },
    {
      "title": "Fresh Grapes",
      "price": "200 tk/kg",
      "images":"assets/images/grapes.jpg"
        
    },
    {
      "title": "Fresh Apple",
      "price": "100 tk/kg",
      "images":"assets/images/apple.jpg"
          
    },
    {
      "title": "Ripe Mango",
      "price": "55 tk/kg",
      "images":"assets/images/mango.jpg"
         
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        mainAxisExtent: 310,
      ),
      itemCount: gridMap.length,
      itemBuilder: (_, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              16.0,
            ),
            color: Colors.green,
          ),
          child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                      ),
                      child: Image.asset(
                        "${gridMap.elementAt(index)['images']}",
                        height: 170,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${gridMap.elementAt(index)['title']}",style: Theme.of(context).textTheme.subtitle1!.merge(
                              TextStyle(
                                fontWeight: FontWeight.w700,
                                    color: Colors.white,
                              )
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                      "${gridMap.elementAt(index)['price']}",
                      style: Theme.of(context).textTheme.subtitle2!.merge(
                            TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                            ),
                          ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(onPressed: () {},
                                icon: Icon(
                                  CupertinoIcons.heart,
                                ),),
                                IconButton(onPressed: () {},
                                icon: Icon(
                                  CupertinoIcons.cart,
                                ),)
                            ],
                          )
                        ],
                      ),
                    )
                    
                ]),
          
        );
        
      });
  }
}