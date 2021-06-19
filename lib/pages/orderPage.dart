import 'package:flutter/material.dart';
import 'package:iron_yard_app/pages/pickUpTime.dart';
import 'package:iron_yard_app/widget/bottomBar.dart';
import 'package:iron_yard_app/widget/category.dart';
import 'package:iron_yard_app/widget/gradient.dart';

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Orderpage(),
    );
  }
}

class Orderpage extends StatefulWidget {
  @override
  _OrderpageState createState() => _OrderpageState();
}

class _OrderpageState extends State<Orderpage> {
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
          'Select Clothes',
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
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                categoryWidget('man', 'Men', true),
                categoryWidget('girl', 'Women', false),
                categoryWidget('child', 'Kids', false),
                categoryWidget('oldman', 'Others', false),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                //scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    clothWidget('cloth1', 'Trouser', '15'),
                    clothWidget('cloth2', 'Jeans', '10'),
                    clothWidget('cloth3', 'Jackets', '20'),
                    clothWidget('cloth4', 'Shirt', '19'),
                    clothWidget('cloth5', 'T-shirt', '32'),
                    clothWidget('cloth6', 'Blazer', '25'),
                    clothWidget('cloth7', 'Coats', '22'),
                    clothWidget('cloth8', 'Kurta', '34'),
                    clothWidget('cloth9', 'Swearer', '53'),
                  ],
                ),
              ),
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
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }

  Container clothWidget(String img, String name, String price) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/images/$img.png'),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      price,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'Add Note',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
                Text(
                  '\$45',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        gradient: gradientStyle(),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.add),
                    ),
                    Container(
                      height: 40.0,
                      width: 40.0,
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        gradient: gradientStyle(),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '-',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 1.0,
                width: MediaQuery.of(context).size.width * 0.70,
                color: Colors.grey,
                margin: EdgeInsets.only(
                  bottom: 15.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
