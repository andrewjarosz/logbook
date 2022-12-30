import 'package:flutter/material.dart';

class SliverPage extends StatelessWidget {
  const SliverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        const SliverAppBar(
          floating: false,
          expandedHeight: 120.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Sliver Test'),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.blue[100 * (index %8)],
                  child: Text('Test $index'),
                );
              },
          ),
        ),
      ]
    );
  }
}