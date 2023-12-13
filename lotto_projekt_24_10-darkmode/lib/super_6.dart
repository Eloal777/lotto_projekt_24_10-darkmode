import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final superSixProvider = StateProvider<int>((ref) => 0);

class SuperSix {
  String nameSuperSix;
  String iconPathSuperSix;
  bool viewIsSelectedSuperSix;
  List<int> generatedNumbersSuperSix;
  List<int> pickedNumbersSuperSix;
  List<int> numbersSuperSix;
  Color superSixColor;

  SuperSix({
    required this.nameSuperSix,
    required this.iconPathSuperSix,
    required this.viewIsSelectedSuperSix,
    required this.generatedNumbersSuperSix,
    required this.pickedNumbersSuperSix,
    required this.numbersSuperSix,
    required this.superSixColor,
  });

  static List<SuperSix> getSuperSix() {
    List<SuperSix> menuesSuperSix = [];

    menuesSuperSix.add(
      SuperSix(
        nameSuperSix: 'Super 6',
        iconPathSuperSix: 'assets/icons/super6.png',
        viewIsSelectedSuperSix: true,
        generatedNumbersSuperSix: [],
        pickedNumbersSuperSix: [],
        numbersSuperSix: [],
        superSixColor: const Color.fromRGBO(255, 149, 207, 1),
      ),
    );
    return menuesSuperSix;
  }
}
