import 'package:flutter/material.dart';

class Provideroperation extends ChangeNotifier{
  int count = 0;
  int get counts => count;
  increment(){
    count++;
    notifyListeners();
  }
}