import 'package:flutter/material.dart';

class AppBarActionsExample extends StatefulWidget {
  @override
  _AppBarActionsExampleState createState() => _AppBarActionsExampleState();
}

class _AppBarActionsExampleState extends State<AppBarActionsExample> {
  int _numberOfPages = 3;
  int _currentPage = 0;
  PageController _pageController = PageController();
  List<FocusScopeNode> _focusScopeNodes = List.filled(3, FocusScopeNode());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar actions'),
        actions: <Widget>[
          FlatButton(
            child: Text('Prev'),
            onPressed: _currentPage != 0
                ? () {
                    _currentPage = _currentPage - 1;
                    _goToPage(_currentPage);
                  }
                : null,
          ),
          FlatButton(
            child: Text('Next'),
            onPressed: _currentPage != _numberOfPages - 1
                ? () {
                    _currentPage = _currentPage + 1;
                    _goToPage(_currentPage);
                  }
                : null,
          ),
        ],
      ),
      body: PageView.builder(
        itemCount: _numberOfPages,
        itemBuilder: (BuildContext context, int index) => _page(index),
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
      ),
    );
  }

  _goToPage(int page) async {
    setState(() {
    });
    await _pageController.animateToPage(
      page,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    _focusScopeNodes[page].requestFocus();
  }

  Widget _page(int index) {
    return FocusScope(
      node: _focusScopeNodes[index],
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              child: Text('Button'),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              child: Text('Button'),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
