// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:contact_friends/core/init/network/network_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:contact_friends/main.dart';

void main() {
  test('Log in', () async {
    var request = await NetworkManager.instance.dioPost(path: 'Login/SignIn', data: {'Email':'eren@test.com','Password':'123456'});
  });
  test('todos', () async {
    var request = await NetworkManager.instance.dioGet("posts");
  });
}
