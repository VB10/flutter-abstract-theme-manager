import 'package:extheme/sample/project_search_page.dart';
import 'package:flutter/material.dart';

class ProjectTabView extends StatelessWidget {
  ProjectTabView({Key? key}) : super(key: key);

  final List<MapEntry<Widget, IconData>> _pages = [
    MapEntry(SampleView(), Icons.search),
    MapEntry(Container(), Icons.search),
    MapEntry(Container(), Icons.search),
    MapEntry(Container(), Icons.search),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _pages.length,
        child: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: floatingActionButton(context),
          bottomNavigationBar: _bottomAppBar(),
          body: TabBarView(children: _pages.map((e) => e.key).toList()),
        ));
  }

  FloatingActionButton floatingActionButton(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {},
    );
  }

  BottomAppBar _bottomAppBar() {
    return BottomAppBar(
      child: TabBar(tabs: _pages.map((e) => Tab(icon: Icon(e.value))).toList()),
    );
  }
}
