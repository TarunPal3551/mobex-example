import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart' as mobx;



class MainPageController {
  List<String> categoryList = [
    "Accessibility",
    "Safety",
    "Medication Storage",
    "Laboratory",
  ];
  List<IconData> icons = [
    Icons.accessible,
    Icons.health_and_safety,
    Icons.medication,
    Icons.science_outlined
  ];
  final _selectedPosition = mobx.Observable(-1);

  int get selectedPosition => _selectedPosition.value;

  set selectionPosition(int value) => _selectedPosition.value = value;

  late mobx.Action changeSelectedPosition;

  _changePosition(int value) {
    _selectedPosition.value = value;
  }

  MainPageController() {
    changeSelectedPosition = mobx.Action(_changePosition);
  }
}
