import 'package:flutter/material.dart';
import 'package:iron_yard_app/widget/bottomBar.dart';
import 'package:iron_yard_app/widget/dateWidget.dart';
import 'package:iron_yard_app/widget/gradient.dart';
import 'package:iron_yard_app/widget/timeWidget.dart';

class PickUpTimePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PickUpTime(),
    );
  }
}

class PickUpTime extends StatefulWidget {
  @override
  _PickUpTimeState createState() => _PickUpTimeState();
}

class _PickUpTimeState extends State<PickUpTime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: Text(
          'Select Date & Time',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'sfpro',
            fontWeight: FontWeight.w700,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.black45,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(
          20.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Pick Up Date',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    dateWidget('Wed', '07 Aug', true),
                    dateWidget('Thu', '08 Aug', false),
                    dateWidget('Fri', '09 Aug', false),
                    dateWidget('Sat', '10 Aug', false),
                    dateWidget('Sun', '11 Aug', false),
                    dateWidget('Mon', '12 Aug', false),
                    dateWidget('Teth', '13 Aug', false),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                height: 1.0,
                color: Colors.grey,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'Pick Up Time',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    timeWidget('10:00 AM to 12:00 PM', false),
                    timeWidget('12:00 PM to 02:00 PM', true),
                    timeWidget('02:00 PM to 04:00 PM', false),
                    timeWidget('04:00 PM to 06:00 PM', false),
                    timeWidget('06:00 PM to 08:00 PM', false),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Delivery Date',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    dateWidget('Wed', '07 Aug', true),
                    dateWidget('Thu', '08 Aug', false),
                    dateWidget('Fri', '09 Aug', false),
                    dateWidget('Sat', '10 Aug', false),
                    dateWidget('Sun', '11 Aug', false),
                    dateWidget('Mon', '12 Aug', false),
                    dateWidget('Teth', '13 Aug', false),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                height: 1.0,
                color: Colors.grey,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'Delivery Time',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    timeWidget('10:00 AM to 12:00 PM', false),
                    timeWidget('12:00 PM to 02:00 PM', true),
                    timeWidget('02:00 PM to 04:00 PM', false),
                    timeWidget('04:00 PM to 06:00 PM', false),
                    timeWidget('06:00 PM to 08:00 PM', false),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Your Bascket',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '7 Items',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '\$ 200',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PickUpTimePage(),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.all(15.0),
                  height: 70.0,
                  decoration: BoxDecoration(
                    gradient: gradientStyle(),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Text(
                      'SELECT DATE & TIME',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
