import 'dart:typed_data';

import 'package:contact_friends/core/init/network/network_manager.dart';
import 'package:contact_friends/view/login/view/login_view.dart';
import 'package:contact_friends/view/main_view/main_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MainView(),
    );
  }


}
