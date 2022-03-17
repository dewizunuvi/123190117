import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String username;

  const DetailPage({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(username),
      ),
      body : Container(
        child: Center(
          child: Row(
            children: [
              Expanded(child: child)

            ],
          ),
        ),
      )
    );
  }
}

