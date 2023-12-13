import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//Immutable bedeutet unveränderbar
@immutable
class User {
  final String name;
  final int age;

  const User({
    required this.name,
    required this.age,
  });

  User copyWith({
    String? name,
    int? age,
  }) {
    return User(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'age': age,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'] ?? '',
      age: map['age']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() => 'User(name: $name, age: $age)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User && other.name == name && other.age == age;
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}

// Um die Userklasse State zu verfolgen erstellen wir diesen Riverpod Notifier
class UserNotifier extends StateNotifier<User> {
  UserNotifier() : super(const User(name: '', age: 0));

//Hier wird das String n das erneuerte Wert annehmen wenn der User was eingibt weil die Klasse User ist nicht Überschreibbar
  void updateName(String n) {
    state = state.copyWith(name: n);
  }
}
