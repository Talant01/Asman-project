import 'package:flutter/material.dart';
import 'package:my_app/main.dart';
import 'package:my_app/data/data.dart';
import 'package:my_app/widgets/product.dart';
import '../widgets/category.dart';
import '../widgets/searchbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String searchString;
  @override
  void initState() {
    searchString = '';
    super.initState();
  }

  void setSearchString(String value) => setState(() {
        searchString = value;
      });

  @override
  Widget build(BuildContext context) {
    var listViewPadding =
        const EdgeInsets.symmetric(horizontal: 16, vertical: 24);
    List<Widget> searchResultTiles = [];
    if (searchString.isNotEmpty) {
      searchResultTiles = products
          .where(
              (p) => p.name.toLowerCase().contains(searchString.toLowerCase()))
          .map(
            (p) => ProductTile(product: p),
          )
          .toList();
    }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: SearchBar(
            onChanged: setSearchString,
          ),
          actions: const [
            CartAppBarAction(),
          ],
        ),
        body: searchString.isNotEmpty
            ? GridView.count(
                padding: listViewPadding,
                crossAxisCount: 2,
                mainAxisSpacing: 24,
                crossAxisSpacing: 24,
                childAspectRatio: .78,
                children: searchResultTiles,
              )
            : ListView(
                padding: listViewPadding,
                children: [
                  Text(
                    "Search by Category",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  const SizedBox(height: 16),
                  CategoryTile(
                    imageUrl: snacksImageUrl,
                    category: snacksCategory,
                    imageAlignment: Alignment.topCenter,
                  ),
                  const SizedBox(height: 16),
                  CategoryTile(
                    imageUrl: beverageImageUrl,
                    category: beveragesCategory,
                    imageAlignment: Alignment.topCenter,
                  ),
                  const SizedBox(height: 16),
                  CategoryTile(
                    imageUrl: personalCareImageUrl,
                    category: personalCareCategory,
                    imageAlignment: Alignment.topCenter,
                  ),
                  const SizedBox(height: 16),
                  CategoryTile(
                    imageUrl: personalCareImageUrl,
                    category: personalCareCategory,
                    imageAlignment: Alignment.topCenter,
                  ),
                  const SizedBox(height: 16),
                  CategoryTile(
                    imageUrl: personalCareImageUrl,
                    category: personalCareCategory,
                    imageAlignment: Alignment.topCenter,
                  ),
                  const SizedBox(height: 16),
                  CategoryTile(
                    imageUrl: personalCareImageUrl,
                    category: personalCareCategory,
                    imageAlignment: Alignment.topCenter,
                  ),
                ],
              ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.photo_camera),
        ),
      ),
    );
  }
}
