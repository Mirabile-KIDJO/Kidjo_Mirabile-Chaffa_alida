import 'package:flutter/material.dart';

class Person {
  String? name;
  String? surname;
  String? biographie;
  DateTimeRange? date_naiss;
  String? parti_politic;
  String? photo;
  String? image;
  Person({this.name, this.surname, this.biographie, this.parti_politic,this.photo,this.date_naiss,this.image});

  @override
  String toString() {
    return 'Person{name: $name, surname: $surname, biogaphie: $biographie,birthday:$parti_politic,photo:$image,dat_naiss:$date_naiss}';
  }
}