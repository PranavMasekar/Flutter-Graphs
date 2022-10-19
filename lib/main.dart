import 'package:flutter/material.dart';
import 'package:flutter_graphs/views/bar_chart.dart';
import 'package:flutter_graphs/views/column_chart.dart';
import 'views/line_chart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Graphs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const LineChart(),
      // home: BarChart(),
      home: ColumnChart(),
    );
  }
}
