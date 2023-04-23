// import 'package:courseapplandingpage/home.dart';
// import 'package:courseapplandingpage/onboard/onboard_model.dart';
import 'package:assignment/onboard/onboard_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constant.dart';
import '../home.dart';

class OnBoard extends StatefulWidget {
  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  int currentIndex = 0;
  late PageController _pageController;
  List<OnboardModel> screens = <OnboardModel>[
    OnboardModel(
      img: 'assets/images/onboard.png',
      imgl:'assets/images/ubazarLogo.png',
      text: "Welcome to",
      desc:
          "Application",
      bg: Colors.white,
      button: Color(0xFF4756DF)
    ),
    OnboardModel(
      img: 'assets/images/onboard1.jpg',
      imgl: 'assets/images/whiteImg.png',
      text: "Get\nEvery Service",
      desc:
          "",
      bg: Colors.white,
      button: Color(0xFF4756DF)
    ),
    OnboardModel(
      img: 'assets/images/onboard2.png',
      imgl: 'assets/images/whiteImg.png',
      text: "Quality\nDoor to Door",
      desc:
          "",
      bg: Colors.white,
      button: Color(0xFF4756DF),
    ),
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  _storeOnboardInfo() async {
    print("Shared pref called");
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('onBoard', isViewed);
    print(prefs.getInt('onBoard'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: AppBar(
        backgroundColor: kwhite,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: PageView.builder(
            itemCount: screens.length,
            controller: _pageController,
            physics: NeverScrollableScrollPhysics(),
            onPageChanged: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (_, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    screens[index].text,
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(screens[index].imgl),
                      SizedBox(width: 5,),
                      Text(
                        screens[index].desc,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  Image.asset(screens[index].img),

                  Container(
                    height: 10.0,
                    child: ListView.builder(
                      itemCount: screens.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 3.0),
                                width: currentIndex == index ? 25 : 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  color: currentIndex == index
                                      ? kgreen
                                      : kgreen,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ]);
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
            onPressed: () {
              _storeOnboardInfo();
              Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => Home()));
            },
            child: Text(
              "Skip",
              style: TextStyle(
                color: kgreen,
              ),
            ),
          ),

          InkWell(
                    onTap: () async {
                      print(index);
                      if (index == screens.length - 1) {
                        await _storeOnboardInfo();
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      }

                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.bounceIn,
                      );
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
                      decoration: BoxDecoration(
                          color: kgreen,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Row(mainAxisSize: MainAxisSize.min, children: [
                        Text(
                          "Next",
                          style: TextStyle(
                              fontSize: 16.0,
                              color: kwhite),
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Icon(
                          Icons.arrow_forward_sharp,
                          color: kwhite,
                        )
                      ]),
                    ),
                  )
                    ],
                  ),
                  
                  
                  
                  // InkWell(
                  //   onTap: () async {
                  //     print(index);
                  //     if (index == screens.length - 1) {
                  //       await _storeOnboardInfo();
                  //       Navigator.pushReplacement(context,
                  //           MaterialPageRoute(builder: (context) => Home()));
                  //     }

                  //     _pageController.nextPage(
                  //       duration: Duration(milliseconds: 300),
                  //       curve: Curves.bounceIn,
                  //     );
                  //   },
                  //   child: Container(
                  //     padding:
                  //         EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
                  //     decoration: BoxDecoration(
                  //         color: index % 2 == 0 ? kgreen : kgreen,
                  //         borderRadius: BorderRadius.circular(15.0)),
                  //     child: Row(mainAxisSize: MainAxisSize.min, children: [
                  //       Text(
                  //         "Next",
                  //         style: TextStyle(
                  //             fontSize: 16.0,
                  //             color: index % 2 == 0 ? kwhite : kwhite),
                  //       ),
                  //       SizedBox(
                  //         width: 15.0,
                  //       ),
                  //       Icon(
                  //         Icons.arrow_forward_sharp,
                  //         color: index % 2 == 0 ? kwhite : kwhite,
                  //       )
                  //     ]),
                  //   ),
                  // )
                ],
              );
            }),
      ),
    );
  }
}
