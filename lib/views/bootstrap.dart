import 'package:flutter/material.dart';

class Bootstrap extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BootstrapState();
  }
}

class _BootstrapState extends State<Bootstrap> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}