import 'package:flutter/material.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';
import 'package:sample/widget/custom_datepicker_container/custom_datepicker_container.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter_neat_and_clean_calendar/neat_and_clean_calendar_event.dart';

class ChartData {
  int xAxisVal;
  int yAxisVal;

  ChartData({required this.xAxisVal, required this.yAxisVal});
}

class circularChartData {
  String xAxisVal;
  int yAxisVal;
  Color? color;

  circularChartData(
      {this.color, required this.xAxisVal, required this.yAxisVal});
}

class MeetingCalendar extends StatelessWidget {
  MeetingCalendar({Key? key}) : super(key: key);

  final List<ChartData> lineChartData = [
    ChartData(xAxisVal: 44, yAxisVal: 2),
    ChartData(xAxisVal: 45, yAxisVal: 5),
    ChartData(xAxisVal: 46, yAxisVal: 4),
    ChartData(xAxisVal: 47, yAxisVal: 3),
    ChartData(xAxisVal: 49, yAxisVal: 1),
    ChartData(xAxisVal: 51, yAxisVal: 1),
    ChartData(xAxisVal: 52, yAxisVal: 5),
    ChartData(xAxisVal: 5, yAxisVal: 2),
    ChartData(xAxisVal: 6, yAxisVal: 1),
    ChartData(xAxisVal: 9, yAxisVal: 2),
    ChartData(xAxisVal: 12, yAxisVal: 2),
  ];
  final List<circularChartData> circularData = [
    circularChartData(
        xAxisVal: 'Event Closed', yAxisVal: 50, color: Colors.green),
    circularChartData(
        xAxisVal: 'Event Completed', yAxisVal: 30, color: Colors.amber),
    circularChartData(xAxisVal: 'Cancelled', yAxisVal: 20, color: Colors.red),
  ];

  Widget customContainer() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: DropdownButton(
          hint: const Text('Select a stakeholder'),
          items: [],
          onChanged: (value) {},
        ),
      ),
    );
  }

  Widget customLineChart(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SfCartesianChart(
        backgroundColor: Colors.white,
        series: <ChartSeries>[
          LineSeries<ChartData, int>(
            dataSource: lineChartData,
            xValueMapper: (ChartData data, _) => data.xAxisVal,
            yValueMapper: (ChartData data, _) => data.yAxisVal,
            sortFieldValueMapper: (ChartData data, _) => data.xAxisVal,
            sortingOrder: SortingOrder.ascending,
            markerSettings: const MarkerSettings(
                isVisible: true, color: Colors.lightBlue),
          ),
        ],
        primaryXAxis: NumericAxis(
            edgeLabelPlacement: EdgeLabelPlacement.shift,
            minimum: 5,
            maximum: 52,
            desiredIntervals: 5),
      ),
    );
  }

  Widget customDonutChart(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: SfCircularChart(
        series: <CircularSeries>[
          DoughnutSeries<circularChartData, String>(
            dataSource: circularData,
            xValueMapper: (circularChartData data, _) => data.xAxisVal,
            yValueMapper: (circularChartData data, _) => data.yAxisVal,
            pointColorMapper: (circularChartData data, _) => data.color,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.repeat)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomDatePickerContainer(
                Width: MediaQuery.of(context).size.width * 0.40,
                hint: 'Start Date',
              ),
              CustomDatePickerContainer(
                Width: MediaQuery.of(context).size.width * 0.40,
                hint: 'End Date',
              ),
            ],
          ),
          customContainer(),
          customLineChart(context),
          customDonutChart(context),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Container(

              color: Colors.white,
              child: CalendarDatePicker(
                initialDate: DateTime.now(),
                firstDate: DateTime(2015),
                lastDate: DateTime(2024),
                onDateChanged: (DateTime value) {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
