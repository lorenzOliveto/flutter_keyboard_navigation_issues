import 'package:flutter/material.dart';

class PopUntilExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pop Until'),
        actions: <Widget>[
          FlatButton(
            child: Text('Pop until'),
            onPressed: () => Navigator.of(context).popUntil((route) => route.isFirst),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
            child: Text('Push'),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => PopUntilExample(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
