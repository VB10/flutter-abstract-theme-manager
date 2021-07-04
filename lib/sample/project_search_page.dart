import 'package:flutter/material.dart';

import 'card/product_card.dart';

class SampleView extends StatefulWidget {
  const SampleView({Key? key}) : super(key: key);

  @override
  _SampleViewState createState() => _SampleViewState();
}

@immutable
class AppTextItems {
  final String searchResults = 'Search Results';
  final String brocoliText = 'Broccoli';
}

class _SampleViewState extends State<SampleView> {
  final AppTextItems items = AppTextItems();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.08),
        child: Column(
          children: [
            textFieldSearchCard(context),
            Expanded(child: buildGridViewBody()),
          ],
        ),
      ),
    );
  }

  GridView buildGridViewBody() {
    return GridView.builder(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.08),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 15,
          mainAxisSpacing: 11,
          crossAxisCount: 2,
          childAspectRatio: 0.81),
      itemCount: 4,
      itemBuilder: (context, index) {
        return ProductCard(title: items.brocoliText);
      },
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: buildTextSub(context),
    );
  }

  Card textFieldSearchCard(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.onSecondary,
      shape: StadiumBorder(),
      child: textFieldSearch(context),
    );
  }

  TextField textFieldSearch(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search_sharp,
              color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.5)),
          suffixIconConstraints: BoxConstraints(maxHeight: 30),
          suffixIcon: FloatingActionButton(
            onPressed: () {},
            mini: true,
            child: Icon(Icons.mic_sharp),
          )),
    );
  }

  Text buildTextSub(BuildContext context) {
    return Text(
      items.searchResults,
      style: Theme.of(context)
          .textTheme
          .headline6
          ?.copyWith(letterSpacing: -0.2, fontWeight: FontWeight.w400),
    );
  }
}
