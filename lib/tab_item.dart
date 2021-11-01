import 'package:flutter/material.dart';

enum TabItem { shop, adopt, home,feed,setting }

const Map<TabItem, String> tabName = {
  TabItem.shop: 'Shop',
  TabItem.adopt: 'Adopt',
  TabItem.home: 'Home',
  TabItem.feed: 'Feed',
  TabItem.setting: 'Setting'

};

const Map<TabItem, MaterialColor> activeTabColor = {
  TabItem.shop: Colors.amber,
  TabItem.adopt: Colors.amber,
  TabItem.home: Colors.amber,
  TabItem.feed: Colors.amber,
  TabItem.setting: Colors.amber
};