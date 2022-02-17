import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:assign/developer_charts.dart';
import 'package:assign/developer_series.dart';
import 'developer_series.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<DeveloperSeries> data = [
    DeveloperSeries(
        year: '2017',
        developers: 50000,
        barColor: charts.ColorUtil.fromDartColor(Colors.purple)),
    DeveloperSeries(
        year: '2018',
        developers: 60000,
        barColor: charts.ColorUtil.fromDartColor(Colors.purple)),
    DeveloperSeries(
        year: '2019',
        developers: 70000,
        barColor: charts.ColorUtil.fromDartColor(Colors.purple)),
    DeveloperSeries(
        year: '2020',
        developers: 80000,
        barColor: charts.ColorUtil.fromDartColor(Colors.purple)),
    DeveloperSeries(
        year: '2021',
        developers: 40000,
        barColor: charts.ColorUtil.fromDartColor(Colors.purple)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title:Text("Charts Demo")
      ),
      body: Center(
        child: DeveloperChart(data: data),
      ),
    );
  }
}

