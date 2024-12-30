import 'package:flutter/material.dart';

class NumbersPage extends StatefulWidget {
  const NumbersPage({super.key});

  @override
  State<NumbersPage> createState() => _NumbersPageState();
}

class _NumbersPageState extends State<NumbersPage> {
  final List<int> _numbers = [];

  @override
  void initState() {
    super.initState();

    _numbers.addAll(List.generate(100, (index) => index));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers Page'),
      ),
      body: ReorderableListView.builder(
        onReorder: (oldIndex, newIndex) {
          debugPrint('Old index: $oldIndex, New index: $newIndex');
          if (oldIndex < newIndex) {
            newIndex -= 1; // newIndex = newIndex - 1
          }
          final numberRemoved = _numbers.removeAt(oldIndex);
          _numbers.insert(newIndex, numberRemoved);
        },
        itemCount: _numbers.length,
        itemBuilder: (_, index) {
          final value = _numbers[index];

          return ListTile(
            key: ValueKey(value),
            title: Text(
              '$value',
              style: const TextStyle(fontSize: 30),
            ),
          );
        },
      ),
    );
  }
}
