// ignore_for_file: depend_on_referenced_packages

import 'package:hive/hive.dart';
part 'database.g.dart';

@HiveType(typeId: 1)
class StudentModel {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String age;
  @HiveField(2)
  final String phone;
  @HiveField(3)
  final String place;
  @HiveField(4)
  final String photo;

  StudentModel({
    required this.name,
    required this.age,
    required this.phone,
    required this.place,
    required this.photo,
  });
}