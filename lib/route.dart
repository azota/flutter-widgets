import 'package:FlutterTutorial/basic/ImageExample.dart';
import 'package:flutter/material.dart';
import 'basic/TextExample.dart';
import 'basic/ButtonExample.dart';
import 'basic/ImageExample.dart';
import 'basic/FormFieldExample.dart';
import 'basic/TextFieldExample.dart';
import 'basic/LayoutExample.dart';
import 'basic/ListViewExample.dart';
import 'basic/TabExample.dart';
import 'basic/TabExample2.dart';
import 'basic/DrawerExample.dart';
import 'basic/RadioDropdownExample.dart';
import 'basic/CheckIndicatorExample.dart';
import 'basic/DialogSnackBarExample.dart';
import 'basic/CupertinoExample.dart';

import 'main.dart';

// 화면이동
// runApp에 넘겨지는 위젯의 routes: 파라메터에 넘긴다.
final routes = {
  '/': (BuildContext context) => MainPage(),
  '/TextExample': (BuildContext context) => TextExample(),
  '/ButtonExample': (BuildContext context) => ButtonExample(),
  '/ImageExample': (BuildContext context) => ImageExample(),
  '/TextFieldExample': (BuildContext context) => TextFieldExample(),
  '/FormFieldExample': (BuildContext context) => FormFieldExample(),
  '/LayoutExample': (BuildContext context) => LayoutExample(),
  '/ListViewExample': (BuildContext context) => ListViewExample(),
  '/TabViewExample': (BuildContext context) => TabExample(),
  '/TabViewExample2': (BuildContext context) => TabExample2(),
  '/DrawerExample': (BuildContext context) => DrawerExample(),
  '/RadioDropDownExample': (BuildContext context) => RadioDropDownExample(),
  '/CheckIndicatorExample': (BuildContext context) => CheckIndicatorExample(),
  '/DialogSnackBarExample': (BuildContext context) => DialogSnackBarExample(),
  '/CupertinoExample': (BuildContext context) => CupertinoExample()
};
