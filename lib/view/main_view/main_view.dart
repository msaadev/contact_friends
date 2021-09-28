import 'package:contact_friends/core/init/network/network_manager.dart';
import 'package:contact_friends/view/login/view/login_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
@override
Widget build(BuildContext context) {
 return Scaffold(
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [float, float2, float3(context)],
        ),
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      );
}
  FloatingActionButton get float {
    return FloatingActionButton(
      heroTag: 'asdsad',
      onPressed: () {
        NetworkManager.instance.dioGet('posts');
      },
      child: Icon(Icons.add),
    );
  }

  FloatingActionButton get float2 {
    return FloatingActionButton(
      heroTag: 'asdssdfsdad',
      onPressed: () {
        NetworkManager.instance.dioGet('comments');
      },
      child: Icon(Icons.remove),
    );
  }

  FloatingActionButton float3(BuildContext context) {
    return FloatingActionButton(
      heroTag: 'asdsasdasdad',
      onPressed: () {
        Navigator.push(
            context, CupertinoPageRoute(builder: (_) => LoginView()));
      },
      child: Icon(Icons.share),
    );
  }
}