import 'package:flutter/material.dart';
import 'package:flutter_lessons/malumotlar/malumotlar.dart';

class GridViewBuilderWidget extends StatelessWidget {
  const GridViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final name = colors;
    return Scaffold(
      appBar: AppBar(title: const Text('GridView widget')),
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          crossAxisCount: 3,
        ),
        itemCount: name.length,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            color: name[index]['color'],
            child: Text(name[index]['name']),
          );
        },
      ),
    );
  }
}
