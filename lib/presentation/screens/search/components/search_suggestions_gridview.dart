import 'package:flutter/material.dart';

class SearchSuggestionsGridView extends StatelessWidget {
  const SearchSuggestionsGridView({Key? key}) : super(key: key);

  final List<String> suggestions = const [
    'Sushi',
    'Sandwich',
    'Soup',
    'Seafood',
    'Fried rice',
    'Banana',
  ];

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 3,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 2.5,
      children: [
        for (var i = 0; i < suggestions.length; i++)
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(color: Colors.grey[50], borderRadius: BorderRadius.circular(50)),
            child: Text(suggestions[i], style: _themeData.textTheme.caption),
          ),
      ],
    );
  }
}
