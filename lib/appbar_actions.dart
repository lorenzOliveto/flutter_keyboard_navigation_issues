import 'package:flutter/material.dart';

class AppBarActionsExample extends StatefulWidget {
  @override
  _AppBarActionsExampleState createState() => _AppBarActionsExampleState();
}

class _AppBarActionsExampleState extends State<AppBarActionsExample> {
  bool _actionsEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar actions'),
        actions: <Widget>[
          FlatButton(
            child: Text('Action1'),
            onPressed: _actionsEnabled ? () {} : null,
          ),
          FlatButton(
            child: Text('Action2'),
            onPressed: _actionsEnabled ? () {} : null,
          ),
        ],
      ),
      body: Center(
        child: PageView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) => FocusScope(
            child: MaterialButton(
              child: Text('Button'),
              onPressed: () {
                setState(() {
                  _actionsEnabled = !_actionsEnabled;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
