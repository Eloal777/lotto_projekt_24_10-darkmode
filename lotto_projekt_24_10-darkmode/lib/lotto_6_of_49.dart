import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final lottoProvider = StateProvider<int>((ref) => 0);

class LottoSixFromFourtyNine {
  String nameLotto;
  String iconPathLotto;
  bool viewIsSelectedLotto;
  List<int> generatedNumbersLotto;
  List<int> pickedNumbersLotto;
  List<int> numbersLotto;
  List<int> superNumberLotto;
  Color lottoColor;

  LottoSixFromFourtyNine({
    required this.nameLotto,
    required this.iconPathLotto,
    required this.viewIsSelectedLotto,
    required this.generatedNumbersLotto,
    required this.pickedNumbersLotto,
    required this.numbersLotto,
    required this.superNumberLotto,
    required this.lottoColor,
  });

  static List<LottoSixFromFourtyNine> getLottoSixFromFourtyNine() {
    List<LottoSixFromFourtyNine> menuesLotto = [];

    menuesLotto.add(
      LottoSixFromFourtyNine(
        nameLotto: 'Lotto 6 aus 49',
        iconPathLotto: 'assets/icons/lotto.png',
        viewIsSelectedLotto: true,
        generatedNumbersLotto: [],
        pickedNumbersLotto: [],
        numbersLotto: [],
        superNumberLotto: [],
        lottoColor: const Color.fromARGB(255, 252, 247, 0),
      ),
    );
    return menuesLotto;
  }
}
