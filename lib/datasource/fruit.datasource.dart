import 'package:gerenciamentodeestado/domain/fruit.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FruitDatasource {
  late SharedPreferences _preferences;

  initPreference() async{
    _preferences = await SharedPreferences.getInstance();
  }

  Future<List<Fruit>> loadFruits(){
    List<String>? fruitsString = 
    _preferences.getStringList("fruits");
    return fruitsString.map((fruit)=>Fruit.fromJson(fruit)).toList();


  }

}