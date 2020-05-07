import 'package:flutter/material.dart';

class Person {
  // variables
  String name;
  int age;

  // constructor
  Person(name, {@required age}) {
    this.name = name;
    this.age = age;
  }
}
