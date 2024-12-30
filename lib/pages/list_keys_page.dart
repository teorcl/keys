import 'package:flutter/material.dart';
import 'package:keys/widgets/counter_button.dart';

class ListKeysPage extends StatefulWidget {
  const ListKeysPage({super.key});

  @override
  State<ListKeysPage> createState() => _ListKeysPageState();
}

class _ListKeysPageState extends State<ListKeysPage> {
  bool _enabledEmail = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Keys'),
        actions: [
          Switch(
            value: _enabledEmail,
            onChanged: (value) {
              setState(() {
                _enabledEmail = value;
              });
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          if (_enabledEmail) Text('Text 1'),
          Text('Text 2'),
          if (_enabledEmail) ...[
            TextField(
              key: Key('email'),
              decoration: InputDecoration(
                label: Text('Email'),
              ),
            ),
          ],
          TextField(
            key: Key('password'),
            decoration: InputDecoration(
              label: Text('Password'),
            ),
          ),
          if (_enabledEmail) CounterButton(),
          CounterButton(
            key: Key('counter_2'),
          ),
        ],
      ),
    );
  }
}
