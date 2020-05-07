import 'package:flutter/material.dart';
import 'package:mobilive/person.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Person> personList = [
    Person("Ahmet", age: 13),
    Person("Hakan", age: 66),
    Person("Sevil", age: 40),
    Person("Zeynep", age: 9),
    Person("Hayati", age: 60),
    Person("Halit", age: 39),
    Person("Ali", age: 27),
    Person("Recep", age: 52),
    Person("Sema", age: 15)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MobiLive"),
      ),
      floatingActionButton: FloatingActionButton(
          child: IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
          onPressed: () {}),
      body: Container(
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(
              height: 5,
            );
          },
          itemCount: personList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(personList[index].name),
              subtitle: Text(personList[index].age.toString()),
              trailing: Icon(Icons.delete_outline),
            );
          },
        ),
      ),
    );
  }
}
