import 'package:flutter/material.dart';
import 'package:iron_yard_app/pages/loginPage.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboard(),
    );
  }
}

class Onboard extends StatefulWidget {
  @override
  _OnboardState createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int currentPage = 0;
  PageController _pageController = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/images/bg.png'),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 500.0,
                child: PageView(
                  controller: _pageController,
                  children: [
                    onBoardPage('onBoard1', 'Choose Clothes'),
                    onBoardPage('onBoard2', 'Schedule Pickup'),
                    onBoardPage('onBoard3', 'Get Best Iron Service'),
                    onBoardPage('onBoard2', 'Get On Time Delivery'),
                    onBoardPage('onBoard4', 'Pay Later'),
                  ],
                  onPageChanged: (value) {
                    setCurrentPage(value);
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                  (index) => getIndicator(index),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: InkWell(
              onTap: changePage,
              child: Container(
                height: 70.0,
                width: 70.0,
                margin: EdgeInsets.only(bottom: 30.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [
                    Colors.orange,
                    Colors.orange[200],
                  ], stops: [
                    0,
                    1
                  ], begin: Alignment.topCenter),
                ),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 40.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void changePage() {
    if (currentPage == 4) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
    } else {
      _pageController.animateToPage(currentPage + 1,
          duration: Duration(microseconds: 200), curve: Curves.linear);
    }
  }

  setCurrentPage(int value) {
    setState(
      () {
        currentPage = value;
      },
    );
  }

  AnimatedContainer getIndicator(int pageNo) {
    return AnimatedContainer(
      duration: Duration(microseconds: 100),
      height: 10.0,
      width: (currentPage == pageNo) ? 20.0 : 10.0,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(5.0),
        ),
        color: (currentPage == pageNo) ? Colors.orange : Colors.grey,
      ),
    );
  }

  Column onBoardPage(String img, String title) {
    String text = loremIpsum(words: 60);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 200.0,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(50.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('asset/images/$img.png'),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 30.0,
              fontFamily: 'robo',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 40.0,
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
