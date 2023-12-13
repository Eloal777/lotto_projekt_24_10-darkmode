import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final seventySevenProvider = StateProvider<int>((ref) => 0);

class SeventySeven {
  String nameSeventySeven;
  String iconPathSeventySeven;
  bool viewIsSelectedSeventySeven;
  List<int> generatedNumbersSeventySeven;
  List<int> pickedNumbersSeventySeven;
  List<int> numbersSeventySeven;
  Color seventySevenColor;

  SeventySeven({
    required this.nameSeventySeven,
    required this.iconPathSeventySeven,
    required this.viewIsSelectedSeventySeven,
    required this.generatedNumbersSeventySeven,
    required this.pickedNumbersSeventySeven,
    required this.numbersSeventySeven,
    required this.seventySevenColor,
  });

  static List<SeventySeven> getSuperSix() {
    List<SeventySeven> menuesSuperSix = [];

    menuesSuperSix.add(
      SeventySeven(
        nameSeventySeven: 'Spiel 77',
        iconPathSeventySeven: 'assets/icons/spiel77.png',
        viewIsSelectedSeventySeven: true,
        generatedNumbersSeventySeven: [],
        pickedNumbersSeventySeven: [],
        numbersSeventySeven: [],
        seventySevenColor: const Color.fromRGBO(0, 150, 208, 1),
      ),
    );
    return menuesSuperSix;
  }
}
