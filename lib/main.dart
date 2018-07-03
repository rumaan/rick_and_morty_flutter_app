import 'package:flutter/material.dart';
import 'package:rick_and_morty/models.dart';

import 'DetailsPage.dart';

void main() {
  runApp(new GridViewApp());
}

class CharacterListTile extends StatelessWidget {
  final int _index;

  CharacterListTile(this._index);

  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new InkWell(
        onTap: () {},
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              CircleAvatar(
                radius: 48.0,
                backgroundColor: Colors.red,
              ),
              Text(
                characterList[_index].name,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Text(
                characterList[_index].planet,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CharacterListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new OrientationBuilder(
      builder: (context, orientation) {
        return GridView.count(
          crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
          children: List.generate(characterList.length, (index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40.0),
                  bottomLeft: Radius.circular(40.0),
                ),
              ),
              child: CharacterListTile(index),
            );
          }),
        );
      },
    );
  }
}

class GridViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rick and Morty App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rick and Morty App'),
        ),
        body: Container(
          child: CharacterListWidget(),
        ),
        bottomNavigationBar: BottomNavigationWidget(),
      ),
    );
  }
}

class BottomNavigationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        switch (index) {
          case 1:
            Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (buildContext) =>
                          DetailsPageScreen('Test Data Here')),
                );
            break;
          case 0:
            Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Hello!'),
                  ),
                );
            break;
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          title: Text("Characters"),
          backgroundColor: Colors.lightBlue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_on),
          title: Text("Location"),
          backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_movies),
          title: Text("Episodes"),
          backgroundColor: Colors.deepPurple,
        ),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Rick and Morty App",
      home: Scaffold(
        body: Container(
          color: Colors.lightGreen,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MyWidget(),
              MyWidget(),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text(
            'Rick and Morty App',
            textDirection: TextDirection.ltr,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) {},
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              title: Text("Characters"),
              backgroundColor: Colors.lightBlue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              title: Text("Location"),
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_movies),
              title: Text("Episodes"),
              backgroundColor: Colors.deepPurple,
            ),
          ],
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.0),
      child: Container(
        color: Colors.yellow,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Hello World',
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
            Text(
              'Hello World 2 ',
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
