import 'package:flutter/material.dart';

class CounterViewModel with ChangeNotifier {

  int value = 0;

  /// A chaque fois qu'on va appeler cette fonction
  /// Met à jour la valeur dans notre ViewModel (Observable)
  /// Notifier les changement
  void incrementValue(){
    value++;
    // notifier aux observers/listeners les changements
    notifyListeners();
  }

}