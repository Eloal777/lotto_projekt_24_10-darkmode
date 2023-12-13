import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final euroJackpotProvider = StateProvider<int>((ref) => 0);

class EuroJackpot {
  String nameEurojackpot;
  String iconPathEurojackpot;
  bool viewIsSelectedEurojackpot;
  List<int> generatedNumbersEurojackpot;
  List<int> pickedNumbersEurojackpot;
  List<int> numbersEurojackpot;
  List<int> superNumbersEurojackpot;
  Color euroJackpotColor;

  EuroJackpot({
    required this.nameEurojackpot,
    required this.iconPathEurojackpot,
    required this.viewIsSelectedEurojackpot,
    required this.generatedNumbersEurojackpot,
    required this.pickedNumbersEurojackpot,
    required this.numbersEurojackpot,
    required this.superNumbersEurojackpot,
    required this.euroJackpotColor,
  });

  static List<EuroJackpot> getEuroJackpot() {
    List<EuroJackpot> menues = [];

    menues.add(
      EuroJackpot(
        nameEurojackpot: 'Euro \n Jackpot',
        iconPathEurojackpot: 'assets/icons/eurojackpot.png',
        viewIsSelectedEurojackpot: true,
        generatedNumbersEurojackpot: [],
        pickedNumbersEurojackpot: [],
        numbersEurojackpot: [],
        superNumbersEurojackpot: [],
        euroJackpotColor: const Color.fromARGB(255, 199, 150, 3),
      ),
    );
    return menues;
  }
}
