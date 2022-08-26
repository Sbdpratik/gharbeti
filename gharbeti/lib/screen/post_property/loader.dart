import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Loader extends StatefulWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  State<Loader> createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Post Property")),
      body: Center(child: CircularProgressIndicator.adaptive()),
    );
  }
}
