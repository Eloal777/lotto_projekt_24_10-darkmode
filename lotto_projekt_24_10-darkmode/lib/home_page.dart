import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_projekt_24_10/main.dart';

//Die Dritte möglichkeit des Abrufens vom Provider
//Wir Ändern das Stateful Widget zu ConsumerStatefulWidget
// class MyWidget extends ConsumerStatefulWidget {
//   const MyWidget({super.key});

//   @override
//   ConsumerState<MyWidget> createState() => _MyWidgetState();
// }

//Und rufen das genau so auf wie wir das vorhin gemacht haben in Stateless
//In der Variable Final unten
// class _MyWidgetState extends ConsumerState<MyWidget> {
//Noch ein kleiner Beispiel Code wie man den Provider in der InitState Methode ausliest
//   @override
//   void initState() {
//     super.initState();
//     final name = ref.read(nameProvider);
//   }

//   @override
//   Widget build(BuildContext context) {
//     final name = ref.watch(nameProvider);

//     return Text(name);
//   }
// }

//Der Consumerwidget ersetzt den Statelesswidget welches uns die möglichkeit gibt
//Den State zu Lesen und zu verändern von verschiedenen Providern und diese abhören
//class MyHomePage extends ConsumerWidget { Die erste Methode um auszulesen!
class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  void onSubmit(WidgetRef ref, String value) {
    ref.read(userProvider.notifier).updateName(value);
  }

  @override
  //Build schreibt keinen fehler mehr da wir nach context WidgetRef ref hinzugefügt haben
  //In der Dokumentation wird Widget Ref als ein objekt bezeichnet der es einem erlaubt mit
  //Providern zu Interagieren, Ähnlich zu BuildContext der uns zu den vorgängern in Widgettree zugang gibt
  Widget build(BuildContext context, WidgetRef ref) {
    //Wenn wir Null haben dann zeigen wir folgenden Text
    final user = ref.watch(userProvider);
    final themeProvider = ref.read(refThemeProvider.notifier);
    //Das ist die erste Methode aus dem provider auszulesen wo wir das Consumerwidget verwendet haben
    //Um von unserem Provider auszulesen verwenden wir die Watch Methode die ist oft verwendbar und die Rekomendation ist ihn in der BuildMethode zu verwenden
    //Die WatchMethode sollte nicht in Buttons verwendet werden.
    //In Klammern steht dann der Name des Providers den wir vorhin in Main Dart definiert haben
    // final name = ref.watch(nameProvider);
//Die Methode read verwendet man in der regel nur einmal wie bei InitState oder bei anderen Lebenszyklen
//Oder bei Buttons wo wir auf den Knopf drücken und bekommen einen Wert aus dem provider
//Um einen Wert aus dem Provider auszulesen verwendet man die Methode Read
    // final nameRead = ref.read(nameProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
//Zweite möglichkeit oben haben wir eine Funktion bzw. Methode Definiert hier geben wir sie zurück
            onSubmitted: (value) => onSubmit(ref, value),
//dahinter schreiben wir Notifier um neue Methoden auszulesen zum beispiel Update
            // ref.read(nameProvider.notifier).update((state) => value);
          ),
//DIE ZWEITE MÖGLICHKEIT DEN PROVIDER AUSZULESEN
//WIR WRAPPEN DAS TEXTWIDGET MIT DEM CONSUMER WIDGET
//IM CONSUMER WIDGET IN DER FUNKTION DIE FINAL ERSTELLEN UND IHR DEN WERT DEN MAN AUSLESEN MÖCHTE MITGEBEN
//Wie dir schon verständlich sein dürfte mit dem Consumer wrappen wir nur ein nWidget nicht den Elternteil
//Proktisch um nur die Widgets neu aufzubauen die vom Provider abhängig sind
          Center(
            child: Text(user.name),
            // child: Consumer(
            // builder: (context, ref, child) {
//Hier drinnen erstellen wir eine Variable Final wieder mit dem ref.watch(nameProvider);
            // final name = ref.watch(nameProvider);
            // return Text(name);
          ),
          ElevatedButton(
            child: const Text('Test'),
            onPressed: () {
              log('Test');
              themeProvider.toggleTheme();
            },
          )
        ],
      ),
    );
  }
}
