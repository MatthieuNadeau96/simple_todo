import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xffA6C2A7),
        accentColor: Color(0xffF79D73),
        canvasColor: Color(0xffF7F6F1),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> _todoItems = [];

  void addTodoItem() {
    setState(() {
      int index = _todoItems.length;
      _todoItems.add('Index: ' + index.toString());
    });
    print(_todoItems);
  }

  Widget _buildTodoList() {
    return new ListView.builder(
      itemBuilder: (context, index) {
        if (index < _todoItems.length) {
          return _buildTodoItem(_todoItems[index]);
        }
      },
    );
  }

  Widget _buildTodoItem(String todoText) {
    return new ListTile(title: new Text(todoText));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildTodoList(),
      floatingActionButton: FloatingActionButton(
        onPressed: addTodoItem,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
