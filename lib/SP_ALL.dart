import 'package:shared_preferences/shared_preferences.dart';

class MySP{

  /// setting SP data
  addToSF() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('stringValue', "abc"); // putting string
    prefs.setInt('intValue', 123);
    prefs.setDouble('doubleValue', 115.0);
    prefs.setBool('boolValue', true);
  }

  /// getting SP data
  getValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String
    String stringValue = prefs.getString('stringValue');
    print(stringValue);
    // Return bool
    bool boolValue = prefs.getBool('boolValue');
    //Return int
    int intValue = prefs.getInt('intValue');
    //Return double
    double doubleValue = prefs.getDouble('doubleValue');
    //  return stringValue;
  }

  /// check SP data
  checkSPData() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int intValue = prefs.getInt('intValue') ?? 0; // ternary operator
  }

  /// remove SP data
  removeValues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Remove String
    prefs.remove("stringValue");
    //Remove bool
    prefs.remove("boolValue");
    //Remove int
    prefs.remove("intValue");
    //Remove double
    prefs.remove("doubleValue");
  }
}