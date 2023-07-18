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
            Icon(Icons.favorite_outline, color: Colors.black),
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
                Text('more. Log in now', style: kInsiderBodyStyle),
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
