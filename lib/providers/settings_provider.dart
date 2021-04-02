import 'package:flutter/material.dart';

class SettingsProvider with ChangeNotifier{
  String _units;
  List<String> _waxLines;

  SettingsProvider(){
    _units = "Imperial";
    _waxLines = ['Swix','Toko'];
  }

  //Getters
  String get units => _units;
  List<String> get waxLines => _waxLines;

  //Setters
  void setUnits(String units){
    _units = units;
    notifyListeners();
  }

  void _setWaxLines(List<String> waxLines){
    _waxLines = waxLines;
    notifyListeners();
  }

  void addWaxLine(String waxLine){
    if(_waxLines.contains(waxLine) == false){
      _waxLines.add(waxLine);
      notifyListeners();
    }

    void removeWaxLine(String waxLine){
      if(_waxLines.contains(waxLines)== true){
        _waxLines.remove(waxLines);
        notifyListeners();
      }
    }
  }
}