import 'package:flutter/material.dart';
import 'package:myntra_task2/screens/constants.dart';

class MyntraDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ExpandableDrawerItem(
            text: 'Men',
          ),
          ExpandableDrawerItem(
            text: 'Women',
          ),
          ExpandableDrawerItem(
            text: 'Kids',
          ),
          ExpandableDrawerItem(
            text: 'Home and Living',
          ),
          ExpandableDrawerItem(
            text: 'Beauty',
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          DrawerListItem(text: 'Sign In'),
          DrawerListItem(text: 'Sign Up'),
          DrawerListItem(text: 'Gift Cards'),
          DrawerListItem(text: 'Shopping Group'),
        ],
      ),
    );
  }
}

class ExpandableDrawerItem extends StatelessWidget {
  ExpandableDrawerItem({this.text});
  String? text;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text('$text', style: kExpansionTileStyle),
      children: [
        ListTile(
          leading: Text('Topwear'),
        )
      ],
    );
  }
}

class DrawerListItem extends StatelessWidget {
  DrawerListItem({this.text});
  String? text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '$text',
        style: kTileStyle,
      ),
    );
  }
}
