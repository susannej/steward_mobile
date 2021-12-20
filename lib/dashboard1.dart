import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:steward_mobile/drawer.dart';
import 'package:fl_chart/fl_chart.dart';

class Dashboard1 extends StatelessWidget {
  final List<FlSpot> dummyData1 = List.generate(12, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  final List<FlSpot> dummyData2 = List.generate(12, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  final List<FlSpot> dummyData3 = List.generate(12, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  final List<FlSpot> dummyData11 = List.generate(12, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  final List<FlSpot> dummyData12 = List.generate(12, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  final List<FlSpot> dummyData13 = List.generate(12, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  final List<FlSpot> dummyData21 = List.generate(12, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  final List<FlSpot> dummyData22 = List.generate(12, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  final List<FlSpot> dummyData23 = List.generate(12, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('Dashboard1'),
          //leading: MenuWidget(),
        ),
        drawer: StewardDrawer(context),
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.only(top: 50),
            children: <Widget>[
              //
              // ---------------------------------------------
              //
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Ausgangsrechnungen',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  //constraints: const BoxConstraints.expand(),
                  constraints: BoxConstraints(minWidth: 200, maxWidth: 400, minHeight: 200, maxHeight: 400),
                  padding: EdgeInsets.all(40),
                  decoration: BoxDecoration(color: Colors.indigo, borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  //width: double.infinity,
                  child: LineChart(
                    LineChartData(
                      borderData: FlBorderData(show: false),
                      lineBarsData: [
                        LineChartBarData(
                          spots: dummyData1,
                          isCurved: true,
                          barWidth: 3,
                          colors: [
                            Colors.red,
                          ],
                        ),
                        LineChartBarData(
                          spots: dummyData2,
                          isCurved: true,
                          barWidth: 3,
                          colors: [
                            Colors.orange,
                          ],
                        ),
                        LineChartBarData(
                          spots: dummyData3,
                          isCurved: true,
                          barWidth: 3,
                          colors: [
                            Colors.blue,
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              //
              // ---------------------------------------------
              //
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Verträge',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  //constraints: const BoxConstraints.expand(),
                  constraints: BoxConstraints(minWidth: 200, maxWidth: 400, minHeight: 200, maxHeight: 400),
                  padding: EdgeInsets.all(40),
                  decoration: BoxDecoration(color: Colors.orangeAccent, borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  //width: double.infinity,
                  child: LineChart(
                    LineChartData(
                      borderData: FlBorderData(show: false),
                      lineBarsData: [
                        LineChartBarData(
                          spots: dummyData11,
                          isCurved: true,
                          barWidth: 3,
                          colors: [
                            Colors.red,
                          ],
                        ),
                        LineChartBarData(
                          spots: dummyData12,
                          isCurved: true,
                          barWidth: 3,
                          colors: [
                            Colors.orange,
                          ],
                        ),
                        LineChartBarData(
                          spots: dummyData13,
                          isCurved: true,
                          barWidth: 3,
                          colors: [
                            Colors.blue,
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              //
              // ---------------------------------------------
              //
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Eingangsrechnungen',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  //constraints: const BoxConstraints.expand(),
                  constraints: BoxConstraints(minWidth: 200, maxWidth: 400, minHeight: 200, maxHeight: 400),
                  padding: EdgeInsets.all(40),
                  decoration: BoxDecoration(color: Colors.lightGreenAccent, borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  //width: double.infinity,
                  child: LineChart(
                    LineChartData(
                      borderData: FlBorderData(show: false),
                      lineBarsData: [
                        LineChartBarData(
                          spots: dummyData21,
                          isCurved: true,
                          barWidth: 3,
                          colors: [
                            Colors.red,
                          ],
                        ),
                        LineChartBarData(
                          spots: dummyData22,
                          isCurved: true,
                          barWidth: 3,
                          colors: [
                            Colors.orange,
                          ],
                        ),
                        LineChartBarData(
                          spots: dummyData23,
                          isCurved: true,
                          barWidth: 3,
                          colors: [
                            Colors.blue,
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
