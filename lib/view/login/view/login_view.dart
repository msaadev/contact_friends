import 'package:contact_friends/core/init/network/network_manager.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
@override
Widget build(BuildContext context) {
 return Scaffold(
   appBar: AppBar(),
   floatingActionButton: float,
body: Center(
child: Text('LoginView')
),
);
}
FloatingActionButton get float {
    return FloatingActionButton(
      heroTag: 'asdasdzxcxvsad',
      onPressed: () {
        NetworkManager.instance.dioGet('posts');
      },
      child: Icon(Icons.add),
    );
  }
}