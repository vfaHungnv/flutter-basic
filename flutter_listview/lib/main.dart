import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class RandomEnglishWords extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return new RandomEnglishWordsState();
    }
}

class RandomEnglishWordsState extends State<RandomEnglishWords> {
  final _words = <WordPair>[];
  final _checkedWords = new Set<WordPair>();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("List of English words"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), 
          onPressed: _pushToSaveWordsScreen)
        ],
      ),
      body: new ListView.builder(itemBuilder: (context, index) {
        if (index >= _words.length) {
          _words.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_words[index], index);
      }),
    );
  }

  _pushToSaveWordsScreen() {
    // print("You pressed to the right Icon");
    final pageRoute = new MaterialPageRoute(builder: (context) {
      final listTitle = _checkedWords.map((wordpair) {
        return new ListTile(
          title: new Text(
            wordpair.asUpperCase,
            style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        );
      });
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("Checked words"),
        ),
        body: new ListView(children: listTitle.toList(),),
      );
    });
    Navigator.of(context).push(pageRoute);
  }

  Widget _buildRow(WordPair wordPair, int index) {
    final textColor = index % 2 == 0 ? Colors.red : Colors.blue;
    final isChecked = _checkedWords.contains(wordPair);
    return new ListTile(
      leading: new Icon(
        isChecked ? Icons.check_box : Icons.check_box_outline_blank,
        color: textColor,
      ),
      title: new Text(
        wordPair.asPascalCase,
        style: new TextStyle(fontSize: 18.0, color: textColor),
      ),
      onTap: () {
        setState(() {
          if (isChecked) {
            _checkedWords.remove(wordPair);
          } else {
            _checkedWords.add(wordPair);
          }
        });
      },
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "This is my first Flutter App",
      home: new RandomEnglishWords(),
    );
  }
}