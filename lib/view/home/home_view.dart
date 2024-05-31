import 'package:flutter/material.dart';

import 'components/demo_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    appBar: AppBar(
      title: Text('Scroll'),
      
    ),
    body: CustomScrollView(
      slivers: [
        SliverList(delegate: SliverChildBuilderDelegate((context, index){

        },
        childCount: demo.length
         ))
      ],
    ),
    );
  }
}