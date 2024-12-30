import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final listKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Page'),
      ),
      body: OrientationBuilder(
        builder: (_, orientation) {
          final listView = ListView.builder(
            key: listKey,
            itemCount: 1000,
            itemBuilder: (_, index) {
              return ListTile(
                title: Text('$index'),
              );
            },
          );

          if (orientation == Orientation.portrait) {
            return Column(
              children: [
                const Text('Portrait'),
                Expanded(
                  child: listView,
                )
              ],
            );
          }

          return Row(
            children: [
              Expanded(
                child: const Text('Landscape'),
              ),
              Expanded(
                child: listView,
              ),
            ],
          );
        },
      ),
    );
  }
}
