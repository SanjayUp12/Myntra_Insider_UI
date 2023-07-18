import 'package:flutter/material.dart';
import 'package:myntra_task2/screens/myntra_drawer.dart';
import 'package:myntra_task2/screens/constants.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Row(
          children: [
            ImageIcon(
              AssetImage('images/logo.webp'),
              size: 20,
              color: Colors.red,
            ),
            SizedBox(
              width: 200,
            ),
            Icon(
              Icons.search,
              color: Colors.black,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(Icons.favorite_outline, color: Colors.black),
            SizedBox(
              width: 5,
            ),
            Icon(Icons.shopping_bag_outlined, color: Colors.black),
          ],
        ),
      ),
      drawer: MyntraDrawer(),
      body: ListView(
        children: [
          Container(
            color: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage('images/myntraInsider.webp'),
                ),
                Text(
                  'Become An Insider',
                  style: kInsiderStyle,
                  textAlign: TextAlign.left,
                ),
                Text(
                  'Join the insider program and earn',
                  style: kInsiderBodyStyle,
                ),
                Text('Supercoins with every purchase and much',
                    style: kInsiderBodyStyle),
                Text('more. Log in now!', style: kInsiderBodyStyle),
                SizedBox(height: 20),
                Text(
                  'New Goal Criteria',
                  style: TextStyle(color: Colors.white, fontSize: 19),
                ),
                SizedBox(height: 20),
                Container(
                  color: Colors.blueGrey.shade900,
                  width: MediaQuery.of(context).size.width * 100.00,
                  height: MediaQuery.of(context).size.width * 0.25,
                  child: Column(
                    children: [
                      NewGoalCriteriaWidget(
                        text1: '₹0 You\'ve spent',
                        text2: '₹7000 Goal',
                      ),
                      Divider(
                        height: 2,
                        thickness: 1,
                        color: Colors.white,
                      ),
                      NewGoalCriteriaWidget(
                          text1: '0/5 Your orders', text2: '5 Goal'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.black,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Log in'),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red)),
                ),
              ),
              Text(
                'By enrolling you agree to ',
                style: TextStyle(color: Colors.grey),
              ),
              Text('Insider Terms and Conditions',
                  style: TextStyle(color: Colors.red))
            ],
          ),
        ),
      ),
    );
  }
}

class NewGoalCriteriaWidget extends StatelessWidget {
  NewGoalCriteriaWidget({this.text1, this.text2});
  String? text1;
  String? text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10),
        Image(
          image: AssetImage(
            'images/crown.png',
          ),
          height: 40,
          width: 40,
        ),
        SizedBox(width: 60),
        Text(
          '$text1',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        SizedBox(width: 60),
        Text(
          text2.toString(),
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ],
    );
  }
}
