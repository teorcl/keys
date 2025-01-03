import 'package:flutter/material.dart';

/// --------------------------------------------------------------------------
///                                       LOCAL KEYS (LocalKey)
///                             ValueKey      ObjectKey     UniqueKey
///* --------------------------------------------------------------------------
///* differentiate widgets  |       ✅             ✅            ✅
///* of the same type       |
///* --------------------------------------------------------------------------
///* compatible with        |      ✅             👀            ❌
///* widget testing         |
///* --------------------------------------------------------------------------
///* preserves the          |      ✅             ✅            ❌
///* widget state           |
///* --------------------------------------------------------------------------
///*
///*
///*
///*                  GLOBAL KEYS GlobalKey  ( GlobalObjectKey, LabeledGlobalKey)
///* ---------------------------------------------------------------------------
///* Preserves the widget state, NOT friendly with testing, allows to access to
///* the widget context and the widget state (StatefulWidget), expensive,
///* could be used as a global variable (you should be careful)
///*
///

class KeyPage extends StatefulWidget {
  const KeyPage({super.key});

  @override
  State<KeyPage> createState() => _KeyPageState();
}

class _KeyPageState extends State<KeyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Key Page'),
      ),
    );
  }
}
