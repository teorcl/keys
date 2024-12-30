import 'package:flutter/material.dart';
import 'package:keys/widgets/counter_button.dart';

class MovebleWidgetPage extends StatefulWidget {
  const MovebleWidgetPage({super.key});

  @override
  State<MovebleWidgetPage> createState() => _MovebleWidgetPageState();
}

class _MovebleWidgetPageState extends State<MovebleWidgetPage> {
  bool _inBody = true;
  final counterKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: !_inBody ? CounterButton(key: counterKey) : null,
        actions: [
          Switch(
            value: _inBody,
            onChanged: (value) {
              setState(() {
                _inBody = value;
              });
            },
          ),
        ],
      ),
      body: _inBody ? CounterButton(key: counterKey) : null,
    );
  }
}
