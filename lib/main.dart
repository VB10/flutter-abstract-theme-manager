import 'package:flutter/material.dart';

import 'model/app_theme.dart';
import 'sample/project_tab_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '@VB10',
      theme: ThemeManager.craeteTheme(AppThemeLight()),
      home: ProjectTabView(),
    );
  }
}
