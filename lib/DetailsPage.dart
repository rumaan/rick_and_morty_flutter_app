import 'package:flutter/material.dart';

class DetailsPageScreen extends StatelessWidget {
  final String _text;

  DetailsPageScreen(this._text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.network(
              'https://rickandmortyapi.com/api/character/avatar/1.jpeg',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                bottom: 8.0,
              ),
              child: Text('Text sent was $_text'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(8.0),
                  topLeft: Radius.circular(8.0),
                ),
              ),
              child: Text(
                'Go back',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
