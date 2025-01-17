import 'package:flutter/material.dart';

abstract class ThemeEvent {}

class ThemeLoadEvent extends ThemeEvent {}

class ThemeChangeEvent extends ThemeEvent {
  final ThemeMode themeMode;

  ThemeChangeEvent({required this.themeMode});
}
