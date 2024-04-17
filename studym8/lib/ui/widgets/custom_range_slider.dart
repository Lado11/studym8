import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studym8/index.dart';

class RangeSliderExample extends StatefulWidget {
  const RangeSliderExample({super.key});

  @override
  State<RangeSliderExample> createState() => _RangeSliderExampleState();
}

class _RangeSliderExampleState extends State<RangeSliderExample> {
  RangeValues currentRangeValues = const RangeValues(40, 80);

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
        values: currentRangeValues,
        max: 100,
        divisions: 5,
        activeColor: primary,
        inactiveColor:  whitegary,
        labels: RangeLabels(
          "${currentRangeValues.start.round()}",
          "ff${currentRangeValues.end.round()}",
        ),
        onChanged: (RangeValues values) {
          setState(() {
            currentRangeValues = values;
          });
        },
    );
  }
}
