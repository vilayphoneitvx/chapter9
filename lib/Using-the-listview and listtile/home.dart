import 'package:flutter/material.dart';
import 'package:flutter_application_1/Using-the-listview%20and%20listtile/header.dart';
import 'package:flutter_application_1/Using-the-listview%20and%20listtile/row-with-card.dart';
import 'package:flutter_application_1/Using-the-listview%20and%20listtile/row.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return HeaderWidget(index: index);
            } else if (index >= 1 && index <= 3) {
              return RowWithCardWidget(index: index);
            } else {
              return RowWidget(index: index);
            }
          },
        ),
      ),
    );
  }
}
