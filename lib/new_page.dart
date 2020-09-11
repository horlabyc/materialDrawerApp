import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  final title;
  NewPage(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
